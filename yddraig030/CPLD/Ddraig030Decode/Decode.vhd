----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:54:51 09/02/2022 
-- Design Name: 
-- Module Name:    Decode - Behavioral 
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

entity Decode is
    Port (
		CLOCK_40MHZ_IP 		: out  STD_LOGIC;
		CLOCK_10MHZ_OP 		: out  STD_LOGIC;

		ADDR_IP				: in  STD_LOGIC_VECTOR (30 downto 8);
		ADDR_1_IP			: in  STD_LOGIC;
		ADDR_0_IP			: in  STD_LOGIC;
		FC_IP 				: in  STD_LOGIC_VECTOR (2 downto 0);


		RW_IP 				: in  STD_LOGIC;
		AS_nIP 				: in  STD_LOGIC;
		DS_nIP 				: in  STD_LOGIC;
		SIZ1_IP 			: in  STD_LOGIC;
		SIZ0_IP 			: in  STD_LOGIC;

		AVEC_nOP 			: out  STD_LOGIC;
		CIIN_nOP 			: out  STD_LOGIC;

		BERR_nOP 			: out  STD_LOGIC;
		VMA_nOP 			: out  STD_LOGIC;
		IPEND_nIP 			: in  STD_LOGIC;

		CPLD_DSACK0_nOP 	: out  STD_LOGIC;
		CPLD_DSACK1_nOP 	: out  STD_LOGIC;
		DTACK_DUART_nIP 	: in  STD_LOGIC;

		EXPSEL_OP 			: out  STD_LOGIC_VECTOR (2 downto 0);
		EXPSELEN_OP 		: out  STD_LOGIC;

		EXT_DTACK_nIP 		: in  STD_LOGIC;
		EXT_BERR_nIP 		: in  STD_LOGIC;
		EXT_DBEN_nOP 		: out  STD_LOGIC;
		UDS_nOP 			: out  STD_LOGIC;
		LDS_nOP 			: out  STD_LOGIC;

		CS_DRAM_nOP 		: out  STD_LOGIC;
		CS_SRAM_nOP 		: out  STD_LOGIC;
		CS_ROM_nOP 			: out  STD_LOGIC;
		CS_INTERRUPT_nOP 	: out  STD_LOGIC;
		CS_IDE_nOP 			: out  STD_LOGIC;
		CS_RTC_nOP 			: out  STD_LOGIC;
		CS_KBD_nOP 			: out  STD_LOGIC;
		CS_ETH_nOP 			: out  STD_LOGIC;
		CS_DUART_nOP 		: out  STD_LOGIC;
		CS_CARDPRD_nOP 		: out  STD_LOGIC;
		CS_FPU_nOP 			: out  STD_LOGIC;
		CS_STATUS_nOP 		: out  STD_LOGIC;
		
		RUN_OP 				: out  STD_LOGIC
	);
end Decode;

architecture Behavioral of Decode is

begin
	RUN_OP <= '1';

end Behavioral;

