--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   14:49:15 05/13/2023
-- Design Name:   
-- Module Name:   /home/steve/CPLD/Ddraig030Decode/tb_decode_test.vhd
-- Project Name:  Ddraig030Decode
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Decode
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY tb_decode_test IS
END tb_decode_test;
 
ARCHITECTURE behavior OF tb_decode_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Decode
    PORT(
         CLOCK_40MHZ_IP : IN  std_logic;
         CLOCK_10MHZ_OP : OUT  std_logic;
         ADDR_IP : IN  std_logic_vector(30 downto 8);
         ADDR_1_IP : IN  std_logic;
         ADDR_0_IP : IN  std_logic;
         FC_IP : IN  std_logic_vector(2 downto 0);
         BOOTROM_IP : IN  std_logic;
         RW_IP : IN  std_logic;
         AS_nIP : IN  std_logic;
         DS_nIP : IN  std_logic;
         SIZ1_IP : IN  std_logic;
         SIZ0_IP : IN  std_logic;
         AVEC_nOP : OUT  std_logic;
         CIIN_nOP : OUT  std_logic;
         BERR_nOP : OUT  std_logic;
         VMA_nOP : OUT  std_logic;
         IPEND_nIP : IN  std_logic;
         CPLD_DSACK0_nOP : OUT  std_logic;
         CPLD_DSACK1_nOP : OUT  std_logic;
         DTACK_DUART_nIP : IN  std_logic;
         EXPSEL_OP : OUT  std_logic_vector(2 downto 0);
         EXPSELEN_OP : OUT  std_logic;
         EXT_DTACK_nIP : IN  std_logic;
         EXT_BERR_nIP : IN  std_logic;
         EXT_DBEN_nOP : OUT  std_logic;
         UDS_nOP : OUT  std_logic;
         LDS_nOP : OUT  std_logic;
         CS_DRAM_nOP : OUT  std_logic;
         CS_SRAM_nOP : OUT  std_logic;
         CS_ROM_nOP : OUT  std_logic;
         CS_INTERRUPT_nOP : OUT  std_logic;
         CS_IDE_nOP : OUT  std_logic;
         CS_RTC_nOP : OUT  std_logic;
         CS_KBD_nOP : OUT  std_logic;
         CS_ETH_nOP : OUT  std_logic;
         CS_DUART_nOP : OUT  std_logic;
         CS_CARDPRD_nOP : OUT  std_logic;
         CS_FPU_nOP : OUT  std_logic;
         CS_STATUS_nOP : OUT  std_logic;
         RUN_OP : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal CLOCK_40MHZ_IP : std_logic := '0';
   signal ADDR_IP : std_logic_vector(30 downto 8) := (others => '0');
   signal ADDR_1_IP : std_logic := '0';
   signal ADDR_0_IP : std_logic := '0';
   signal FC_IP : std_logic_vector(2 downto 0) := (others => '0');
   signal BOOTROM_IP : std_logic := '0';
   signal RW_IP : std_logic := '1';
   signal AS_nIP : std_logic := '1';
   signal DS_nIP : std_logic := '1';
   signal SIZ1_IP : std_logic := '0';
   signal SIZ0_IP : std_logic := '0';
   signal RESET_nIP : std_logic := '1';
   signal IPEND_nIP : std_logic := '1';
   signal DTACK_DUART_nIP : std_logic := '1';
   signal EXT_DTACK_nIP : std_logic := '1';
   signal EXT_BERR_nIP : std_logic := '1';

 	--Outputs
   signal CLOCK_10MHZ_OP : std_logic;
   signal AVEC_nOP : std_logic;
   signal CIIN_nOP : std_logic;
   signal BERR_nOP : std_logic;
   signal VMA_nOP : std_logic;
   signal CPLD_DSACK0_nOP : std_logic;
   signal CPLD_DSACK1_nOP : std_logic;
   signal EXPSEL_OP : std_logic_vector(2 downto 0);
   signal EXPSELEN_OP : std_logic;
   signal EXT_DBEN_nOP : std_logic;
   signal UDS_nOP : std_logic;
   signal LDS_nOP : std_logic;
   signal CS_DRAM_nOP : std_logic;
   signal CS_SRAM_nOP : std_logic;
   signal CS_ROM_nOP : std_logic;
   signal CS_INTERRUPT_nOP : std_logic;
   signal CS_IDE_nOP : std_logic;
   signal CS_RTC_nOP : std_logic;
   signal CS_KBD_nOP : std_logic;
   signal CS_ETH_nOP : std_logic;
   signal CS_DUART_nOP : std_logic;
   signal CS_CARDPRD_nOP : std_logic;
   signal CS_FPU_nOP : std_logic;
   signal CS_STATUS_nOP : std_logic;
   signal RUN_OP : std_logic;

   -- Clock period definitions
   constant CLOCK_40MHZ_IP_period : time := 25 ns;
 
	constant addr_dram 	   	: std_logic_vector(30 downto 8) := "000" & X"00000";
	constant addr_rom 	    : std_logic_vector(30 downto 8) := "100" & X"00000";
	constant addr_sram0	   	: std_logic_vector(30 downto 8) := "100" & X"01000";
	constant addr_sram1	   	: std_logic_vector(30 downto 8) := "100" & X"01001";
	constant addr_sram2	   	: std_logic_vector(30 downto 8) := "100" & X"01010";
	constant addr_duart 	: std_logic_vector(30 downto 8) := "100" & X"02000";
	constant addr_kbd 	   	: std_logic_vector(30 downto 8) := "100" & X"02001";
	constant addr_ide 	   	: std_logic_vector(30 downto 8) := "100" & X"02002";
	constant addr_rtc 	   	: std_logic_vector(30 downto 8) := "100" & X"02003";
	constant addr_eth 	   	: std_logic_vector(30 downto 8) := "100" & X"02004";
	constant addr_status	: std_logic_vector(30 downto 8) := "100" & X"02005";
	constant addr_ext1	   	: std_logic_vector(30 downto 8) := "100" & X"02006";
	constant addr_ext2	   	: std_logic_vector(30 downto 8) := "100" & X"02007";
	constant addr_ext3	   	: std_logic_vector(30 downto 8) := "100" & X"02008";
	constant addr_ext4	   	: std_logic_vector(30 downto 8) := "100" & X"02009";
	constant addr_extdata1	: std_logic_vector(30 downto 8) := "100" & X"03000";
	constant addr_extdata2	: std_logic_vector(30 downto 8) := "100" & X"04000";
	constant addr_extdata3	: std_logic_vector(30 downto 8) := "100" & X"05000";
	constant addr_extdata4	: std_logic_vector(30 downto 8) := "100" & X"06000";
	constant addr_extdata5	: std_logic_vector(30 downto 8) := "101" & X"00000";
	constant addr_extdata6	: std_logic_vector(30 downto 8) := "101" & X"40000";
	constant addr_extdata7	: std_logic_vector(30 downto 8) := "101" & X"80000";
	constant addr_extdata8	: std_logic_vector(30 downto 8) := "101" & X"C0000";
	constant addr_invalid	: std_logic_vector(30 downto 8) := "110" & X"00000"; 

   constant size_byte      : std_logic_vector(1 downto 0) := "01";
   constant size_word      : std_logic_vector(1 downto 0) := "10";
   constant size_byte3     : std_logic_vector(1 downto 0) := "11";
   constant size_long      : std_logic_vector(1 downto 0) := "00";
   
   constant fc_data        : std_logic_vector(2 downto 0) := "111";
   constant fc_fpu         : std_logic_vector(2 downto 0) := "101";

 	procedure test_data (
		address		            : in std_logic_vector(30 downto 8);
      size                    : in std_logic_vector(1 downto 0);
		signal ADDR_IP	         : out std_logic_vector(30 downto 8);
		signal RW_IP	         : out std_logic;
		signal AS_nIP	         : out std_logic;
		signal SIZ0_IP	         : out std_logic;
		signal SIZ1_IP	         : out std_logic;
		signal CPLD_DSACK0_nOP  : in std_logic;
		signal CPLD_DSACK1_nOP  : in std_logic
			) is
	begin
		ADDR_IP <= address;
		RW_IP <= '0';
      AS_nIP <= '0';
      SIZ0_IP <= size(0);
      SIZ1_IP <= size(1);
		wait for 25 ns;
		wait until CPLD_DSACK0_nOP = '0' OR CPLD_DSACK1_nOP = '0';
		wait for 100 ns;
		RW_IP <= '1';
		AS_nIP <= '1';
		wait for 100 ns;
	end test_data;

BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Decode PORT MAP (
          CLOCK_40MHZ_IP => CLOCK_40MHZ_IP,
          CLOCK_10MHZ_OP => CLOCK_10MHZ_OP,
          ADDR_IP => ADDR_IP,
          ADDR_1_IP => ADDR_1_IP,
          ADDR_0_IP => ADDR_0_IP,
          FC_IP => FC_IP,
          BOOTROM_IP => BOOTROM_IP,
          RW_IP => RW_IP,
          AS_nIP => AS_nIP,
          DS_nIP => DS_nIP,
          SIZ1_IP => SIZ1_IP,
          SIZ0_IP => SIZ0_IP,
          AVEC_nOP => AVEC_nOP,
          CIIN_nOP => CIIN_nOP,
          BERR_nOP => BERR_nOP,
          VMA_nOP => VMA_nOP,
          IPEND_nIP => IPEND_nIP,
          CPLD_DSACK0_nOP => CPLD_DSACK0_nOP,
          CPLD_DSACK1_nOP => CPLD_DSACK1_nOP,
          DTACK_DUART_nIP => DTACK_DUART_nIP,
          EXPSEL_OP => EXPSEL_OP,
          EXPSELEN_OP => EXPSELEN_OP,
          EXT_DTACK_nIP => EXT_DTACK_nIP,
          EXT_BERR_nIP => EXT_BERR_nIP,
          EXT_DBEN_nOP => EXT_DBEN_nOP,
          UDS_nOP => UDS_nOP,
          LDS_nOP => LDS_nOP,
          CS_DRAM_nOP => CS_DRAM_nOP,
          CS_SRAM_nOP => CS_SRAM_nOP,
          CS_ROM_nOP => CS_ROM_nOP,
          CS_INTERRUPT_nOP => CS_INTERRUPT_nOP,
          CS_IDE_nOP => CS_IDE_nOP,
          CS_RTC_nOP => CS_RTC_nOP,
          CS_KBD_nOP => CS_KBD_nOP,
          CS_ETH_nOP => CS_ETH_nOP,
          CS_DUART_nOP => CS_DUART_nOP,
          CS_CARDPRD_nOP => CS_CARDPRD_nOP,
          CS_FPU_nOP => CS_FPU_nOP,
          CS_STATUS_nOP => CS_STATUS_nOP,
          RUN_OP => RUN_OP
        );

   -- Clock process definitions
   CLOCK_40MHZ_IP_process :process
   begin
		CLOCK_40MHZ_IP <= '0';
		wait for CLOCK_40MHZ_IP_period/2;
		CLOCK_40MHZ_IP <= '1';
		wait for CLOCK_40MHZ_IP_period/2;
   end process;
 


   -- Stimulus process
   stim_proc: process
   begin		
      -- Set the inital instrument states
      FC_IP <= fc_data;

      -- hold reset state for 100 ns.
      wait for 100 ns;	

      -- Test the bootrom code
      BOOTROM_IP <= '0';
 	   test_data(addr_dram, size_long, ADDR_IP, RW_IP, AS_nIP, SIZ0_IP, SIZ1_IP, CPLD_DSACK0_nOP, CPLD_DSACK1_nOP);
	   wait for 25 ns;	
 	   test_data(addr_dram, size_long, ADDR_IP, RW_IP, AS_nIP, SIZ0_IP, SIZ1_IP, CPLD_DSACK0_nOP, CPLD_DSACK1_nOP);
	   wait for 50 ns;	
      BOOTROM_IP <= '1';

      -- Test the dram access
 	  -- test_data(addr_dram, size_long, ADDR_IP, RW_IP, AS_nIP, SIZ0_IP, SIZ1_IP, CPLD_DSACK0_nOP, CPLD_DSACK1_nOP);
      -- wait for 25 ns;	

      -- Test the sram access
 	   test_data(addr_sram0, size_long, ADDR_IP, RW_IP, AS_nIP, SIZ0_IP, SIZ1_IP, CPLD_DSACK0_nOP, CPLD_DSACK1_nOP);
      wait for 25 ns;	
      -- Test the sram access
 	   test_data(addr_sram1, size_word, ADDR_IP, RW_IP, AS_nIP, SIZ0_IP, SIZ1_IP, CPLD_DSACK0_nOP, CPLD_DSACK1_nOP);
      wait for 25 ns;	
      -- Test the sram access
 	   test_data(addr_sram2, size_byte, ADDR_IP, RW_IP, AS_nIP, SIZ0_IP, SIZ1_IP, CPLD_DSACK0_nOP, CPLD_DSACK1_nOP);
      wait for 25 ns;	

      -- Test the rom access
 	   test_data(addr_rom, size_long, ADDR_IP, RW_IP, AS_nIP, SIZ0_IP, SIZ1_IP, CPLD_DSACK0_nOP, CPLD_DSACK1_nOP);
      wait for 25 ns;	

      -- Test the duart access
 	   test_data(addr_duart, size_byte, ADDR_IP, RW_IP, AS_nIP, SIZ0_IP, SIZ1_IP, CPLD_DSACK0_nOP, CPLD_DSACK1_nOP);
      wait for 25 ns;	

      -- Test the duart word access
 	   test_data(addr_duart, size_word, ADDR_IP, RW_IP, AS_nIP, SIZ0_IP, SIZ1_IP, CPLD_DSACK0_nOP, CPLD_DSACK1_nOP);
      wait for 25 ns;	

      -- Test the keyboard access
 	   test_data(addr_kbd, size_byte, ADDR_IP, RW_IP, AS_nIP, SIZ0_IP, SIZ1_IP, CPLD_DSACK0_nOP, CPLD_DSACK1_nOP);
      wait for 25 ns;	

      -- Test the ide access
 	   test_data(addr_ide, size_word, ADDR_IP, RW_IP, AS_nIP, SIZ0_IP, SIZ1_IP, CPLD_DSACK0_nOP, CPLD_DSACK1_nOP);
      wait for 25 ns;	

      -- Test the rtc access
 	   test_data(addr_rtc, size_byte, ADDR_IP, RW_IP, AS_nIP, SIZ0_IP, SIZ1_IP, CPLD_DSACK0_nOP, CPLD_DSACK1_nOP);
      wait for 25 ns;	

      -- Test the eth access
 	   test_data(addr_ide, size_word, ADDR_IP, RW_IP, AS_nIP, SIZ0_IP, SIZ1_IP, CPLD_DSACK0_nOP, CPLD_DSACK1_nOP);
      wait for 25 ns;	

      -- Test the interrupt flag access
 	   test_data(addr_status, size_byte, ADDR_IP, RW_IP, AS_nIP, SIZ0_IP, SIZ1_IP, CPLD_DSACK0_nOP, CPLD_DSACK1_nOP);
      wait for 25 ns;	

      -- Test the card present access
      ADDR_0_IP <= '1';
 	   test_data(addr_status, size_byte, ADDR_IP, RW_IP, AS_nIP, SIZ0_IP, SIZ1_IP, CPLD_DSACK0_nOP, CPLD_DSACK1_nOP);
      wait for 25 ns;	

      -- Test the status flag access
      ADDR_0_IP <= '0';
      ADDR_1_IP <= '1';
 	   test_data(addr_status, size_byte, ADDR_IP, RW_IP, AS_nIP, SIZ0_IP, SIZ1_IP, CPLD_DSACK0_nOP, CPLD_DSACK1_nOP);
      wait for 25 ns;	
      ADDR_0_IP <= '0';
      ADDR_1_IP <= '0';

      -- Test the expantion slot 1 register access
 	   test_data(addr_ext1, size_byte, ADDR_IP, RW_IP, AS_nIP, SIZ0_IP, SIZ1_IP, CPLD_DSACK0_nOP, CPLD_DSACK1_nOP);
      wait for 25 ns;	

      -- Test the expantion slot 2 register access
 	   test_data(addr_ext2, size_word, ADDR_IP, RW_IP, AS_nIP, SIZ0_IP, SIZ1_IP, CPLD_DSACK0_nOP, CPLD_DSACK1_nOP);
      wait for 25 ns;	

      -- Test the expantion slot 3 register access
 	   test_data(addr_ext3, size_byte3, ADDR_IP, RW_IP, AS_nIP, SIZ0_IP, SIZ1_IP, CPLD_DSACK0_nOP, CPLD_DSACK1_nOP);
      wait for 25 ns;	

      -- Test the expantion slot 4 register access
 	   test_data(addr_ext4, size_long, ADDR_IP, RW_IP, AS_nIP, SIZ0_IP, SIZ1_IP, CPLD_DSACK0_nOP, CPLD_DSACK1_nOP);
      wait for 25 ns;	

      -- Test the expantion slot 1 data access
 	   test_data(addr_extdata1, size_byte, ADDR_IP, RW_IP, AS_nIP, SIZ0_IP, SIZ1_IP, CPLD_DSACK0_nOP, CPLD_DSACK1_nOP);
      wait for 25 ns;	

      -- Test the expantion slot 2 data access
 	   test_data(addr_extdata2, size_word, ADDR_IP, RW_IP, AS_nIP, SIZ0_IP, SIZ1_IP, CPLD_DSACK0_nOP, CPLD_DSACK1_nOP);
      wait for 25 ns;	

      -- Test the expantion slot 3 data access
 	   test_data(addr_extdata3, size_byte3, ADDR_IP, RW_IP, AS_nIP, SIZ0_IP, SIZ1_IP, CPLD_DSACK0_nOP, CPLD_DSACK1_nOP);
      wait for 25 ns;	

      -- Test the expantion slot 4 data access
 	   test_data(addr_extdata4, size_long, ADDR_IP, RW_IP, AS_nIP, SIZ0_IP, SIZ1_IP, CPLD_DSACK0_nOP, CPLD_DSACK1_nOP);
      wait for 25 ns;	

      -- Test the expantion slot 1 extended data access
 	   test_data(addr_extdata5, size_byte, ADDR_IP, RW_IP, AS_nIP, SIZ0_IP, SIZ1_IP, CPLD_DSACK0_nOP, CPLD_DSACK1_nOP);
      wait for 25 ns;	

      -- Test the expantion slot 2 extended data access
 	   test_data(addr_extdata6, size_word, ADDR_IP, RW_IP, AS_nIP, SIZ0_IP, SIZ1_IP, CPLD_DSACK0_nOP, CPLD_DSACK1_nOP);
      wait for 25 ns;	

      -- Test the expantion slot 3 extended data access
 	   test_data(addr_extdata7, size_byte3, ADDR_IP, RW_IP, AS_nIP, SIZ0_IP, SIZ1_IP, CPLD_DSACK0_nOP, CPLD_DSACK1_nOP);
      wait for 25 ns;	

      -- Test the expantion slot 4 extended data access
 	   test_data(addr_extdata8, size_long, ADDR_IP, RW_IP, AS_nIP, SIZ0_IP, SIZ1_IP, CPLD_DSACK0_nOP, CPLD_DSACK1_nOP);
      wait for 25 ns;	

      -- Test the Invalid address access
 	   test_data(addr_invalid, size_long, ADDR_IP, RW_IP, AS_nIP, SIZ0_IP, SIZ1_IP, CPLD_DSACK0_nOP, CPLD_DSACK1_nOP);
      wait for 25 ns;	

      -- Test the expansion dtack response
		ADDR_IP <= addr_extdata1;
		RW_IP <= '0';
      AS_nIP <= '0';
		wait for 25 ns;
      EXT_DTACK_nIP <= '0';
		wait for 50 ns;
		RW_IP <= '1';
      AS_nIP <= '1';
      EXT_DTACK_nIP <= '1';
		wait for 100 ns;

      -- Test the Invalid expansion address access
		ADDR_IP <= addr_extdata1;
		RW_IP <= '0';
      AS_nIP <= '0';
		wait for 25 ns;
      EXT_BERR_nIP <= '0';
		wait for 50 ns;
		RW_IP <= '1';
      AS_nIP <= '1';
      EXT_BERR_nIP <= '1';
		wait for 100 ns;
      wait;
   end process;

END;
