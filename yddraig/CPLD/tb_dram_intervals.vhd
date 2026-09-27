-- GHDL: ghdl -a --std=08 -fsynopsys Clock.vhd DRAMStateMachine.vhd tb_dram_intervals.vhd
--       ghdl -e --std=08 -fsynopsys tb_dram_intervals
--       ghdl -r --std=08 -fsynopsys tb_dram_intervals --assert-level=error
--
-- Measures the RAS/CAS/MUX intervals of a normal access in nanoseconds and
-- checks them against the DRAM's limits, rather than only checking that the
-- states happen in the right order. Written to give the DTACK-with-CAS and
-- mem_rw1 removal experiments a way to fail in simulation instead of on the
-- bench.
--
-- The limits below are for a GM71C4100C-70. CHECK THEM against the part
-- actually fitted before trusting a pass - they are the whole point of the
-- test, and a wrong constant here is worse than no test.

library ieee;
use ieee.std_logic_1164.all;

entity tb_dram_intervals is
end entity;

architecture test of tb_dram_intervals is
    -- Controller period: 31.25 ns = 32 MHz. CPU is half that.
    constant period     : time := 31.25 ns;
    constant cpu_period : time := period * 2;

    -- DRAM limits (GM71C4100C-70)
    constant c_tRAH : time := 10 ns;    -- row address hold after RAS
    constant c_tRCD : time := 20 ns;    -- RAS to CAS delay
    constant c_tRAS : time := 70 ns;    -- RAS pulse width
    constant c_tRP  : time := 50 ns;    -- RAS precharge
    constant c_tCAS : time := 20 ns;    -- CAS pulse width
    constant c_tCAC : time := 20 ns;    -- CAS access time

    signal clk : std_logic := '1';
    signal cpu_clk, cpu_clk8 : std_logic;
    signal reset_n : std_logic := '0';
    signal sel : std_logic := '0';
    signal as_n, uds_n, lds_n, rw : std_logic := '1';
    signal ras0, ras1, cas0, cas1, we_n, mux, dtack_n : std_logic;
    signal finished : boolean := false;

    -- measured minima, reported at the end
    signal m_rah, m_rcd, m_ras, m_rp, m_cas, m_cas_dtack : time := 1 ms;
