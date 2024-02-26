--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   15:52:44 12/13/2021
-- Design Name:   
-- Module Name:   C:/Dev/KiCAD/Ddraig68k/expansion/GfxV9990/CPLD/tb_GfxV9990.vhd
-- Project Name:  GfxV9990
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: GfxV9990
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
 
ENTITY tb_GfxV9990 IS
END tb_GfxV9990;
 
ARCHITECTURE behavior OF tb_GfxV9990 IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT GfxV9990
    PORT(
         data_io : INOUT  std_logic_vector(7 downto 0);
         addr_i : IN  std_logic_vector(7 downto 1);
         cpuclk_i : IN  std_logic;
         csreg_i : IN  std_logic;
         csdata_i : IN  std_logic;
         reset_i : IN  std_logic;
         uds_i : IN  std_logic;
         lds_i : IN  std_logic;
         rw_i : IN  std_logic;
         wait_i : IN  std_logic;
         dtack_o : OUT  std_logic;
         vdpw_o : OUT  std_logic;
         vdpr_o : OUT  std_logic;
         led_o : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal addr_i        : std_logic_vector(7 downto 1) := (others => '0');
   signal cpuclk_i      : std_logic := '0';
   signal csreg_i       : std_logic := '1';
   signal csdata_i      : std_logic := '1';
   signal reset_i       : std_logic := '1';
   signal uds_i         : std_logic := '1';
   signal lds_i         : std_logic := '1';
   signal rw_i          : std_logic := '1';
   signal wait_i        : std_logic := '1';

	--BiDirs
   signal data_io : std_logic_vector(7 downto 0);

 	--Outputs
   signal dtack_o : std_logic;
   signal vdpw_o : std_logic;
   signal vdpr_o : std_logic;
   signal led_o : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   constant clk10mhz_period : time := 100 ns;
 
   type test_state_t is (IDLE, BOARD_ID, READ_VDP, WRITE_VDP);
   signal test_state : test_state_t := IDLE; 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: GfxV9990 PORT MAP (
          data_io => data_io,
          addr_i => addr_i,
          cpuclk_i => cpuclk_i,
          csreg_i => csreg_i,
          csdata_i => csdata_i,
          reset_i => reset_i,
          uds_i => uds_i,
          lds_i => lds_i,
          rw_i => rw_i,
          wait_i => wait_i,
          dtack_o => dtack_o,
          vdpw_o => vdpw_o,
          vdpr_o => vdpr_o,
          led_o => led_o
        );

   -- Clock process definitions
   clk10mhz_process :process
   begin
		cpuclk_i <= '0';
		wait for clk10mhz_period/2;
		cpuclk_i <= '1';
		wait for clk10mhz_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
		reset_i <= '0';
        -- hold reset state for 200 ns.
        wait for 200 ns;	
		reset_i <= '1';
		wait for 50ns;


		-- Test with the ID line active
		test_state <= BOARD_ID;
		wait on cpuclk_i until cpuclk_i = '1';
		lds_i   <='1';
		uds_i   <= '0';
		csreg_i <= '0';
		addr_i  <= "1111111";
		wait on dtack_o until dtack_o = '0';
		wait for 50ns;
		wait on cpuclk_i until cpuclk_i = '1';
		lds_i   <='1';
		uds_i   <= '1';
		csreg_i <= '1';
		addr_i  <= "0000000";
		wait for 50ns;

		-- Read from the V9990
		test_state <= READ_VDP;		
		wait on cpuclk_i until cpuclk_i = '1';
		lds_i   <='1';
		uds_i   <= '0';
		csreg_i <= '0';
		rw_i    <= '1';
		wait for 100ns;
		wait on dtack_o until dtack_o = '0';
		wait for 200ns;
		wait on cpuclk_i until cpuclk_i = '1';
		lds_i   <='1';
		uds_i   <= '1';
		csreg_i <= '1';
		wait for 50ns;

		-- Write to the V9990
		test_state <= WRITE_VDP;		
		wait on cpuclk_i until cpuclk_i = '1';
		csreg_i <= '0';
		rw_i    <= '0';
		wait for 100ns;
		lds_i   <='1';
		uds_i   <= '0';
		wait for 100ns;
		wait on dtack_o until dtack_o = '0';
		wait for 200ns;
		wait on cpuclk_i until cpuclk_i = '1';
		rw_i    <= '1';
		lds_i   <='1';
		uds_i   <= '1';
		csreg_i <= '1';
		wait for 50ns;

		test_state <= IDLE;

        wait;
    end process;

END;
