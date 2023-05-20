library IEEE;
use IEEE.std_logic_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.std_logic_UNSIGNED.ALL;

entity AddressDecode is
    Port (
		clk40_i			: in std_logic;
		a_i				: in std_logic_vector(30 downto 8);
		a1_i 			: in std_logic;
		a0_i			: in std_logic;
        as_i 			: in std_logic;
        fc_i 			: in std_logic_vector(2 downto 0);
        bootrom_i 		: in std_logic;
		rw_i			: in std_logic;
		siz0_i			: in std_logic;
		siz1_i			: in std_logic;
		dtack_i 		: in std_logic;

		dsack0_o		: out std_logic;
		dsack1_o		: out std_logic;
		lds_o			: out std_logic;
		uds_o			: out std_logic;
		cs_rom_o 		: out std_logic;
		cs_sram_o		: out std_logic;
		cs_dram_o		: out std_logic;
		cs_fpu_o 		: out std_logic;
		cs_duart_o		: out std_logic;
		cs_eth_o		: out std_logic;
		cs_kbd_o		: out std_logic;
		cs_rtc_o		: out std_logic;
		cs_ide_o 		: out std_logic;
		cs_interrupt_o	: out std_logic;
		cs_cardprd_o	: out std_logic;
		cs_status_o		: out std_logic;

		expsel_o		: out std_logic_vector(2 downto 0);
		expsel_en_o		: out std_logic;
		buserr_o		: out std_logic;
		run_o			: out std_logic
	);
end AddressDecode;

architecture Behavioral of AddressDecode is
	signal s_dtack 		: std_logic_vector(8 downto 0);
	
	signal s_rom 		: std_logic;
	signal s_sram 		: std_logic;
	signal s_dram 		: std_logic;
	signal s_ide 		: std_logic;
	signal s_duart 		: std_logic;
	signal s_kbd 		: std_logic;
	signal s_rtc 		: std_logic;
	signal s_eth 		: std_logic;
	signal s_status		: std_logic;
	signal s_fpu		: std_logic;

	signal s_exp1 		: std_logic;
	signal s_exp2 		: std_logic;
	signal s_exp3		: std_logic;
	signal s_exp4 		: std_logic;

	signal s_exdata1	: std_logic;	-- 1MB expansion data range (compatability mode)
	signal s_exdata2	: std_logic;
	signal s_exdata3	: std_logic;
	signal s_exdata4	: std_logic;
	signal s_exdata5	: std_logic;	-- 64MB expansion data range extended mode
	signal s_exdata6	: std_logic;
	signal s_exdata7	: std_logic;
	signal s_exdata8	: std_logic;

	signal s_expselect	: std_logic_vector(7 downto 0);
	signal s_expselected : std_logic;
	signal s_width8  	: std_logic;
	signal s_width16	: std_logic;

	signal s_fc 		: std_logic;
	signal s_addrsel	: std_logic;
	signal s_size		: std_logic_vector(1 downto 0);

	signal s_dtack8		: std_logic_vector(1 downto 0);
	signal s_dtack16	: std_logic_vector(1 downto 0);
	signal s_dtack_exp 	: std_logic_vector(1 downto 0);

begin
	process (clk40_i, as_i)
	begin
		if (as_i = '1') then
			s_dtack <= (others => '0');
		elsif (rising_edge(clk40_i)) then
			if (s_dtack < "111111111") then
				s_dtack <= s_dtack + 1;
			end if;
		end if;
	end process;

	s_fc <= fc_i(0) AND fc_i(1) AND fc_i(2);
	s_addrsel <= '1' WHEN s_fc = '0' ELSE '1';
	s_size(0) <= siz0_i;
	s_size(1) <= siz1_i;

