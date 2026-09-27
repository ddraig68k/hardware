-- Verify the GM71C4100C refresh deadline over a complete 1024-row sweep.
-- Run with GHDL --std=08 -fsynopsys (analyze, elaborate, then run).
library ieee;
use ieee.std_logic_1164.all;

entity tb_dram_refresh is end entity;

architecture test of tb_dram_refresh is
    constant period : time := 31.25 ns;
    constant deadline : time := 16 ms / 1024;
    signal clk : std_logic := '1';
    signal cpu_clk, unused_clk8 : std_logic;
    signal reset_n : std_logic := '0';
    signal sel : std_logic := '0';
    signal as_n, uds_n, lds_n, rw : std_logic := '1';
    signal ras0, ras1, cas0, cas1, we_n, mux, dtack_n : std_logic;
    signal finished : boolean := false;
    signal refreshes : natural := 0;
    signal last_refresh : time := 0 ns;
begin
    clk <= not clk after period / 2 when not finished else '1';
	clock_gen : entity work.Clock port map (
		clk_i => clk, clk20_o => cpu_clk, clk10_o => unused_clk8);
    dut : entity work.DRAMStateMachine port map (
        clk_i => clk, cpu_clk_i => cpu_clk, dram_sel_i => sel, reset_i => reset_n,
        lds_i => lds_n, uds_i => uds_n, rw_i => rw, as_i => as_n,
        ras0_o => ras0, ras1_o => ras1, cas0_o => cas0, cas1_o => cas1,
        we_o => we_n, mux_o => mux, dtack_o => dtack_n);

    monitor : process
        variable first_refresh, min_gap, max_gap, gap : time := 0 ns;
        variable ras_start, cas_start, ras_end : time := 0 ns;
    begin
        wait until reset_n = '1';
        loop
            -- Only refresh asserts CAS while RAS is still high.
            wait until falling_edge(cas0) and ras0 = '1';
            cas_start := now;
            assert cas1 = '0' and we_n = '1' and dtack_n = '1'
                report "Invalid CBR refresh start" severity failure;
            wait until falling_edge(ras0);
            ras_start := now;
            assert now - cas_start >= 10 ns
                report "CBR CAS setup <10 ns" severity failure;
            assert now - ras_end >= 40 ns
                report "Refresh precharge <40 ns" severity failure;
            if refreshes = 0 then
                first_refresh := now;
                min_gap := deadline;
            else
                gap := now - last_refresh;
                assert gap <= deadline report "Refresh spacing exceeds 15.625 us" severity failure;
                if gap < min_gap then min_gap := gap; end if;
                if gap > max_gap then max_gap := gap; end if;
            end if;
            last_refresh <= now;
            refreshes <= refreshes + 1;
            wait until rising_edge(cas0);
            assert now - ras_start >= 10 ns
                report "CBR CAS hold <10 ns" severity failure;
            wait until rising_edge(ras0);
            ras_end := now;
            assert now - ras_start >= 60 ns
                report "Refresh RAS pulse <60 ns" severity failure;
            if refreshes = 1025 then
                assert ras_start - first_refresh <= 16 ms
                    report "1024-row sweep exceeds 16 ms" severity failure;
                report "PASS: 1024 refresh intervals; min=" & time'image(min_gap) &
                    "; max=" & time'image(max_gap) & "; sweep=" & time'image(ras_start - first_refresh);
                finished <= true;
                wait;
            end if;
        end loop;
    end process;

    traffic : process
        variable n : natural := 0;
    begin
        wait for 2 * period;
        reset_n <= '1';
        -- Measure idle refresh first, then stress pending refresh requests with
        -- consecutive reads/writes and AS held up to 2 us after DTACK.
        wait until refreshes = 3;
        wait for 5 * period;
        while not finished loop
            sel <= '1'; as_n <= '0'; uds_n <= '0'; lds_n <= '0';
            if n mod 2 = 0 then rw <= '0'; else rw <= '1'; end if;
            wait until dtack_n = '0' for 3 us;
            exit when finished;
            assert dtack_n = '0' report "Access starved by refresh" severity failure;
            wait for period * (1 + n mod 32) + 5 ns;
            as_n <= '1'; sel <= '0'; uds_n <= '1'; lds_n <= '1'; rw <= '1';
            wait for period * 3 / 2;
            n := n + 1;
        end loop;
        wait;
    end process;

    watchdog : process
    begin
        wait for 100 ns;
        if not finished and reset_n = '1' then
            assert now - last_refresh <= deadline + 2 * period
                report "Refresh stopped or missed its deadline" severity failure;
        end if;
        if finished then wait; end if;
    end process;
end architecture;
