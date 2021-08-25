library IEEE;
use IEEE.std_logic_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.std_logic_UNSIGNED.ALL;

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

	signal s_dtack_address 	: std_logic;
	signal s_dtack_dram    	: std_logic;
	signal s_dram_sel		: std_logic;
	signal s_cpu_clk		: std_logic;
	signal s_clk_20mhz		: std_logic;
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
	
	signal s_berr_count     : std_logic_vector(7 downto 0);

begin

	buserr_count : process (s_cpu_clk, reset_ip, as_ip)
	begin
		if reset_ip = '0' or as_ip = '1' then
			s_berr_count <= (others => '0');
		elsif rising_edge(s_cpu_clk) then
			if s_berr_count < "11111111" then
				s_berr_count <= s_berr_count + 1;
			end if;
		end if;
	end process;

	ClkGen: entity work.Clock port map(clk_i => clk_ip, clk20_o => s_clk_20mhz, clk10_o => s_cpu_clk);
	
	Decode: entity work.AddressDecode port map(a_i => a_ip, clk_i => s_clk_20mhz, as_i => as_ip, fc0_i => fc0_ip, fc1_i => fc1_ip, fc2_i => fc2_ip, rw_i => rw_ip,
											bootrom_i => bootrom_ip, reset_i => reset_ip,  dtack_o => s_dtack_address, 
											vpa_o => vpa_op, cs_rom_o => cs_rom_op, cs_sram_o => cs_sram_op, dram_sel_o => s_dram_sel, cs_duart_o => cs_duart_op,
											cs_pit_o => cs_pit_op, cs_kbd_o => cs_kbd_op, cs_rtc_o => cs_rtc_op, cs_ide_o => cs_ide_op, ide_wr_o => ide_wr_op, ide_rd_o => ide_rd_op,
											cs_data1_o => s_ext_data1, cs_data2_o => s_ext_data2, cs_data3_o => s_ext_data3, cs_data4_o => s_ext_data4,
											cs_reg1_o => s_ext_reg1, cs_reg2_o => s_ext_reg2, cs_reg3_o => s_ext_reg3, cs_reg4_o => s_ext_reg4 );
	
	DRAM: entity work.DRAMStateMachine port map(clk_i => s_clk_20mhz, dram_sel_i => s_dram_sel, reset_i => reset_ip, lds_i => lds_ip, uds_i => uds_ip,
											  rw_i => rw_ip, as_i => as_ip, ras0_o => ras0_op, ras1_o => ras1_op, cas0_o => cas0_op, cas1_o => cas1_op,
											  we_o => s_dram_we, mux_o => mux_op, dtack_o => s_dtack_dram);


	dtack_op <= s_dtack_address AND s_dtack_dram;
	clk10_op <= s_cpu_clk;
	dram_we_op <= s_dram_we;

	s_extbus_en <= s_ext_reg1 AND s_ext_reg2 AND s_ext_reg3 AND s_ext_reg4 AND s_ext_data1 AND s_ext_data2 AND s_ext_data3 AND s_ext_data4;
	ext_lds_op <= '0' WHEN s_extbus_en = '0' AND lds_ip = '0' ELSE '1';
	ext_uds_op <= '0' WHEN s_extbus_en = '0' AND uds_ip = '0' ELSE '1';

	-- Generate bus error when no activity on AS, approx 5us
	--buserr_op <= '0' WHEN s_berr_count > "11001000" ELSE '1';
	buserr_op <= '0' WHEN s_berr_count > "11101000" ELSE '1';
	
	cs_reg1_op <= s_ext_reg1;
	cs_reg2_op <= s_ext_reg2;
	cs_reg3_op <= s_ext_reg3;
	cs_reg4_op <= s_ext_reg4;
	cs_data1_op <= s_ext_data1;
	cs_data2_op <= s_ext_data2;
	cs_data3_op <= s_ext_data3;
	cs_data4_op <= s_ext_data4;

end Behavioral;

