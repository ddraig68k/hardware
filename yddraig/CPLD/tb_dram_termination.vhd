-- GHDL: ghdl -a --std=08 -fsynopsys DRAMStateMachine.vhd tb_dram_termination.vhd
--       ghdl -e --std=08 -fsynopsys tb_dram_termination
--       ghdl -r --std=08 -fsynopsys tb_dram_termination --assert-level=error
-- Repeat with -gcpu_divider=2 for an 8 MHz CPU / 32 MHz controller.
library ieee;
use ieee.std_logic_1164.all;

entity tb_dram_termination is
    generic (cpu_divider : positive := 1);
end entity;

architecture test of tb_dram_termination is
    constant period : time := 31.25 ns;
    constant cpu_period : time := period * 2 * cpu_divider;
    signal clk : std_logic := '1';
    signal cpu_clk, cpu_clk16, cpu_clk8 : std_logic;
    signal reset_n : std_logic := '0';
    signal sel : std_logic := '0';
    signal as_n, uds_n, lds_n, rw : std_logic := '1';
    signal ras0, ras1, cas0, cas1, we_n, mux, dtack_n : std_logic;
    signal finished : boolean := false;
begin
    clk <= not clk after period / 2 when not finished else '1';
	clock_gen : entity work.Clock port map (
		clk_i => clk, clk20_o => cpu_clk16, clk10_o => cpu_clk8);
	cpu_clk <= cpu_clk16 when cpu_divider = 1 else cpu_clk8;
    dut : entity work.DRAMStateMachine port map (
        clk_i => clk, cpu_clk_i => cpu_clk, dram_sel_i => sel, reset_i => reset_n,
        lds_i => lds_n, uds_i => uds_n, rw_i => rw, as_i => as_n,
        ras0_o => ras0, ras1_o => ras1, cas0_o => cas0, cas1_o => cas1,
        we_o => we_n, mux_o => mux, dtack_o => dtack_n);

	ack_phase_monitor : process
	begin
		loop
			wait until falling_edge(dtack_n);
			assert cpu_clk = '0' and cpu_clk'last_event = 0 ns
				report "DRAM DTACK was not asserted immediately after a CPU falling edge"
				severity failure;
			assert ras0 = '0' and ras1 = '0' and (cas0 = '0' or cas1 = '0')
				report "DRAM DTACK asserted before the selected data lane was active"
				severity failure;
		end loop;
	end process;

    stimulus : process
        procedure check_released is
        begin
            assert ras0 = '1' and ras1 = '1' and cas0 = '1' and cas1 = '1'
                and we_n = '1' and dtack_n = '1'
                report "DRAM cycle not released promptly" severity failure;
        end procedure;

        procedure access_cycle(constant reading, upper_n, lower_n : std_logic;
                               constant release_delay : time) is
        begin
            sel <= '1'; as_n <= '0'; rw <= reading;
            uds_n <= upper_n; lds_n <= lower_n;
            wait for 1 ns;
            assert dtack_n = '1' and cas0 = '1' and cas1 = '1'
                report "Stale acknowledge or CAS at next access" severity failure;
            wait until dtack_n = '0' for 2 us;
            assert dtack_n = '0' report "Access timed out" severity failure;
            assert ras0 = '0' and ras1 = '0' and cas0 = upper_n
                and cas1 = lower_n and we_n = reading and mux = '1'
                report "Incorrect read/write or byte-lane controls" severity failure;

            -- End the cycle just AFTER a controller falling edge, as on the CPU.
            wait until falling_edge(clk);
            wait for cpu_period + release_delay;
            as_n <= '1';
            -- Keep R/W and byte strobes active to test AS termination alone.
            wait for 1 ns;
            check_released;
            uds_n <= '1'; lds_n <= '1'; rw <= '1'; sel <= '0';
            -- Minimum back-to-back AS gap is about 1.5 CPU clock periods.
            wait for cpu_period * 3 / 2 - 1 ns;
        end procedure;
    begin
        wait for 2 * period;
        reset_n <= '1';
        wait for period;
        for n in 1 to 3 loop
            access_cycle('0', '0', '0', n * 5 ns);
            access_cycle('1', '0', '0', n * 5 ns);
            access_cycle('0', '0', '1', n * 5 ns);
            access_cycle('0', '1', '0', n * 5 ns);
        end loop;

        -- End one cycle and begin the next entirely between controller edges.
        -- The asynchronously-cleared cycle latch must still force mem_rw5 to
        -- precharge; otherwise DTACK remains disabled and this access hangs.
        sel <= '1'; as_n <= '0'; rw <= '1'; uds_n <= '0'; lds_n <= '0';
        wait until dtack_n = '0' for 2 us;
        assert dtack_n = '0' report "Short-gap setup access timed out" severity failure;
        wait until falling_edge(clk);
        wait for 5 ns;
        as_n <= '1'; sel <= '0'; uds_n <= '1'; lds_n <= '1';
        wait for 5 ns;
        check_released;
        wait for 5 ns;
        sel <= '1'; as_n <= '0'; rw <= '1'; uds_n <= '0'; lds_n <= '0';
        wait for 1 ns;
        assert dtack_n = '1'
            report "Stale DTACK at short-gap access" severity failure;
        wait until dtack_n = '0' for 2 us;
        assert dtack_n = '0'
            report "Short-gap access lost after mem_rw5" severity failure;
        wait until falling_edge(clk);
        wait for 5 ns;
        as_n <= '1'; sel <= '0'; uds_n <= '1'; lds_n <= '1';
        wait for 1 ns;
        check_released;
        wait for 4 * period;

        -- Byte-strobe release must also stop CAS before a controller edge.
        sel <= '1'; as_n <= '0'; rw <= '0'; uds_n <= '0'; lds_n <= '0';
        wait until dtack_n = '0' for 2 us;
        assert dtack_n = '0' report "Byte-release access timed out" severity failure;
        wait until falling_edge(clk);
        wait for 5 ns;
        uds_n <= '1';
        wait for 1 ns;
        assert cas0 = '1' and cas1 = '0'
            report "Upper CAS did not follow byte-strobe release" severity failure;
        lds_n <= '1'; rw <= '1';
        wait for 1 ns;
        assert cas1 = '1' and we_n = '1'
            report "Lower CAS / WE did not terminate promptly" severity failure;
        as_n <= '1'; sel <= '0';
        wait for 4 * period;

        -- Verify CBR refresh runs with AS inactive, and is not truncated by
        -- unrelated CPU activity while a refresh is already in progress.
        wait until cas0 = '0' for 25 us;
        assert cas0 = '0' and cas1 = '0' and ras0 = '1' and ras1 = '1'
            report "Refresh did not start CAS-before-RAS" severity failure;
        wait for 5 ns;
        as_n <= '0'; uds_n <= '0'; lds_n <= '0'; rw <= '0';
        wait for 5 ns;
        as_n <= '1'; uds_n <= '1'; lds_n <= '1'; rw <= '1';
        wait for 1 ns;
        assert cas0 = '0' and cas1 = '0' and we_n = '1' and dtack_n = '1'
            report "CPU strobes disturbed refresh" severity failure;
        wait until ras0 = '0' for 2 * period;
        assert ras0 = '0' and ras1 = '0' and cas0 = '0' and cas1 = '0'
            report "Missing refresh RAS pulse" severity failure;
        -- Queue a real memory access during refresh; it must wait its turn.
        sel <= '1'; as_n <= '0'; uds_n <= '0'; lds_n <= '0'; rw <= '0';
        wait for 1 ns;
        assert we_n = '1' and dtack_n = '1'
            report "Memory write enabled during refresh" severity failure;
        wait until ras0 = '1' for 3 * period;
        assert ras0 = '1' and cas0 = '1' and cas1 = '1'
            report "Refresh did not complete" severity failure;
        wait until dtack_n = '0' for 2 us;
        assert dtack_n = '0' and we_n = '0'
            report "Pending access lost after refresh" severity failure;
        wait until falling_edge(clk);
        wait for 5 ns;
        as_n <= '1';
        wait for 1 ns;
        check_released;
        sel <= '0'; uds_n <= '1'; lds_n <= '1'; rw <= '1';
        wait for 4 * period;
        reset_n <= '0';
        wait for 1 ns;
        check_released;
        report "PASS: DRAM termination, byte lanes, back-to-back cycles and refresh";
        finished <= true;
        wait;
    end process;

    watchdog : process
    begin
        wait for 60 us;
        assert finished report "Testbench timed out" severity failure;
        wait;
    end process;
end architecture;
