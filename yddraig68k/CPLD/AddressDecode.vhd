library IEEE;
use IEEE.std_logic_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.std_logic_UNSIGNED.ALL;

entity AddressDecode is
    Port (
		a_i				: in std_logic_vector(23 downto 8);
        clk_i 			: in std_logic;
        as_i 			: in std_logic;
        fc0_i 			: in std_logic;
        fc1_i 			: in std_logic;
        fc2_i 			: in std_logic;
        bootrom_i 		: in std_logic;
        reset_i 		: in std_logic;
		rw_i			: in std_logic;
        dtack_o 		: out std_logic;
        cs_rom_o 		: out std_logic;
        cs_sram_o 		: out std_logic;
		dram_sel_o 		: out std_logic;
        cs_duart_o 		: out std_logic;
        cs_pit_o 	 	: out std_logic;
        cs_kbd_o 		: out std_logic;
        cs_rtc_o 		: out std_logic;
		cs_ide_o 		: out std_logic;
		cs_data1_o		: out std_logic;
		cs_data2_o		: out std_logic;
		cs_data3_o		: out std_logic;
		cs_data4_o		: out std_logic;
		cs_reg1_o		: out std_logic;
		cs_reg2_o		: out std_logic;
		cs_reg3_o		: out std_logic;
		cs_reg4_o		: out std_logic;
		ide_wr_o     	: out std_logic;
	  	ide_rd_o     	: out std_logic;
		vpa_o			: out std_logic
	);
end AddressDecode;

architecture Behavioral of AddressDecode is
	signal s_dtack 		: std_logic_vector(7 downto 0);
	
	signal s_rom 		: std_logic;
	signal s_sram 		: std_logic;
	signal s_dram 		: std_logic;
	signal s_ide 		: std_logic;
	signal s_duart 		: std_logic;
	signal s_pit 		: std_logic;
	signal s_kbd 		: std_logic;
	signal s_rtc 		: std_logic;
	signal s_fc			: std_logic;
	signal s_addr_sel	: std_logic;
	signal s_ack		: std_logic;

	signal s_reg1 		: std_logic;
	signal s_reg2 		: std_logic;
	signal s_reg3		: std_logic;
	signal s_reg4 		: std_logic;

	signal s_data1		: std_logic;
	signal s_data2		: std_logic;
	signal s_data3		: std_logic;
	signal s_data4		: std_logic;
	
	signal s_ext_id   	: std_logic;

	
