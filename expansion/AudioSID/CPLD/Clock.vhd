LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;
USE IEEE.NUMERIC_STD.ALL;

entity Clock is
    Port (
			clk_i 		: in std_logic;
			clk_div8_o 	: out std_logic;
			clk_div10_o : out std_logic
		);
end Clock;

architecture Behavioral of Clock is
	signal s_clk_divider : std_logic_vector(3 downto 0) := (others => '0');
	signal clock_1mhz    : std_logic := '0';
	signal count 		 : std_logic_vector(2 downto 0) := (others => '0');

begin
	process(clk_i)
	begin
		if (rising_edge(clk_i)) then
			s_clk_divider <= s_clk_divider + 1;
			count <= count + 1;
			if (count = "100") then
				count <= "000"; 
				clock_1mhz <= not clock_1mhz;
			end if;
		end if;
	end process;
	
	clk_div8_o <= s_clk_divider(2);
	clk_div10_o <= clock_1mhz;

end Behavioral;

