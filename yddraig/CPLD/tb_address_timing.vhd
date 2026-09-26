-- Fixed-latency and externally acknowledged peripheral regression at 16 MHz.
library ieee;
use ieee.std_logic_1164.all;

entity tb_address_timing is end entity;

architecture test of tb_address_timing is
    constant period : time := 62.5 ns;
    signal clk : std_logic := '0';
    signal reset_n : std_logic := '0';
    signal a : std_logic_vector(23 downto 8) := (others => '0');
    signal as_n, uds_n, rw : std_logic := '1';
    signal fc : std_logic_vector(2 downto 0) := "001";
    signal dtack_n, ide_rd_n, ide_wr_n, cs_ide_n, vpa_n : std_logic;
    signal finished : boolean := false;
begin
    clk <= not clk after period / 2 when not finished else '0';
    dut : entity work.AddressDecode port map (
        a_i => a, clk_i => clk, as_i => as_n, fc0_i => fc(0),
        fc1_i => fc(1), fc2_i => fc(2), bootrom_i => '1', reset_i => reset_n,
        rw_i => rw, uds_i => uds_n, dtack_o => dtack_n, vpa_o => vpa_n,
        cs_rom_o => open, cs_sram_o => open, dram_sel_o => open,
        cs_duart_o => open, cs_pit_o => open, cs_kbd_o => open, cs_rtc_o => open,
        cs_ide_o => cs_ide_n, cs_data1_o => open, cs_data2_o => open,
        cs_data3_o => open, cs_data4_o => open, cs_reg1_o => open,
        cs_reg2_o => open, cs_reg3_o => open, cs_reg4_o => open,
        ide_wr_o => ide_wr_n, ide_rd_o => ide_rd_n);

    stimulus : process
        procedure start_access(constant address : std_logic_vector(15 downto 0);
                               constant reading : std_logic := '1') is
        begin
            wait until rising_edge(clk);
            wait for 5 ns;
            a <= address; as_n <= '0'; uds_n <= '0'; rw <= reading;
            wait for 1 ns;
            assert dtack_n = '1' report "Stale DTACK" severity failure;
        end procedure;

        procedure finish_access is
        begin
            as_n <= '1'; uds_n <= '1';
            wait for 1 ns;
            assert dtack_n = '1' and ide_rd_n = '1' and ide_wr_n = '1'
                report "Strobes or DTACK not released with AS" severity failure;
            wait for 2 * period;
        end procedure;

        procedure fixed_ack(constant address : std_logic_vector(15 downto 0);
                            constant ticks : positive) is
        begin
            start_access(address);
            for tick in 1 to ticks loop
                wait until rising_edge(clk);
                wait for 1 ns;
                if tick < ticks then
                    assert dtack_n = '1' report "DTACK too early" severity failure;
                else
                    assert dtack_n = '0' report "Missing fixed DTACK" severity failure;
                end if;
            end loop;
            finish_access;
        end procedure;

        procedure external_ack(constant address : std_logic_vector(15 downto 0)) is
        begin
            start_access(address);
            for tick in 1 to 260 loop
                wait until rising_edge(clk);
                wait for 1 ns;
                assert dtack_n = '1' report "CPLD acknowledged an external-DTACK device" severity failure;
            end loop;
            finish_access;
        end procedure;

        procedure ide_access(constant reading : std_logic) is
            variable started, strobe_started, write_ended : time;
        begin
            start_access(x"F7F3", reading);
            started := now - 1 ns;
            assert cs_ide_n = '0' severity failure;
            for tick in 1 to 20 loop
                wait until rising_edge(clk);
                wait for 1 ns;
                if tick < 3 then
                    assert ide_rd_n = '1' and ide_wr_n = '1'
                        report "IDE address setup missing" severity failure;
                else
                    if tick = 3 then
                        strobe_started := now;
                        assert now - started >= 70 ns severity failure;
                    end if;
                    if reading = '1' then
                        assert ide_rd_n = '0' and ide_wr_n = '1'
                            report "IDE read ended before CPU released AS" severity failure;
                    elsif tick < 11 then
                        assert ide_wr_n = '0' and ide_rd_n = '1' severity failure;
                    else
                        assert ide_wr_n = '1' and ide_rd_n = '1'
                            report "IDE write did not end before acknowledge" severity failure;
                        if tick = 11 then
                            write_ended := now;
                            assert now - strobe_started >= 290 ns severity failure;
                        end if;
                    end if;
                end if;
                if tick < 12 then
                    assert dtack_n = '1' report "IDE DTACK too early" severity failure;
                else
                    assert dtack_n = '0' report "Missing/unstable IDE DTACK" severity failure;
                    if tick = 12 then
                        assert now - started >= 600 ns severity failure;
                        if reading = '0' then
                            assert now - write_ended >= 30 ns
                                report "Insufficient CF write-data hold before DTACK" severity failure;
                        end if;
                    end if;
                end if;
            end loop;
            finish_access;
        end procedure;
    begin
        wait for 2 * period; reset_n <= '1';
        fixed_ack(x"0000", 5); -- 55 ns SRAM plus external LS32 select path
        fixed_ack(x"F800", 3); -- 70 ns ROM
        fixed_ack(x"F7F2", 9); -- keyboard
        fixed_ack(x"F7F4", 9); -- RTC
        fixed_ack(x"F7F5", 41); -- absent expansion cards
        fixed_ack(x"F7F6", 41);
        fixed_ack(x"F7F7", 41);
        fixed_ack(x"F7F8", 41);
        external_ack(x"F7F0"); -- DUART
        external_ack(x"F7F1"); -- PIT
        external_ack(x"A000");
        external_ack(x"B000");
        external_ack(x"C000");
        external_ack(x"D000");
        ide_access('0'); ide_access('1'); ide_access('0');
        -- Abort before the delayed strobe starts.
        start_access(x"F7F3", '0');
        finish_access;
        report "PASS: memory/peripheral DTACK, expansion fallback and CF timing";
        finished <= true;
        wait;
    end process;
end architecture;