begin
    clk <= not clk after period / 2 when not finished else '1';

    clock_gen : entity work.Clock port map (
        clk_i => clk, clk20_o => cpu_clk, clk10_o => cpu_clk8);

    dut : entity work.DRAMStateMachine port map (
        clk_i => clk, cpu_clk_i => cpu_clk, dram_sel_i => sel,
        reset_i => reset_n, lds_i => lds_n, uds_i => uds_n, rw_i => rw,
        as_i => as_n, ras0_o => ras0, ras1_o => ras1, cas0_o => cas0,
        cas1_o => cas1, we_o => we_n, mux_o => mux, dtack_o => dtack_n);

    -- A refresh is CAS-before-RAS, so its intervals are not the ones checked
    -- here. Detect it by CAS falling while RAS is still high and stand down
    -- until both are released again.
    monitor : process
        variable t_ras_fall : time := -1 ns;
        variable t_ras_rise : time := -1 ns;
        variable t_cas_fall : time := -1 ns;
        variable t_mux      : time := -1 ns;
        variable in_refresh : boolean := false;
    begin
        wait on ras0, cas0, mux, dtack_n, reset_n;

        if reset_n = '0' then
            t_ras_fall := -1 ns; t_ras_rise := -1 ns;
            t_cas_fall := -1 ns; in_refresh := false;

        elsif falling_edge(cas0) and ras0 = '1' then
            in_refresh := true;                     -- CAS before RAS

        elsif in_refresh then
            if ras0 = '1' and cas0 = '1' then
                in_refresh := false;
            end if;

        elsif falling_edge(ras0) then
            if t_ras_rise > 0 ns then
                assert now - t_ras_rise >= c_tRP
                    report "tRP violated: RAS high for only "
                           & time'image(now - t_ras_rise) severity failure;
                if now - t_ras_rise < m_rp then m_rp <= now - t_ras_rise; end if;
            end if;
            t_ras_fall := now;

        elsif rising_edge(mux) and t_ras_fall > 0 ns then
            assert now - t_ras_fall >= c_tRAH
                report "tRAH violated: row address held only "
                       & time'image(now - t_ras_fall) severity failure;
            if now - t_ras_fall < m_rah then m_rah <= now - t_ras_fall; end if;
            t_mux := now;

        elsif falling_edge(cas0) and t_ras_fall > 0 ns then
            assert now - t_ras_fall >= c_tRCD
                report "tRCD violated: RAS to CAS only "
                       & time'image(now - t_ras_fall) severity failure;
            assert mux = '1'
                report "CAS asserted while the row address is still selected"
                severity failure;
            if now - t_ras_fall < m_rcd then m_rcd <= now - t_ras_fall; end if;
            t_cas_fall := now;

        elsif rising_edge(ras0) and t_ras_fall > 0 ns then
            assert now - t_ras_fall >= c_tRAS
                report "tRAS violated: RAS low for only "
                       & time'image(now - t_ras_fall) severity failure;
            if now - t_ras_fall < m_ras then m_ras <= now - t_ras_fall; end if;
            t_ras_rise := now;

        elsif rising_edge(cas0) and t_cas_fall > 0 ns then
            assert now - t_cas_fall >= c_tCAS
                report "tCAS violated: CAS low for only "
                       & time'image(now - t_cas_fall) severity failure;
            if now - t_cas_fall < m_cas then m_cas <= now - t_cas_fall; end if;

        elsif falling_edge(dtack_n) then
            -- DTACK may share a state with CAS, but never precede it: the CPU
            -- latches read data two clocks after it samples DTACK, so tCAC is
            -- met with enormous margin, but data must at least be on its way.
            assert t_cas_fall > 0 ns and t_cas_fall <= now
                report "DTACK asserted before CAS" severity failure;
            if now - t_cas_fall < m_cas_dtack then
                m_cas_dtack <= now - t_cas_fall;
            end if;
        end if;
    end process;

    stimulus : process
        -- One 68000-like access: AS low for the wait states, high for two
        -- CPU clocks, which is the minimum gap between back-to-back cycles.
        procedure access_cycle(constant reading, upper_n, lower_n : std_logic) is
        begin
            wait until falling_edge(cpu_clk);
            sel <= '1'; as_n <= '0'; rw <= reading;
            uds_n <= upper_n; lds_n <= lower_n;
            wait until dtack_n = '0' for 3 us;
            assert dtack_n = '0' report "access timed out" severity failure;
            wait until falling_edge(cpu_clk);
            wait for cpu_period;
            as_n <= '1'; sel <= '0'; uds_n <= '1'; lds_n <= '1'; rw <= '1';
            wait for cpu_period * 2;
        end procedure;
    begin
        wait for 4 * period;
        reset_n <= '1';
        wait for period;

        -- Stay inside the first refresh interval (12.5 us) so the measured
        -- intervals are all from normal accesses.
        for n in 1 to 8 loop
            access_cycle('1', '0', '0');            -- word read
            access_cycle('0', '0', '0');            -- word write
            access_cycle('0', '0', '1');            -- upper byte write
            access_cycle('1', '1', '0');            -- lower byte read
        end loop;

        report "measured minima -- "
             & "tRAH " & time'image(m_rah) & ", "
             & "tRCD " & time'image(m_rcd) & ", "
             & "tRAS " & time'image(m_ras) & ", "
             & "tRP "  & time'image(m_rp)  & ", "
             & "tCAS " & time'image(m_cas) & ", "
             & "CAS to DTACK " & time'image(m_cas_dtack);
        report "PASS: DRAM intervals within limits";
        finished <= true;
        wait;
    end process;

    watchdog : process
    begin
        wait for 200 us;
        assert finished report "testbench timed out" severity failure;
        wait;
    end process;
end architecture;
