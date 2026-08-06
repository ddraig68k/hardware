library IEEE;
use IEEE.std_logic_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

-- Address decode and DTACK / VPA generation.
--
-- Structural changes made for 20 MHz CPU operation:
--
--  * Everything is clocked from clk_i (40 MHz global net) instead of the
--    divided 20 MHz product-term clock.  The wait counter now ticks every
--    25 ns rather than 50 ns, so DTACK can be placed with twice the
--    resolution -- which is what a 25 ns bus state needs.
--
--  * The wait counter's clear is synchronous, driven by a synchronised AS.
--    The old asynchronous clear from the raw as_ip pin violated reset
--    recovery time whenever AS fell near a clock edge, and because the
--    clears were product-term based and spread across a function block the
--    eight counter bits could release on different cycles, leaving the
--    counter at a garbage value and asserting DTACK far too early.
--
--  * dtack_o and vpa_o are registered outputs.  They used to be wide
--    combinational functions -- the fitter mapped dtack_op to 25 product
--    terms (the pterm limit) across two levels of foldback logic, so the
--    counter's carry skew produced transient glitches on DTACK during
--    rollover.  A glitch caught on a CPU falling edge terminates the bus
--    cycle early and latches garbage.
--
--  * The select decode feeding DTACK is registered one stage ahead of the
--    DTACK register so that every path is a single level of logic into a
--    flip-flop and comfortably meets the 25 ns clock period.
--
-- The chip selects themselves remain combinational -- they have to track AS
-- with minimum delay -- so their speed depends on the fitter's power mode.

entity AddressDecode is
    Port (
        a_i             : in  std_logic_vector(23 downto 8);
        clk_i           : in  std_logic;    -- 40 MHz global clock
        reset_i         : in  std_logic;    -- active low, asynchronously asserted / synchronously released
        as_i            : in  std_logic;    -- raw AS, for the combinational chip selects
        as_sync_i       : in  std_logic;    -- AS synchronised to clk_i, active low
        fc0_i           : in  std_logic;
        fc1_i           : in  std_logic;
        fc2_i           : in  std_logic;
        bootrom_i       : in  std_logic;
        rw_i            : in  std_logic;
        uds_i           : in  std_logic;
        dtack_o         : out std_logic;    -- registered
        cs_rom_o        : out std_logic;
        cs_sram_o       : out std_logic;
        dram_sel_o      : out std_logic;
        cs_duart_o      : out std_logic;
        cs_pit_o        : out std_logic;
        cs_kbd_o        : out std_logic;
        cs_rtc_o        : out std_logic;
        cs_ide_o        : out std_logic;
        cs_data1_o      : out std_logic;
        cs_data2_o      : out std_logic;
        cs_data3_o      : out std_logic;
        cs_data4_o      : out std_logic;
        cs_reg1_o       : out std_logic;
        cs_reg2_o       : out std_logic;
        cs_reg3_o       : out std_logic;
        cs_reg4_o       : out std_logic;
        ide_wr_o        : out std_logic;
        ide_rd_o        : out std_logic;
        vpa_o           : out std_logic     -- registered
    );
end AddressDecode;

