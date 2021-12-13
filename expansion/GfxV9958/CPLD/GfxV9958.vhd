library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity GfxV9958 is
    port (
		data_io			: inout std_logic_vector(7 downto 0);
		addr_i			: in std_logic_vector(7 downto 1);
        cpuclk_i		: in std_logic;

		csreg_i			: in std_logic;
		csdata_i		: in std_logic;
		reset_i 		: in std_logic;
      	uds_i 			: in std_logic;
      	lds_i 			: in std_logic;
	  	rw_i 			: in std_logic;
			
		wait_i 			: in std_logic;

      	dtack_o 		: out std_logic;

      	vdpw_o 			: out std_logic;
      	vdpr_o 			: out std_logic;	
        led_o			: out std_logic		
	);
end GfxV9958;

architecture Behavioral of GfxV9958 is

	constant BOARD_ID       : std_logic_vector(7 downto 0) := X"11";

	signal s_dtack 		: std_logic_vector(3 downto 0);
	signal s_ledtime	: std_logic_vector(13 downto 0);
	signal s_ack		: std_logic;
	signal s_clk_div	: std_logic;
	
	signal s_vdpw		: std_logic;
	signal s_vdpr		: std_logic;
	signal s_cs_delay	: std_logic;

	component Clock is
		port (
			clk_i 		: in std_logic;
			clk_div2_o	: out std_logic;
			clk_div4_o 	: out std_logic;
			clk_div8_o 	: out std_logic
		);
	end component;


begin
	dtack_gen : process (cpuclk_i, reset_i, csdata_i, csreg_i)
	begin
		if reset_i = '0' or (csdata_i = '1' and csreg_i = '1')  then
			s_dtack <= (others => '0');
		elsif rising_edge(cpuclk_i) then
			if s_dtack < "1111" then
				s_dtack <= s_dtack + 1;
			end if;
		end if;
	end process;

	led_flash : process (s_clk_div, reset_i, csdata_i, csreg_i)
	begin
		if reset_i = '0' or csdata_i = '0' or csreg_i = '0' then
			s_ledtime <= (others => '0');
		elsif rising_edge(s_clk_div) then
			if s_ledtime < "11111111111111" then
				s_ledtime <= s_ledtime + 1;
			end if;
		end if;
	end process;
	
	cs_delay : process(cpuclk_i)
	begin
		s_cs_delay <= csreg_i;
	end process;
	
	ClkGen: Clock port map(clk_i => cpuclk_i, clk_div2_o => OPEN, clk_div4_o => OPEN, clk_div8_o => s_clk_div);

	-- Address decoding
	s_vdpw <= '0' when s_cs_delay = '0' and rw_i = '0' else '1';
	s_vdpr <= '0' when s_cs_delay = '0' and rw_i = '1' else '1';

	s_ack <= '0' when s_dtack > "0110" and (csreg_i = '0' or csreg_i = '0') else '1';
	led_o <= '0' when s_ledtime < "11111111111111" else '1';

	dtack_o <= s_ack;
	
	vdpw_o <= '0' when csreg_i = '0' and addr_i(7 downto 4) = "0000" and s_vdpw = '0' else '1';
	vdpr_o <= '0' when csreg_i = '0' and addr_i(7 downto 4) = "0000" and s_vdpr = '0' else '1';
	
	-- Write out device ID
	data_io <= BOARD_ID when addr_i = "1111111" and uds_i = '0' and csreg_i = '0' else "ZZZZZZZZ";

end Behavioral;