begin
	process (clk_i, reset_i, as_i)
	begin
		if (reset_i = '0' or as_i = '1') then
			s_dtack <= (others => '0');
		elsif (rising_edge(clk_i)) then
			if (s_dtack < "11111111") then
				s_dtack <= s_dtack + 1;
			end if;
		end if;
	end process;
	
	s_fc <= fc0_i and fc1_i and fc2_i;
	s_addr_sel <= '1' when s_fc = '0' and as_i = '0' else '0';

	s_rom 	<= '0' WHEN s_addr_sel = '1' AND (bootrom_i = '0' OR std_match(a_i, "11111-----------")) ELSE '1';		-- $F80000 - $FFFFFF
	s_sram 	<= '0' WHEN s_addr_sel = '1' AND bootrom_i = '1' AND std_match(a_i, "0000------------") ELSE '1';		-- $000000 - $0FFFFF
	s_duart	<= '0' WHEN s_addr_sel = '1' AND std_match(a_i, "1111011111110000") ELSE '1';							-- $F7F000 - $F7F0FF
	s_pit	<= '0' WHEN s_addr_sel = '1' AND std_match(a_i, "1111011111110001") ELSE '1';							-- $F7F100 - $F7F1FF
	s_kbd	<= '0' WHEN s_addr_sel = '1' AND std_match(a_i, "1111011111110010") ELSE '1';							-- $F7F200 - $F7F2FF
	s_ide	<= '0' WHEN s_addr_sel = '1' AND std_match(a_i, "1111011111110011") ELSE '1';							-- $F7F300 - $F7F3FF
	s_rtc	<= '0' WHEN s_addr_sel = '1' AND std_match(a_i, "1111011111110100") ELSE '1';							-- $F7F400 - $F7F4FF
	s_reg1	<= '0' WHEN s_addr_sel = '1' AND std_match(a_i, "1111011111110101") ELSE '1';							-- $F7F500 - $F7F5FF
	s_reg2	<= '0' WHEN s_addr_sel = '1' AND std_match(a_i, "1111011111110110") ELSE '1';							-- $F7F600 - $F7F6FF
	s_reg3	<= '0' WHEN s_addr_sel = '1' AND std_match(a_i, "1111011111110111") ELSE '1';							-- $F7F700 - $F7F7FF
	s_reg4	<= '0' WHEN s_addr_sel = '1' AND std_match(a_i, "1111011111111000") ELSE '1';							-- $F7F800 - $F7F8FF
	

	s_dram	<= '1' WHEN s_addr_sel = '1' AND a_i >= "0001000000000000" AND a_i < "1001000000000000" ELSE '0'; 		-- $100000 - $8FFFFF (8 MB)
	s_data1	<= '0' WHEN s_addr_sel = '1' AND a_i >= "1010000000000000" AND a_i < "1011000000000000" ELSE '1'; 		-- $A00000 - $AFFFFF (1 MB)
	s_data2	<= '0' WHEN s_addr_sel = '1' AND a_i >= "1011000000000000" AND a_i < "1100000000000000" ELSE '1'; 		-- $B00000 - $BFFFFF (1 MB)
	s_data3	<= '0' WHEN s_addr_sel = '1' AND a_i >= "1100000000000000" AND a_i < "1101000000000000" ELSE '1'; 		-- $C00000 - $CFFFFF (1 MB)
	s_data4	<= '0' WHEN s_addr_sel = '1' AND a_i >= "1101000000000000" AND a_i < "1110000000000000" ELSE '1'; 		-- $D00000 - $DFFFFF (1 MB)
																											 
	cs_rom_o 	<= s_rom;
	cs_sram_o 	<= s_sram;
	cs_ide_o	<= s_ide;
	cs_duart_o	<= s_duart;
	cs_pit_o	<= s_pit;
	cs_kbd_o	<= s_kbd;
	cs_rtc_o	<= s_rtc;
	dram_sel_o	<= s_dram;

	cs_reg1_o	<= s_reg1;
	cs_reg2_o	<= s_reg2;
	cs_reg3_o	<= s_reg3;
	cs_reg4_o	<= s_reg4;

	cs_data1_o	<= s_data1;
	cs_data2_o	<= s_data2;
	cs_data3_o	<= s_data3;
	cs_data4_o	<= s_data4;

	-- Handle IDE and PS/2 read/write signals
	ide_wr_o    <= '0' WHEN s_ide = '0' AND rw_i = '0' ELSE '1';
	ide_rd_o    <= '0' WHEN s_ide = '0' AND rw_i = '1' ELSE '1';
	
	s_ack 		<= s_ide AND s_kbd AND s_pit AND s_rtc;	
	s_ext_id	<= s_reg1 AND s_reg2 AND s_reg3 AND s_reg4; 
	
	-- Handle interrupt ack via VPA
	vpa_o		<= '0' WHEN s_fc = '1' AND as_i = '0' AND s_dtack > "00010" ELSE '1';
	
	dtack_o 	<= '0' WHEN s_ext_id = '0' AND s_dtack > "00101000"				-- DTACK after 2us. Gives the expansion board tim to
																				-- generate it's own DTACK but still generate a signal
																				-- if no board is connected.
					   ELSE '0' WHEN s_sram = '0' AND s_dtack > "00000100"		-- DTACK after 200ns
					   ELSE '0' WHEN s_rom = '0' AND s_dtack >  "00000100"		-- DTACK ater 200ns
					   ELSE '0' WHEN s_ack = '0' AND s_dtack > "00001000"  		-- DTACK after 400ns for other devices
					   ELSE '1'; 
							 
end Behavioral;