--                  	                                        322222222221111111111
--                	                                            09876543210987654321098
	s_rom 		<= '1' WHEN s_addrsel = '1' AND (std_match(a_i, "10000000000------------") OR bootrom_i = '0') ELSE '0';	-- $40000000 - $400FFFFF
	s_dram 		<= '1' WHEN s_addrsel = '1' AND std_match(a_i, "0----------------------") ELSE '0';	-- $40000000 - $400FFFFF
	s_sram 		<= '1' WHEN s_addrsel = '1' AND std_match(a_i, "10000000001------------") ELSE '0';	-- $40100000 - $401FFFFF
	s_duart		<= '1' WHEN s_addrsel = '1' AND std_match(a_i, "10000000010000000000000") ELSE '0';	-- $40200000 - $402000FF
	s_kbd		<= '1' WHEN s_addrsel = '1' AND std_match(a_i, "10000000010000000000001") ELSE '0';	-- $40200100 - $402001FF
	s_ide		<= '1' WHEN s_addrsel = '1' AND std_match(a_i, "10000000010000000000010") ELSE '0';	-- $40200200 - $402002FF
	s_rtc		<= '1' WHEN s_addrsel = '1' AND std_match(a_i, "10000000010000000000011") ELSE '0';	-- $40200300 - $402003FF
	s_eth		<= '1' WHEN s_addrsel = '1' AND std_match(a_i, "10000000010000000000100") ELSE '0';	-- $40200400 - $402004FF
	s_status	<= '1' WHEN s_addrsel = '1' AND std_match(a_i, "10000000010000000000101") ELSE '0';	-- $40200500
	s_exp1		<= '1' WHEN s_addrsel = '1' AND std_match(a_i, "10000000010000000000110") ELSE '0';	-- $40200600 - $402006FF
	s_exp2		<= '1' WHEN s_addrsel = '1' AND std_match(a_i, "10000000010000000000111") ELSE '0';	-- $40200700 - $402007FF
	s_exp3		<= '1' WHEN s_addrsel = '1' AND std_match(a_i, "10000000010000000001000") ELSE '0';	-- $40200800 - $402008FF
	s_exp4		<= '1' WHEN s_addrsel = '1' AND std_match(a_i, "10000000010000000001001") ELSE '0';	-- $40200900 - $402009FF
	s_exdata1	<= '1' WHEN s_addrsel = '1' AND std_match(a_i, "10000000011------------") ELSE '0';	-- $40300000 - $403FFFFF
	s_exdata2	<= '1' WHEN s_addrsel = '1' AND std_match(a_i, "10000000100------------") ELSE '0';	-- $40400000 - $404FFFFF
	s_exdata3	<= '1' WHEN s_addrsel = '1' AND std_match(a_i, "10000000101------------") ELSE '0';	-- $40500000 - $405FFFFF
	s_exdata4	<= '1' WHEN s_addrsel = '1' AND std_match(a_i, "10000000110------------") ELSE '0';	-- $40600000 - $406FFFFF
	s_exdata5	<= '1' WHEN s_addrsel = '1' AND std_match(a_i, "10100------------------") ELSE '0';	-- $50000000 - $53FFFFFF
	s_exdata6	<= '1' WHEN s_addrsel = '1' AND std_match(a_i, "10101------------------") ELSE '0';	-- $54000000 - $57FFFFFF
	s_exdata7	<= '1' WHEN s_addrsel = '1' AND std_match(a_i, "10110------------------") ELSE '0';	-- $58000000 - $5BFFFFFF
	s_exdata8	<= '1' WHEN s_addrsel = '1' AND std_match(a_i, "10111------------------") ELSE '0';	-- $5C000000 - $5FFFFFFF
	s_fpu	    <= '1' WHEN fc_i = "111"    AND std_match(a_i, "-----------0010--------") ELSE '0';
	
	run_o <= '1';

	-- Map the expansion selects into an array
	s_expselect(0) <= s_exp1;
	s_expselect(1) <= s_exp2;
	s_expselect(2) <= s_exp3;
	s_expselect(3) <= s_exp4;
	s_expselect(4) <= s_exdata1 OR s_exdata5;
	s_expselect(5) <= s_exdata2 OR s_exdata6;
	s_expselect(6) <= s_exdata3 OR s_exdata7;
	s_expselect(7) <= s_exdata4 OR s_exdata8;

	-- Generate the 8-3 decoder for the expansion select
	expsel_o <= "000" WHEN s_expselect(0) = '1' ELSE
				"001" WHEN s_expselect(1) = '1' ELSE
				"010" WHEN s_expselect(2) = '1' ELSE
				"011" WHEN s_expselect(3) = '1' ELSE
				"100" WHEN s_expselect(4) = '1' ELSE
				"101" WHEN s_expselect(5) = '1' ELSE
				"110" WHEN s_expselect(6) = '1' ELSE
				"111" WHEN s_expselect(7) = '1' ELSE
				"000";
				

	s_expselected <= s_exp1	OR s_exp2 OR s_exp3 OR s_exp4 OR
	                 s_exdata1 OR s_exdata2 OR s_exdata3 OR s_exdata4 OR
					 s_exdata5 OR s_exdata6 OR s_exdata7 OR s_exdata8;

	s_width8 <= s_kbd OR s_rtc OR s_status OR s_duart;
	s_width16 <= s_rom OR s_sram OR s_ide;

	-- Set the chip select signals 
	cs_dram_o <= '0' WHEN s_dram = '1' ELSE '1';
	cs_rom_o <= '0' WHEN (s_rom = '1' OR bootrom_i = '0') ELSE '1';
	cs_sram_o <= '0' WHEN s_sram = '1' ELSE '1';

	cs_duart_o <= '0' WHEN s_duart = '1' ELSE '1';	
	cs_kbd_o <= '0' WHEN s_kbd = '1' ELSE '1';	
	cs_ide_o <= '0' WHEN s_ide = '1' ELSE '1';	
	cs_rtc_o <= '0' WHEN s_rtc = '1' ELSE '1';	
	cs_eth_o <= '0' WHEN s_eth = '1' ELSE '1';	

	cs_interrupt_o <= '0' WHEN s_status = '1' AND a1_i = '0' AND a0_i = '0' ELSE '1';
	cs_status_o    <= '0' WHEN s_status = '1' AND a1_i = '0' AND a0_i = '1' ELSE '1';
	cs_cardprd_o   <= '0' WHEN s_status = '1' AND a1_i = '1' AND a0_i = '0' ELSE '1';

	expsel_en_o <= '0' WHEN s_expselected = '1' ELSE '1';
	cs_fpu_o <= '0' WHEN s_fpu = '1' ELSE '1';

	-- Set LDS and UDS signals
	lds_o <= '0' WHEN s_expselected = '1' AND s_size /= "01" ELSE '1';
	uds_o <= '0' WHEN s_expselected = '1' ELSE '1';

	-- Generate DTACK signals
	-- For expansion slots allow time for board to respond 
	s_dtack_exp <= "10" WHEN s_expselected = '1' AND s_size = "01" AND (dtack_i = '0' OR s_dtack > "001010000") ELSE
	               "01" WHEN s_expselected = '1' AND s_size = "10" AND (dtack_i = '0' OR s_dtack > "001010000") ELSE
	               "00" WHEN s_expselected = '1' AND s_size = "11" AND (dtack_i = '0' OR s_dtack > "001010000") ELSE
	               "00" WHEN s_expselected = '1' AND s_size = "00" AND (dtack_i = '0' OR s_dtack > "001010000") ELSE
				   "11";

	s_dtack8    <= "10" WHEN s_width8 = '1' AND s_dtack > "000000100" ELSE "11";

	s_dtack16   <= "10" WHEN s_width16 = '1' AND s_size = "01" AND s_dtack > "000000100" ELSE
	               "01" WHEN s_width16 = '1' AND s_size = "10" AND s_dtack > "000000100" ELSE
	               "01" WHEN s_width16 = '1' AND s_size = "11" AND s_dtack > "000000100" ELSE
	               "01" WHEN s_width16 = '1' AND s_size = "00" AND s_dtack > "000000100" ELSE
				   "11";

	dsack0_o	<= s_dtack_exp(0) AND s_dtack8(0) AND s_dtack16(0);
	dsack1_o	<= s_dtack_exp(1) AND s_dtack8(1) AND s_dtack16(1);
	
	-- Check for bus error
	buserr_o <= s_rom OR s_dram OR s_sram OR s_duart OR s_kbd OR s_rtc OR
	         	s_eth OR s_status OR s_exp1 OR s_exp2 OR s_exp3 OR s_exp4 OR
				s_exdata1 OR s_exdata2 OR s_exdata3 OR s_exdata4 OR s_exdata5 OR
				s_exdata6 OR s_exdata7 OR s_exdata8 OR s_fpu;
				
	
	

end Behavioral;

