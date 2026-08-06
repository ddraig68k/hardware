library IEEE;
use IEEE.std_logic_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity DdraigGlue is
    Port (
		a_ip 			: in std_logic_vector (23 downto 8);
        clk_ip			: in std_logic;
        reset_ip		: in std_logic;
        bootrom_ip		: in std_logic;
        fc0_ip		   	: in std_logic;
        fc1_ip			: in std_logic;
        fc2_ip			: in std_logic;
        as_ip			: in std_logic;
        rw_ip			: in std_logic;
        lds_ip			: in std_logic;
        uds_ip			: in std_logic;
        clk10_op		: out std_logic;
		clk20_op		: out std_logic;
        dtack_op		: out std_logic;
        cs_pit_op		: out std_logic;
        cs_kbd_op		: out std_logic;
        cs_sram_op		: out std_logic;
        cs_rom_op		: out std_logic;
        cs_duart_op		: out std_logic;
        cs_rtc_op		: out std_logic;
        cs_ide_op		: out std_logic;
		cs_data1_op		: out std_logic;
		cs_data2_op		: out std_logic;
		cs_data3_op		: out std_logic;
		cs_data4_op		: out std_logic;
		cs_reg1_op		: out std_logic;
		cs_reg2_op		: out std_logic;
		cs_reg3_op		: out std_logic;
		cs_reg4_op		: out std_logic;
		mux_op			: out std_logic;
        dram_we_op		: out std_logic;
        ras0_op			: out std_logic;
        ras1_op			: out std_logic;
        cas0_op			: out std_logic;
        cas1_op			: out std_logic;
		ide_wr_op		: out std_logic;
		ide_rd_op		: out std_logic;
        ext_lds_op		: out std_logic;
        ext_uds_op		: out std_logic;
		vpa_op			: out std_logic;
		buserr_op    	: out std_logic
	);
end DdraigGlue;

architecture Behavioral of DdraigGlue is

	---------------------------------------------------------------------------
	-- CPU clock selection.
	--
	-- Set FALSE to drive the clk20_op pin at 10 MHz, which is what the design
	-- shipped with as a fallback while 20 MHz was unstable.  With the timing
	-- rework in this branch it should be TRUE.
	---------------------------------------------------------------------------
	constant C_CLK20_PIN_IS_20MHZ : boolean := true;

	-- Bus error watchdog.  Counts at 10 MHz regardless of CPU clock, so this
	-- is ~23.3 us of bus inactivity.
	constant C_BERR_TIMEOUT : natural := 232;

	signal s_dtack_address 	: std_logic;
	signal s_dtack_dram    	: std_logic;
	signal s_dram_sel		: std_logic;
	signal s_cpu_clk_10		: std_logic;
	signal s_cpu_clk_20		: std_logic;
	signal s_en20_rise		: std_logic;
	signal s_en20_fall		: std_logic;
	signal s_en10_rise		: std_logic;
	signal s_dram_we		: std_logic;
	signal s_extbus_en		: std_logic;
	signal s_ext_reg1		: std_logic;
	signal s_ext_reg2		: std_logic;
	signal s_ext_reg3		: std_logic;
	signal s_ext_reg4		: std_logic;
	signal s_ext_data1		: std_logic;
	signal s_ext_data2		: std_logic;
	signal s_ext_data3		: std_logic;
	signal s_ext_data4		: std_logic;

	-- Reset synchroniser: asynchronously asserted, synchronously released, so
	-- no flip-flop can see a reset recovery violation as reset lifts.
	signal s_rst_sync		: std_logic_vector(1 downto 0) := "00";
	signal s_reset_n		: std_logic;

	-- AS synchroniser.  Every counter in the design is cleared from this
	-- instead of from the raw as_ip pin, so all bits release together.
	signal s_as_sync		: std_logic_vector(1 downto 0) := "11";

	-- Nine bits rather than eight so the counter can stop on its top bit
	-- instead of on a compare against 0xFF.  Same reasoning as the wait
	-- counter in AddressDecode: a wide compare lands in every bit's equation
	-- and costs clock margin.  It freezes at 256, past the 232 threshold.
	signal s_berr_count     : unsigned(8 downto 0) := (others => '0');