architecture Behavioral of AddressDecode is

    ---------------------------------------------------------------------------
    -- Wait-state tuning.
    --
    -- The counter runs at 40 MHz, so one count is 25 ns -- exactly one bus
    -- state at a 20 MHz CPU.
    --
    -- Latency from AS falling to DTACK appearing at the pin is:
    --      2 clk_i edges  synchronising AS
    --    + C_WAIT_x + 1   counter / flag / output register stages
    --    + tCO
    -- so with C_WAIT_FAST = 1 that is roughly 110-135 ns after AS.
    --
    -- At a 20 MHz CPU the 68000 samples DTACK 75 ns after AS and every 50 ns
    -- thereafter, needing ~20 ns of setup.  110-135 ns is caught cleanly at
    -- the 175 ns sample point with 45-70 ns of margin, giving a six-state
    -- cycle plus one wait-state pair.
    --
    -- Setting C_WAIT_FAST to 0 removes that wait-state pair (DTACK at
    -- 85-110 ns, caught at the 125 ns sample point, ~20-45 ns of margin).
    -- Worth doing once 20 MHz is proven stable, but bring the board up at 1.
    --
    -- At a 10 MHz CPU these same values give a zero-wait-state cycle, so one
    -- bitstream is correct at both speeds.
    ---------------------------------------------------------------------------
    constant C_WAIT_FAST : natural := 1;    -- ROM / SRAM / IDE
    constant C_WAIT_SLOW : natural := 16;   -- PIT / KBD / RTC   (~400 ns)
    constant C_WAIT_EXT  : natural := 80;   -- expansion fallback (~2 us)
    constant C_WAIT_VPA  : natural := 1;    -- autovector acknowledge

    -- Combinational decodes
    signal s_rom        : std_logic;
    signal s_sram       : std_logic;
    signal s_dram       : std_logic;
    signal s_ide        : std_logic;
    signal s_duart      : std_logic;
    signal s_pit        : std_logic;
    signal s_kbd        : std_logic;
    signal s_rtc        : std_logic;
    signal s_fc         : std_logic;
    signal s_addr_sel   : std_logic;

    signal s_reg1       : std_logic;
    signal s_reg2       : std_logic;
    signal s_reg3       : std_logic;
    signal s_reg4       : std_logic;

    signal s_data1      : std_logic;
    signal s_data2      : std_logic;
    signal s_data3      : std_logic;
    signal s_data4      : std_logic;

    -- Registered select groups.  Decoded from address, FC and (for the two
    -- upper-byte peripherals) UDS.  AS is applied later via as_sync_i.
    --
    -- These do sample CPU signals that are asynchronous to clk_i, but they are
    -- registered, so the output cannot glitch -- the worst case is one wrong
    -- 25 ns sample while a signal is in flight.  That is harmless because the
    -- acknowledge below additionally requires as_sync_i low and a threshold
    -- flag, which is at least three clk_i edges after AS falls, by which point
    -- the address has been stable for well over 100 ns.
    signal s_sel_fast_r : std_logic;        -- ROM / SRAM / IDE
    signal s_sel_slow_r : std_logic;        -- PIT / KBD / RTC
    signal s_sel_ext_r  : std_logic;        -- expansion registers 1-4
    signal s_sel_iack_r : std_logic;        -- interrupt acknowledge (FC = 111)

    -- Wait counter and its registered threshold flags
    signal s_wait       : unsigned(7 downto 0) := (others => '0');
    signal s_t_fast     : std_logic;
    signal s_t_slow     : std_logic;
    signal s_t_ext      : std_logic;
    signal s_t_vpa      : std_logic;

