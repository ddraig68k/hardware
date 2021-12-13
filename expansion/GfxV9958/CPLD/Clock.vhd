LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;
USE IEEE.NUMERIC_STD.ALL;

entity Clock is
    Port ( clk_i 			: in STD_LOGIC;
			  clk_div2_o	: out STD_LOGIC;
           clk_div4_o 	: out STD_LOGIC;
           clk_div8_o 	: out STD_LOGIC);
end Clock;

architecture Behavioral of Clock is
	signal s_clk_divider : STD_LOGIC_VECTOR(3 downto 0) := (others => '0');
begin
	process(clk_i)
	begin
		if (rising_edge(clk_i)) then
			s_clk_divider <= s_clk_divider + 1;
		end if;
	end process;
	
	clk_div2_o <= s_clk_divider(0);
	clk_div4_o <= s_clk_divider(1);
	clk_div8_o <= s_clk_divider(2);
	
end Behavioral;

