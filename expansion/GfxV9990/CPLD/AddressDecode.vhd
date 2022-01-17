----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:56:33 01/17/2022 
-- Design Name: 
-- Module Name:    AddressDecode - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.std_logic_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.std_logic_UNSIGNED.ALL;

entity AddressDecode is
    Port (
		addr 	: in STD_LOGIC_VECTOR(7 downto 1);
        lds 	: in STD_LOGIC;
        uds 	: in STD_LOGIC;
        csreg 	: in STD_LOGIC;
        vdpsel 	: out STD_LOGIC;
        idsel 	: out STD_LOGIC
	);
end AddressDecode;

architecture Behavioral of AddressDecode is

begin

	idsel 	<= '1' WHEN csreg = '0' AND (lds = '0' OR uds = '0') AND addr = "1111111" ELSE '0';
	vdpsel	<= '1' WHEN csreg = '0' AND uds = '0' AND std_match(addr, "0000---") ELSE '0';

end Behavioral;

