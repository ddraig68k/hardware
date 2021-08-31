LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.std_logic_UNSIGNED.ALL;
USE IEEE.NUMERIC_STD.ALL;

entity Clock is
    Port (
		clk_i 		: in std_logic;
		clk20_o		: out std_logic;
        clk10_o 	: out std_logic
	);
end Clock;

architecture Behavioral of Clock is
	signal s_clk_divider : std_logic_vector(1 downto 0) := (others => '0');
begin
	process(clk_i)
	begin
		if (rising_edge(clk_i)) then
			s_clk_divider <= s_clk_divider + 1;
		end if;
	end process;
	
	clk20_o <= s_clk_divider(0);
	clk10_o <= s_clk_divider(1);
	
end Behavioral;

