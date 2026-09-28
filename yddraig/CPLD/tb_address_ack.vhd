-- GHDL: ghdl -a --std=08 -fsynopsys AddressDecode.vhd tb_address_ack.vhd
--       ghdl -e --std=08 -fsynopsys tb_address_ack
--       ghdl -r --std=08 -fsynopsys tb_address_ack --assert-level=error
--
-- Checks the registered acknowledge flags give the same tick timing the
-- combinatorial ">= N" compares did, the retuned IDE strobe/ack ticks, and
-- the bus-error timeout now derived from s_dtack.
library ieee;
use ieee.std_logic_1164.all;
entity tb_address_ack is end entity;
architecture t of tb_address_ack is
    constant per : time := 62.5 ns;
    signal clk : std_logic := '0';
    signal as_n, rw, uds_n, reset_n : std_logic := '1';
    signal a : std_logic_vector(23 downto 8) := (others=>'0');
    signal fc0,fc1,fc2 : std_logic := '0';
    signal bootrom : std_logic := '1';
    signal dtack_n, berr_n, vpa_n : std_logic;
    signal cs_rom,cs_sram,cs_duart,cs_pit,cs_kbd,cs_rtc,cs_ide : std_logic;
    signal dsel : std_logic;
    signal d1,d2,d3,d4,r1,r2,r3,r4 : std_logic;
    signal ide_wr,ide_rd : std_logic;
    signal done : boolean := false;
begin
    clk <= not clk after per/2 when not done else '0';
    dut : entity work.AddressDecode port map(
        a_i=>a, clk_i=>clk, as_i=>as_n, fc0_i=>fc0, fc1_i=>fc1, fc2_i=>fc2,
        bootrom_i=>bootrom, reset_i=>reset_n, rw_i=>rw, uds_i=>uds_n,
        dtack_o=>dtack_n, cs_rom_o=>cs_rom, cs_sram_o=>cs_sram, dram_sel_o=>dsel,
        cs_duart_o=>cs_duart, cs_pit_o=>cs_pit, cs_kbd_o=>cs_kbd, cs_rtc_o=>cs_rtc,
        cs_ide_o=>cs_ide, cs_data1_o=>d1, cs_data2_o=>d2, cs_data3_o=>d3, cs_data4_o=>d4,
        cs_reg1_o=>r1, cs_reg2_o=>r2, cs_reg3_o=>r3, cs_reg4_o=>r4,
        ide_wr_o=>ide_wr, ide_rd_o=>ide_rd, vpa_o=>vpa_n, berr_o=>berr_n);

    stim : process
        -- drive AS low just after a falling edge, then count rising edges to DTACK
        procedure cycle(constant addr : std_logic_vector(15 downto 0);
                        constant boot, wr : std_logic;
                        constant expect : natural; constant name : string) is
            variable n : natural := 0;
        begin
            wait until falling_edge(clk);
            wait for 5 ns;
            a <= addr; bootrom <= boot; rw <= wr; uds_n <= '0'; as_n <= '0';
            loop
                wait until rising_edge(clk);
                n := n + 1;
                wait for 1 ns;
                exit when dtack_n = '0' or n > 300;
            end loop;
            assert n = expect
                report name & ": DTACK at tick " & natural'image(n)
                       & ", expected " & natural'image(expect) severity failure;
            wait for 5 ns; as_n <= '1'; uds_n <= '1'; wait for 5 ns;
            assert dtack_n = '1' report name & ": DTACK did not release" severity failure;
            wait for per;
        end procedure;
    begin
        wait for 3*per; reset_n <= '1'; wait for per;

		cycle(x"F800",'1','1', 1,  "ROM read");
		cycle(x"0000",'1','1', 1,  "SRAM read");
        cycle(x"F7F5",'1','1', 41, "expansion reg (no card)");
        cycle(x"F7F2",'1','1', 9,  "keyboard");

		-- IDE write: strobe at tick 1, write end at tick 4, ack at tick 5.
        wait until falling_edge(clk); wait for 5 ns;
        a <= x"F7F3"; rw <= '0'; as_n <= '0';
        wait until rising_edge(clk); wait for 1 ns;     -- tick 1
        assert ide_wr = '0' report "IDE /WR not asserted at tick 1" severity failure;
        assert dtack_n = '1' report "IDE DTACK too early" severity failure;
        for i in 2 to 4 loop wait until rising_edge(clk); end loop;
        wait for 1 ns;                                   -- tick 4
        assert ide_wr = '1' report "IDE /WR did not end at tick 4" severity failure;
        assert dtack_n = '1' report "IDE DTACK before write hold" severity failure;
        wait until rising_edge(clk); wait for 1 ns;      -- tick 5
        assert dtack_n = '0' report "IDE DTACK not at tick 5" severity failure;
        as_n <= '1'; wait for per;

		-- IDE read is acknowledged one clock earlier, but /RD remains asserted
		-- until AS is released after the CPU samples the data.
		wait until falling_edge(clk); wait for 5 ns;
		a <= x"F7F3"; rw <= '1'; as_n <= '0';
		wait until rising_edge(clk); wait for 1 ns;      -- tick 1
		assert ide_rd = '0' report "IDE /RD not asserted at tick 1" severity failure;
		for i in 2 to 3 loop
			wait until rising_edge(clk); wait for 1 ns;
			assert dtack_n = '1' report "IDE read DTACK too early" severity failure;
		end loop;
		wait until rising_edge(clk); wait for 1 ns;      -- tick 4
		assert dtack_n = '0' report "IDE read DTACK not at tick 4" severity failure;
		assert ide_rd = '0' report "IDE /RD ended before AS" severity failure;
		as_n <= '1'; wait for 1 ns;
		assert ide_rd = '1' and dtack_n = '1'
			report "IDE read did not release with AS" severity failure;
		wait for per;

        -- bus error: never acknowledged, AS held low
        wait until falling_edge(clk); wait for 5 ns;
        a <= x"9000"; as_n <= '0'; rw <= '1';            -- unmapped, above DRAM
        for i in 1 to 254 loop wait until rising_edge(clk); end loop;
        wait for 1 ns;
        assert berr_n = '1' report "BERR too early (tick 254)" severity failure;
        wait until rising_edge(clk); wait for 1 ns;
        assert berr_n = '0' report "BERR not asserted at tick 255" severity failure;
        as_n <= '1'; wait for 5 ns;
        assert berr_n = '1' report "BERR did not release on AS" severity failure;

        report "PASS: acknowledge ticks, IDE strobes and bus-error timeout";
        done <= true; wait;
    end process;
end architecture;
