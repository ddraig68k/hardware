--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   15:24:19 09/03/2019
-- Design Name:   
-- Module Name:   C:/Dev/Code/ddraig/CPLD/tb_ddraig_glue.vhd
-- Project Name:  DdraigGlue
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: DdraigGlue
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
 
ENTITY tb_ddraig_glue IS
END tb_ddraig_glue;
 
ARCHITECTURE behavior OF tb_ddraig_glue IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT DdraigGlue
    PORT(
			  a_ip 			: in  STD_LOGIC_VECTOR (23 downto 8);
           clk_ip			: in  STD_LOGIC;
           reset_ip		: in  STD_LOGIC;
           bootrom_ip	: in  STD_LOGIC;
           fc0_ip		   : in  STD_LOGIC;
           fc1_ip			: in  STD_LOGIC;
           fc2_ip			: in  STD_LOGIC;
           as_ip			: in  STD_LOGIC;
           rw_ip			: in  STD_LOGIC;
           lds_ip			: in  STD_LOGIC;
           uds_ip			: in  STD_LOGIC;
           clk10_op		: out  STD_LOGIC;
           dtack_op		: out  STD_LOGIC;
           cs_pit_op		: out  STD_LOGIC;
           cs_kbd_op		: out  STD_LOGIC;
           cs_sram_op	: out  STD_LOGIC;
           cs_rom_op		: out  STD_LOGIC;
           cs_duart_op	: out  STD_LOGIC;
           cs_rtc_op		: out  STD_LOGIC;
           cs_ide_op		: out  STD_LOGIC;
			  cs_data1_op	: out  STD_LOGIC;
		     cs_data2_op	: out  STD_LOGIC;
		     cs_data3_op	: out  STD_LOGIC;
		     cs_data4_op	: out  STD_LOGIC;
		     cs_reg1_op		: out  STD_LOGIC;
		     cs_reg2_op		: out  STD_LOGIC;
		     cs_reg3_op		: out  STD_LOGIC;
		     cs_reg4_op		: out  STD_LOGIC;
			  mux_op			: out  STD_LOGIC;
           dram_we_op	: out  STD_LOGIC;
           ras0_op		: out  STD_LOGIC;
           ras1_op		: out  STD_LOGIC;
           cas0_op		: out  STD_LOGIC;
           cas1_op		: out  STD_LOGIC;
			  ide_wr_op		: out  STD_LOGIC;
			  ide_rd_op		: out  STD_LOGIC;
           ext_lds_op	: out  STD_LOGIC;
           ext_uds_op	: out  STD_LOGIC;
			  vpa_op			: out  STD_LOGIC;
			  buserr_op    : out  STD_LOGIC);
   END COMPONENT;

   --Inputs
   signal a : std_logic_vector(23 downto 8) := (others => '0');
   signal clk : std_logic := '0';
   signal reset : std_logic := '0';
   signal bootrom : std_logic := '0';
   signal fc0 : std_logic := '0';
   signal fc1 : std_logic := '0';
   signal fc2 : std_logic := '0';
   signal as : std_logic := '1';
   signal rw : std_logic := '1';
   signal lds : std_logic := '1';
   signal uds : std_logic := '1';
	signal vdp_wait : std_logic := '1';

 	--Outputs
   signal clk10 : std_logic;
   signal dtack : std_logic;
   signal cs_pit : std_logic;
   signal cs_kbd : std_logic;
   signal cs_sram : std_logic;
   signal cs_rom : std_logic;
   signal cs_duart : std_logic;
   signal cs_rtc : std_logic;
   signal cs_rege : std_logic;
   signal mux : std_logic;
   signal dram_we : std_logic;
   signal ras0 : std_logic;
   signal ras1 : std_logic;
   signal cas0 : std_logic;
   signal cas1 : std_logic;
	signal ext_id1 : std_logic;
	signal ext_id2 : std_logic;
	signal ext_id3 : std_logic;
	signal ext_id4 : std_logic;
	signal ext_data1 : std_logic;
	signal ext_data2 : std_logic;
	signal ext_data3 : std_logic;
	signal ext_data4 : std_logic;
	signal bus_error : std_logic;

   -- Clock period definitions
   constant clk_period : time := 25 ns;
 
	constant addr_zero 	: std_logic_vector(23 downto 8) := X"0000";
	constant addr_rom 	: std_logic_vector(23 downto 8) := X"F900";
	constant addr_sram 	: std_logic_vector(23 downto 8) := X"0001";
	constant addr_duart 	: std_logic_vector(23 downto 8) := X"F7F0";
	constant addr_pit 	: std_logic_vector(23 downto 8) := X"F7F1";
	constant addr_kbd 	: std_logic_vector(23 downto 8) := X"F7F2";
	constant addr_ide 	: std_logic_vector(23 downto 8) := X"F7F3";
	constant addr_rtc 	: std_logic_vector(23 downto 8) := X"F7F4";
	constant addr_inv 	: std_logic_vector(23 downto 8) := X"E000"; 
	constant addr_dram 	: std_logic_vector(23 downto 8) := X"3000";
	constant addr_dram1 	: std_logic_vector(23 downto 8) := X"3001";
	constant addr_dram2 	: std_logic_vector(23 downto 8) := X"3002";
	constant addr_dram3 	: std_logic_vector(23 downto 8) := X"3003";
	constant addr_dram4 	: std_logic_vector(23 downto 8) := X"3004";
	constant addr_dram5 	: std_logic_vector(23 downto 8) := X"3005";

	constant addr_extid1	: std_logic_vector(23 downto 8) := X"F7F5";
	constant addr_extid2	: std_logic_vector(23 downto 8) := X"F7F6";
	constant addr_extid3	: std_logic_vector(23 downto 8) := X"F7F7";
	constant addr_extid4	: std_logic_vector(23 downto 8) := X"F7F8";
	constant addr_ext1	: std_logic_vector(23 downto 8) := X"A000";
	constant addr_ext2	: std_logic_vector(23 downto 8) := X"B000";
	constant addr_ext3	: std_logic_vector(23 downto 8) := X"C000";
	constant addr_ext4	: std_logic_vector(23 downto 8) := X"D000";
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: DdraigGlue PORT MAP (
          a_ip => a,
          clk_ip => clk,
          reset_ip => reset,
          bootrom_ip => bootrom,
          fc0_ip => fc0,
          fc1_ip => fc1,
          fc2_ip => fc2,
          as_ip => as,
          rw_ip => rw,
          lds_ip => lds,
          uds_ip => uds,
          clk10_op => clk10,
          dtack_op => dtack,
          cs_pit_op => cs_pit,
          cs_kbd_op => cs_kbd,
          cs_sram_op => cs_sram,
          cs_rom_op => cs_rom,
          cs_duart_op => cs_duart,
          cs_rtc_op => cs_rtc,
          cs_ide_op => cs_rege,
          mux_op => mux,
          dram_we_op => dram_we,
          ras0_op => ras0,
          ras1_op => ras1,
          cas0_op => cas0,
          cas1_op => cas1,
			 cs_reg1_op => ext_id1,
			 cs_reg2_op => ext_id2,
			 cs_reg3_op => ext_id3,
			 cs_reg4_op => ext_id4,
			 cs_data1_op => ext_data1,
			 cs_data2_op => ext_data2,
			 cs_data3_op => ext_data3,
			 cs_data4_op => ext_data4,
			 buserr_op => bus_error
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 
   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 200 ns;	
		reset <= '1';
		wait for 50ns;

		-- Initial read from the rom on boot instead of address 0
		bootrom <= '0';
		
		wait on clk10 until clk10 = '1';
		report("Testing ROM boot read");
		a 	<= addr_zero;
		as <= '0';
		lds <='0';
		uds <= '0';
		wait for 300ns;		-- No DTACK signal
		wait on clk10 until clk10 = '1';
		lds <='1';
		uds <= '1';
		bootrom <= '1';
		as <= '1';
		wait for 50ns;

		-- Read from an address in the rom
		wait on clk10 until clk10 = '1';
		report("Testing ROM read");
		a 	<= addr_rom;
		as <= '0';
		lds <='0';
		uds <= '0';
		wait for 300ns;
		wait on clk10 until clk10 = '1';
		lds <='1';
		uds <= '1';
		as <= '1';
		wait for 50ns;
		
		-- Read from an address in the static ram
		wait on clk10 until clk10 = '1';
		report("Testing SRAM read");
		a 	<= addr_sram;
		as <= '0';
		lds <='0';
		uds <= '0';
		wait on dtack until dtack = '0';
		wait on clk10 until clk10 = '1';
		lds <='1';
		uds <= '1';
		as <= '1';
		wait for 50ns;

		-- Write to an address in the static ram
		wait on clk10 until clk10 = '1';
		report("Testing SRAM write");
		a 	<= addr_sram;
		as <= '0';
		lds <='0';
		uds <= '0';
		rw <= '0';
		wait on dtack until dtack = '0';
		wait on clk10 until clk10 = '1';
		rw <= '1';
		lds <='1';
		uds <= '1';
		as <= '1';
		wait for 50ns;


		-- Write to an address in the static ram with FCx=1
--		wait on clk10 until clk10 = '1';
--		report("Testing SRAM write with FCx=1");
--		a 	<= addr_sram;
--		as <= '0';
--		lds <='0';
--		uds <= '0';
--		rw <= '0';
--		fc0 <= '1';
--		fc1 <= '1';
--		fc2 <= '1';
--		wait on dtack until dtack = '0';
--		wait on clk10 until clk10 = '1';
--		fc0 <= '0';
--		fc1 <= '0';
--		fc2 <= '0';
--		rw <= '1';
--		lds <='1';
--		uds <= '1';
--		as <= '1';
--		wait for 50ns;

		-- Read from an address on the duart
		wait on clk10 until clk10 = '1';
		report("Testing DUART read");
		a 	<= addr_duart;
		as <= '0';
		lds <='0';
		uds <= '1';
		wait for 300ns;
		wait on clk10 until clk10 = '1';
		lds <='1';
		uds <= '1';
		as <= '1';
		wait for 50ns;

		-- Read from an address on the pit
		wait on clk10 until clk10 = '1';
		report("Testing PIT read");
		a 	<= addr_pit;
		as <= '0';
		lds <='0';
		uds <= '1';
		rw  <= '0';
		wait for 300ns;
		wait on clk10 until clk10 = '1';
		rw  <= '1';
		lds <='1';
		uds <= '1';
		as <= '1';
		wait for 50ns;

		-- Read from an address on the keyboard
		wait on clk10 until clk10 = '1';
		report("Testing Keyboard read");
		a 	<= addr_kbd;
		as <= '0';
		lds <='0';
		uds <= '1';
		wait on dtack until dtack = '0';
		wait on clk10 until clk10 = '1';
		lds <='1';
		uds <= '1';
		as <= '1';
		wait for 50ns;

		-- Read from an address on the IDE interface
		wait on clk10 until clk10 = '1';
		report("Testing IDE read");
		a 	<= addr_ide;
		as <= '0';
		lds <='0';
		uds <= '0';
		wait on dtack until dtack = '0';
		wait on clk10 until clk10 = '1';
		lds <='1';
		uds <= '1';
		as <= '1';
		wait for 50ns;

		-- Write to an address on the IDE interface
		wait on clk10 until clk10 = '1';
		report("Testing IDE read");
		a 	<= addr_ide;
		as <= '0';
		lds <='0';
		uds <= '0';
		rw <= '0';
		wait on dtack until dtack = '0';
		wait on clk10 until clk10 = '1';
		rw <= '1';
		lds <='1';
		uds <= '1';
		as <= '1';
		wait for 50ns;

		-- Read from an address on the RTC
		wait on clk10 until clk10 = '1';
		report("Testing RTC read");
		a 	<= addr_rtc;
		as <= '0';
		lds <='0';
		uds <= '1';
		wait on dtack until dtack = '0';
		wait on clk10 until clk10 = '1';
		lds <='1';
		uds <= '1';
		as <= '1';
		wait for 50ns;

		-- Write a word to an address in the dynamic ram
		wait on clk10 until clk10 = '1';
		report("Testing DRAM word write");
		a 	<= addr_dram;
		as <= '0';
		lds <='0';
		uds <= '0';
		rw <= '0';
		wait on dtack until dtack = '0';
		wait on clk10 until clk10 = '1';
		lds <='1';
		uds <= '1';
		as <= '1';
		rw <= '1';
		wait for 50ns;

		-- Read a word from an address in the dynamic ram
		wait on clk10 until clk10 = '1';
		report("Testing DRAM word read");
		a 	<= addr_dram1;
		as <= '0';
		lds <='0';
		uds <= '0';
		wait on dtack until dtack = '0';
		wait on clk10 until clk10 = '1';
		lds <='1';
		uds <= '1';
		as <= '1';
		wait for 50ns;

		-- Read a high byte from an address in the dynamic ram
		wait on clk10 until clk10 = '1';
		report("Testing DRAM byte read");
		a 	<= addr_dram2;
		as <= '0';
		lds <='0';
		uds <= '1';
		wait on dtack until dtack = '0';
		wait on clk10 until clk10 = '1';
		lds <='1';
		uds <= '1';
		as <= '1';
		wait for 50ns;

		-- Write a low byte from an address in the dynamic ram
		wait on clk10 until clk10 = '1';
		report("Testing DRAM byte write");
		a 	<= addr_dram3;
		as <= '0';
		lds <='1';
		uds <= '0';
		rw <= '0';
		wait on dtack until dtack = '0';
		wait on clk10 until clk10 = '1';
		lds <='1';
		uds <= '1';
		as <= '1';
		rw <= '1';
		wait for 50ns;

		-- Read from an address in the rom before DRAM
		wait on clk10 until clk10 = '1';
		report("Testing ROM read before DRAM");
		a 	<= addr_rom;
		as <= '0';
		lds <='0';
		uds <= '0';
		wait for 300ns;
		wait on clk10 until clk10 = '1';
		lds <='1';
		uds <= '1';
		as <= '1';
		wait for 50ns;
		
		-- Read a word from an address in the dynamic ram
		wait on clk10 until clk10 = '1';
		report("Testing DRAM word read after ROM");
		a 	<= addr_dram1;
		as <= '0';
		lds <='0';
		uds <= '0';
		wait on dtack until dtack = '0';
		wait on clk10 until clk10 = '1';
		lds <='1';
		uds <= '1';
		as <= '1';
		wait for 50ns;
		
		-- Read from an address in the static ram before DRAM
		wait on clk10 until clk10 = '1';
		report("Testing SRAM read before DRAM");
		a 	<= addr_sram;
		as <= '0';
		lds <='0';
		uds <= '0';
		wait on dtack until dtack = '0';
		wait on clk10 until clk10 = '1';
		lds <='1';
		uds <= '1';
		as <= '1';
		wait for 50ns;

		-- Read a word from an address in the dynamic ram
		wait on clk10 until clk10 = '1';
		report("Testing DRAM word read after SRAM");
		a 	<= addr_dram1;
		as <= '0';
		lds <='0';
		uds <= '0';
		wait on dtack until dtack = '0';
		wait on clk10 until clk10 = '1';
		lds <='1';
		uds <= '1';
		as <= '1';
		wait for 50ns;

		-- Read a byte from the external bus id 1
		wait on clk10 until clk10 = '1';
		report("Testing EXT ID1 read");
		a 	<= addr_extid1;
		as <= '0';
		lds <='0';
		uds <= '1';
		wait for 150ns;		-- No DTACK signal
		lds <='1';
		uds <= '1';
		as <= '1';
		wait for 100ns;

		-- Read a byte from the external bus id 2
		wait on clk10 until clk10 = '1';
		report("Testing EXT ID2 read");
		a 	<= addr_extid2;
		as <= '0';
		lds <='0';
		uds <= '1';
		wait for 150ns;		-- No DTACK signal
		lds <='1';
		uds <= '1';
		as <= '1';
		wait for 100ns;

		-- Read a byte from the external bus id 3
		wait on clk10 until clk10 = '1';
		report("Testing EXT ID2 read");
		a 	<= addr_extid3;
		as <= '0';
		lds <='0';
		uds <= '1';
		wait for 150ns;		-- No DTACK signal
		lds <='1';
		uds <= '1';
		as <= '1';
		wait for 100ns;

		-- Read a byte from the external bus id 4
		wait on clk10 until clk10 = '1';
		report("Testing EXT ID4 read");
		a 	<= addr_extid4;
		as <= '0';
		lds <='0';
		uds <= '1';
		wait for 150ns;		-- No DTACK signal
		lds <='1';
		uds <= '1';
		as <= '1';
		wait for 100ns;

		-- Read a word from the external bus data 1
		wait on clk10 until clk10 = '1';
		report("Testing EXT DATA1 read");
		a 	<= addr_ext1;
		as <= '0';
		lds <='0';
		uds <= '0';
		wait for 150ns;		-- No DTACK signal
		lds <='1';
		uds <= '1';
		as <= '1';
		wait for 100ns;

		-- Write a lower byte to the external bus data 1
		wait on clk10 until clk10 = '1';
		report("Testing EXT DATA1 lower byte write");
		a 	<= addr_ext1;
		as <= '0';
		lds <='0';
		uds <= '1';
		rw <= '0';
		wait for 150ns;		-- No DTACK signal
		rw <= '1';
		lds <='1';
		uds <= '1';
		as <= '1';
		wait for 100ns;

		-- Write a upper byte to the external bus data 1
		wait on clk10 until clk10 = '1';
		report("Testing EXT DATA1 upper byte write");
		a 	<= addr_ext1;
		as <= '0';
		lds <='1';
		uds <= '0';
		rw <= '0';
		wait for 150ns;		-- No DTACK signal
		rw <= '1';
		lds <='1';
		uds <= '1';
		as <= '1';
		wait for 100ns;
		
		-- Read a word from the external bus data 2
		wait on clk10 until clk10 = '1';
		report("Testing EXT DATA2 write");
		a 	<= addr_ext2;
		as <= '0';
		lds <='0';
		uds <= '0';
		wait for 150ns;		-- No DTACK signal
		lds <='1';
		uds <= '1';
		as <= '1';
		wait for 100ns;

		-- Read a word from the external bus data 3
		wait on clk10 until clk10 = '1';
		report("Testing EXT DATA3 write");
		a 	<= addr_ext3;
		as <= '0';
		lds <='0';
		uds <= '0';
		wait for 150ns;		-- No DTACK signal
		lds <='1';
		uds <= '1';
		as <= '1';
		wait for 100ns;

		-- Read a word from the external bus data 4
		wait on clk10 until clk10 = '1';
		report("Testing EXT DATA4 write");
		a 	<= addr_ext4;
		as <= '0';
		lds <='0';
		uds <= '0';
		wait for 150ns;		-- No DTACK signal
		lds <='1';
		uds <= '1';
		as <= '1';
		wait for 100ns;


		-- Read from an invalid address
		wait on clk10 until clk10 = '1';
		report("Testing Invalid address read");
		a 	<= addr_inv;
		as <= '0';
		lds <='0';
		uds <= '0';
		wait on bus_error until bus_error = '0';
		wait for 100ns;
		lds <='1';
		uds <= '1';
		as <= '1';

      wait;
   end process;

END;
