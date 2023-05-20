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
		CLOCK_40MHZ_IP 		: in  STD_LOGIC;
		CLOCK_10MHZ_OP 		: out  STD_LOGIC;

		ADDR_IP				: in  STD_LOGIC_VECTOR (30 downto 8);
		ADDR_1_IP			: in  STD_LOGIC;
		ADDR_0_IP			: in  STD_LOGIC;
		FC_IP 				: in  STD_LOGIC_VECTOR (2 downto 0);
		BOOTROM_IP			: in  STD_LOGIC;

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

	signal s_clk_20mhz		: std_logic;
	signal s_clk_10mhz		: std_logic;
	signal s_buserr			: std_logic;

begin

	ClkGen: entity work.Clock port map(clk_i => CLOCK_40MHZ_IP, clk20_o => s_clk_20mhz, clk10_o => s_clk_10mhz);


	Decode: entity work.AddressDecode port map(
		clk40_i => CLOCK_40MHZ_IP, a_i => ADDR_IP,
		a1_i => ADDR_1_IP, a0_i => ADDR_0_IP,
        as_i => AS_nIP, fc_i => FC_IP,
        bootrom_i => BOOTROM_IP,
		rw_i => RW_IP, siz0_i => SIZ0_IP, siz1_i => SIZ1_IP,
		dsack0_o => CPLD_DSACK0_nOP, dsack1_o => CPLD_DSACK1_nOP,
		dtack_i => EXT_DTACK_nIP, lds_o => LDS_nOP, uds_o => UDS_nOP,
		cs_rom_o => CS_ROM_nOP, 
		cs_sram_o => CS_SRAM_nOP,
		cs_dram_o => CS_DRAM_nOP,
		cs_fpu_o => CS_FPU_nOP,
		cs_duart_o => CS_DUART_nOP,
		cs_eth_o => CS_ETH_nOP,
		cs_kbd_o => CS_KBD_nOP,
		cs_rtc_o => CS_RTC_nOP,
		cs_ide_o => CS_IDE_nOP,
		cs_interrupt_o => CS_INTERRUPT_nOP,
		cs_cardprd_o => CS_CARDPRD_nOP,
		cs_status_o => CS_STATUS_nOP,
		expsel_o => EXPSEL_OP,
		expsel_en_o => EXPSELEN_OP,
		buserr_o => s_buserr,
		run_o => RUN_OP
		);

	CLOCK_10MHZ_OP <= s_clk_10mhz;
	
	BERR_nOP <= '0' WHEN s_buserr = '0' OR EXT_BERR_nIP = '0' else '1';
	

end Behavioral;