begin

    ---------------------------------------------------------------------------
    -- Combinational address decode (unchanged logic, still AS qualified)
    ---------------------------------------------------------------------------
    s_fc       <= fc0_i and fc1_i and fc2_i;
    s_addr_sel <= '1' when s_fc = '0' and as_i = '0' else '0';

    s_rom   <= '0' WHEN s_addr_sel = '1' AND (bootrom_i = '0' OR std_match(a_i, "11111-----------")) ELSE '1';   -- $F80000 - $FFFFFF
    s_sram  <= '0' WHEN s_addr_sel = '1' AND bootrom_i = '1' AND std_match(a_i, "0000------------") ELSE '1';    -- $000000 - $0FFFFF
    s_duart <= '0' WHEN s_addr_sel = '1' AND std_match(a_i, "1111011111110000") AND uds_i = '0' ELSE '1';        -- $F7F000 - $F7F0FF
    s_pit   <= '0' WHEN s_addr_sel = '1' AND std_match(a_i, "1111011111110001") AND uds_i = '0' ELSE '1';        -- $F7F100 - $F7F1FF
    s_kbd   <= '0' WHEN s_addr_sel = '1' AND std_match(a_i, "1111011111110010") AND uds_i = '0' ELSE '1';        -- $F7F200 - $F7F2FF
    s_ide   <= '0' WHEN s_addr_sel = '1' AND std_match(a_i, "1111011111110011") ELSE '1';                        -- $F7F300 - $F7F3FF
    s_rtc   <= '0' WHEN s_addr_sel = '1' AND std_match(a_i, "1111011111110100") ELSE '1';                        -- $F7F400 - $F7F4FF
    s_reg1  <= '0' WHEN s_addr_sel = '1' AND std_match(a_i, "1111011111110101") ELSE '1';                        -- $F7F500 - $F7F5FF
    s_reg2  <= '0' WHEN s_addr_sel = '1' AND std_match(a_i, "1111011111110110") ELSE '1';                        -- $F7F600 - $F7F6FF
    s_reg3  <= '0' WHEN s_addr_sel = '1' AND std_match(a_i, "1111011111110111") ELSE '1';                        -- $F7F700 - $F7F7FF
    s_reg4  <= '0' WHEN s_addr_sel = '1' AND std_match(a_i, "1111011111111000") ELSE '1';                        -- $F7F800 - $F7F8FF

    s_dram  <= '1' WHEN s_addr_sel = '1' AND unsigned(a_i) >= x"1000" AND unsigned(a_i) < x"9000" ELSE '0';      -- $100000 - $8FFFFF (8 MB)
    s_data1 <= '0' WHEN s_addr_sel = '1' AND unsigned(a_i) >= x"A000" AND unsigned(a_i) < x"B000" ELSE '1';      -- $A00000 - $AFFFFF (1 MB)
    s_data2 <= '0' WHEN s_addr_sel = '1' AND unsigned(a_i) >= x"B000" AND unsigned(a_i) < x"C000" ELSE '1';      -- $B00000 - $BFFFFF (1 MB)
    s_data3 <= '0' WHEN s_addr_sel = '1' AND unsigned(a_i) >= x"C000" AND unsigned(a_i) < x"D000" ELSE '1';      -- $C00000 - $CFFFFF (1 MB)
    s_data4 <= '0' WHEN s_addr_sel = '1' AND unsigned(a_i) >= x"D000" AND unsigned(a_i) < x"E000" ELSE '1';      -- $D00000 - $DFFFFF (1 MB)

    cs_rom_o   <= s_rom;
    cs_sram_o  <= s_sram;
    cs_ide_o   <= s_ide;
    cs_duart_o <= s_duart;
    cs_pit_o   <= s_pit;
    cs_kbd_o   <= s_kbd;
    cs_rtc_o   <= s_rtc;
    dram_sel_o <= s_dram;

    cs_reg1_o  <= s_reg1;
    cs_reg2_o  <= s_reg2;
    cs_reg3_o  <= s_reg3;
    cs_reg4_o  <= s_reg4;

    cs_data1_o <= s_data1;
    cs_data2_o <= s_data2;
    cs_data3_o <= s_data3;
    cs_data4_o <= s_data4;

    ide_wr_o   <= '0' WHEN s_ide = '0' AND rw_i = '0' ELSE '1';
    ide_rd_o   <= '0' WHEN s_ide = '0' AND rw_i = '1' ELSE '1';

    ---------------------------------------------------------------------------
    -- Registered select groups.  One level of logic into a flip-flop.
    ---------------------------------------------------------------------------
    sel_reg : process(clk_i, reset_i)
    begin
        if reset_i = '0' then
            s_sel_fast_r <= '0';
            s_sel_slow_r <= '0';
            s_sel_ext_r  <= '0';
            s_sel_iack_r <= '0';
        elsif rising_edge(clk_i) then
            if s_fc = '0' and (bootrom_i = '0' or std_match(a_i, "11111-----------")) then
                s_sel_fast_r <= '1';                                        -- ROM
            elsif s_fc = '0' and bootrom_i = '1' and std_match(a_i, "0000------------") then
                s_sel_fast_r <= '1';                                        -- SRAM
            elsif s_fc = '0' and std_match(a_i, "1111011111110011") then
                s_sel_fast_r <= '1';                                        -- IDE
            else
                s_sel_fast_r <= '0';
            end if;

            -- PIT and KBD are upper-byte devices and their chip selects are
            -- UDS qualified, so the acknowledge must be too or an LDS-only
            -- access would be acknowledged without any device responding.
            -- The RTC select is not UDS qualified, matching cs_rtc_o above.
            if s_fc = '0' and ((uds_i = '0' and std_match(a_i, "1111011111110001")) or    -- PIT
                               (uds_i = '0' and std_match(a_i, "1111011111110010")) or    -- KBD
                               std_match(a_i, "1111011111110100")) then                   -- RTC
                s_sel_slow_r <= '1';
            else
                s_sel_slow_r <= '0';
            end if;

            if s_fc = '0' and (std_match(a_i, "1111011111110101") or
                               std_match(a_i, "1111011111110110") or
                               std_match(a_i, "1111011111110111") or
                               std_match(a_i, "1111011111111000")) then
                s_sel_ext_r <= '1';
            else
                s_sel_ext_r <= '0';
            end if;

            s_sel_iack_r <= s_fc;
        end if;
    end process;

    ---------------------------------------------------------------------------
    -- Wait counter.  Synchronous clear from the synchronised AS, and it stops
    -- rather than wrapping so it cannot re-trigger a threshold part way
    -- through a long cycle.
    --
    -- The stop condition is the top bit alone, not a compare against 0xFF.
    -- That matters: an eight-input compare lands in every counter bit's D
    -- equation, needs the product-term allocator, and in low power mode it
    -- pushed the counter to 24.5 ns against a 25 ns clock.  Freezing at 0x80
    -- costs one bit of range -- 128 counts, 3.2 us, comfortably past the 2 us
    -- expansion timeout -- and buys back the margin.
    ---------------------------------------------------------------------------
    wait_counter : process(clk_i, reset_i)
    begin
        if reset_i = '0' then
            s_wait <= (others => '0');
        elsif rising_edge(clk_i) then
            if as_sync_i = '1' then
                s_wait <= (others => '0');
            elsif s_wait(s_wait'high) = '0' then
                s_wait <= s_wait + 1;
            end if;
        end if;
    end process;

    ---------------------------------------------------------------------------
    -- Registered threshold flags.  Keeping the magnitude compares in their own
    -- register stage is what stops the DTACK output being a wide multi-level
    -- function of the counter.
    ---------------------------------------------------------------------------
    thresholds : process(clk_i, reset_i)
    begin
        if reset_i = '0' then
            s_t_fast <= '0';
            s_t_slow <= '0';
            s_t_ext  <= '0';
            s_t_vpa  <= '0';
        elsif rising_edge(clk_i) then
            if s_wait >= to_unsigned(C_WAIT_FAST, s_wait'length) then s_t_fast <= '1'; else s_t_fast <= '0'; end if;
            if s_wait >= to_unsigned(C_WAIT_SLOW, s_wait'length) then s_t_slow <= '1'; else s_t_slow <= '0'; end if;
            if s_wait >= to_unsigned(C_WAIT_EXT,  s_wait'length) then s_t_ext  <= '1'; else s_t_ext  <= '0'; end if;
            if s_wait >= to_unsigned(C_WAIT_VPA,  s_wait'length) then s_t_vpa  <= '1'; else s_t_vpa  <= '0'; end if;
        end if;
    end process;

    ---------------------------------------------------------------------------
    -- Registered DTACK and VPA.  Three product terms, one level of logic.
    --
    -- The DUART and the data1-4 windows are deliberately absent: they supply
    -- their own DTACK.  The expansion register window gets a slow fallback so
    -- the bus still terminates when no expansion board is fitted.
    ---------------------------------------------------------------------------
    -- Both the raw and the synchronised AS gate the acknowledge.  as_sync_i
    -- controls assertion, so nothing asynchronous can start a cycle early;
    -- as_i controls release, so the acknowledge drops one clk_i edge after AS
    -- negates rather than three.  At 20 MHz the CPU can start the next cycle
    -- 50 ns later, and waiting for the synchroniser to unwind would leave
    -- DTACK still low uncomfortably close to the next sample point.
    --
    -- A metastable sample of as_i is harmless in both directions here: on the
    -- trailing edge the worst case is DTACK held one extra 25 ns cycle, and on
    -- the leading edge as_sync_i is still high so nothing is asserted anyway.
    ack_reg : process(clk_i, reset_i)
    begin
        if reset_i = '0' then
            dtack_o <= '1';
            vpa_o   <= '1';
        elsif rising_edge(clk_i) then
            if as_i = '0' and as_sync_i = '0' and
               ((s_sel_fast_r = '1' and s_t_fast = '1') or
                (s_sel_slow_r = '1' and s_t_slow = '1') or
                (s_sel_ext_r  = '1' and s_t_ext  = '1')) then
                dtack_o <= '0';
            else
                dtack_o <= '1';
            end if;

            if as_i = '0' and as_sync_i = '0' and s_sel_iack_r = '1' and s_t_vpa = '1' then
                vpa_o <= '0';
            else
                vpa_o <= '1';
            end if;
        end if;
    end process;

end Behavioral;
