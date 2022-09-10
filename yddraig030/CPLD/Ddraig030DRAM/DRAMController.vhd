----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:18:46 09/02/2022 
-- Design Name: 
-- Module Name:    DRAMController - Behavioral 
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
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity DRAMController is
    Port (
		CPUCLK_IP 		: in STD_LOGIC;
		RESET_nIP		: in STD_LOGIC;

		ADDR_IP			: in STD_LOGIC_VECTOR (28 downto 0);
		SIZ0_IP			: in STD_LOGIC;
		SIZ1_IP			: in STD_LOGIC;
		
		RW_Ip 			: in STD_LOGIC;
		AS_nIP			: in STD_LOGIC;
		DS_nIP			: in STD_LOGIC;
		CS_DRAM_nIP		: in STD_LOGIC;
		CBREQ_IP		: in STD_LOGIC;

		CBACK_nOP		: out STD_LOGIC;
		DSACK0_nOP		: out STD_LOGIC;
		DSACK1_nOP		: out STD_LOGIC;
		STERM_nOP		: out STD_LOGIC;
		
		MUX_A_OP		: out STD_LOGIC_VECTOR (11 downto 0);
		RAS_OP			: out STD_LOGIC_VECTOR (3 downto 0);
		CAS_A_OP		: out STD_LOGIC_VECTOR (3 downto 0);
		CAS_B_OP		: out STD_LOGIC_VECTOR (3 downto 0);
		DRAM_WE_nOP		: out STD_LOGIC

	);
end DRAMController;

architecture Behavioral of DRAMController is

begin


end Behavioral;