begin

	---------------------------------------------------------------------------
	-- Clocking
	---------------------------------------------------------------------------
	ClkGen: entity work.Clock port map(
		clk_i       => clk_ip,
		clk20_o     => s_cpu_clk_20,
		clk10_o     => s_cpu_clk_10,
		en20_rise_o => s_en20_rise,
		en20_fall_o => s_en20_fall,
		en10_rise_o => s_en10_rise);

	clk10_op <= s_cpu_clk_10;
	clk20_op <= s_cpu_clk_20 when C_CLK20_PIN_IS_20MHZ else s_cpu_clk_10;

	---------------------------------------------------------------------------
	-- Reset and AS synchronisers
	---------------------------------------------------------------------------
	reset_sync : process (clk_ip, reset_ip)
	begin
		if reset_ip = '0' then
			s_rst_sync <= "00";
		elsif rising_edge(clk_ip) then
			s_rst_sync <= s_rst_sync(0) & '1';
		end if;
	end process;

	s_reset_n <= s_rst_sync(1);

	as_sync : process (clk_ip, s_reset_n)
	begin
		if s_reset_n = '0' then
			s_as_sync <= "11";
		elsif rising_edge(clk_ip) then
			s_as_sync <= s_as_sync(0) & as_ip;
		end if;
	end process;

	---------------------------------------------------------------------------
	-- Bus error watchdog.
	--
	-- The clear is unconditional rather than gated by the 10 MHz enable: at a
	-- 20 MHz CPU, AS can be high for as little as 50 ns, which is shorter than
	-- the 100 ns enable interval, and a missed clear would fire a spurious
	-- bus error.
	---------------------------------------------------------------------------
	buserr_count : process (clk_ip, s_reset_n)
	begin
		if s_reset_n = '0' then
			s_berr_count <= (others => '0');
		elsif rising_edge(clk_ip) then
			if s_as_sync(1) = '1' then
				s_berr_count <= (others => '0');
			elsif s_en10_rise = '1' and s_berr_count(s_berr_count'high) = '0' then
				s_berr_count <= s_berr_count + 1;
			end if;
		end if;
	end process;

	buserr_op <= '0' WHEN s_berr_count > to_unsigned(C_BERR_TIMEOUT, s_berr_count'length) ELSE '1';

	---------------------------------------------------------------------------
	-- Address decode / DTACK
	---------------------------------------------------------------------------
	Decode: entity work.AddressDecode port map(
		a_i => a_ip, clk_i => clk_ip, reset_i => s_reset_n, as_i => as_ip, as_sync_i => s_as_sync(1),
		fc0_i => fc0_ip, fc1_i => fc1_ip, fc2_i => fc2_ip, rw_i => rw_ip,
		bootrom_i => bootrom_ip, dtack_o => s_dtack_address, uds_i => uds_ip,
		vpa_o => vpa_op, cs_rom_o => cs_rom_op, cs_sram_o => cs_sram_op, dram_sel_o => s_dram_sel, cs_duart_o => cs_duart_op,
		cs_pit_o => cs_pit_op, cs_kbd_o => cs_kbd_op, cs_rtc_o => cs_rtc_op, cs_ide_o => cs_ide_op, ide_wr_o => ide_wr_op, ide_rd_o => ide_rd_op,
		cs_data1_o => s_ext_data1, cs_data2_o => s_ext_data2, cs_data3_o => s_ext_data3, cs_data4_o => s_ext_data4,
		cs_reg1_o => s_ext_reg1, cs_reg2_o => s_ext_reg2, cs_reg3_o => s_ext_reg3, cs_reg4_o => s_ext_reg4 );

	---------------------------------------------------------------------------
	-- DRAM controller
	---------------------------------------------------------------------------
	DRAM: entity work.DRAMStateMachine port map(
		clk_i => clk_ip, en_i => s_en20_fall, dram_sel_i => s_dram_sel, reset_i => s_reset_n, lds_i => lds_ip, uds_i => uds_ip,
		rw_i => rw_ip, as_i => as_ip, ras0_o => ras0_op, ras1_o => ras1_op, cas0_o => cas0_op, cas1_o => cas1_op,
		we_o => s_dram_we, mux_o => mux_op, dtack_o => s_dtack_dram);

	-- Both sources are now registered outputs of clk_ip, so this is a single
	-- product term and cannot glitch the way the old 25-pterm, two-level
	-- combinational DTACK did.
	dtack_op <= s_dtack_address AND s_dtack_dram;

	dram_we_op <= s_dram_we;

	s_extbus_en <= s_ext_reg1 AND s_ext_reg2 AND s_ext_reg3 AND s_ext_reg4 AND s_ext_data1 AND s_ext_data2 AND s_ext_data3 AND s_ext_data4;
	ext_lds_op <= '0' WHEN s_extbus_en = '0' AND lds_ip = '0' ELSE '1';
	ext_uds_op <= '0' WHEN s_extbus_en = '0' AND uds_ip = '0' ELSE '1';

	cs_reg1_op <= s_ext_reg1;
	cs_reg2_op <= s_ext_reg2;
	cs_reg3_op <= s_ext_reg3;
	cs_reg4_op <= s_ext_reg4;
	cs_data1_op <= s_ext_data1;
	cs_data2_op <= s_ext_data2;
	cs_data3_op <= s_ext_data3;
	cs_data4_op <= s_ext_data4;

end Behavioral;
