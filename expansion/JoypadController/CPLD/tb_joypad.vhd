--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   13:07:12 05/07/2022
-- Design Name:   
-- Module Name:   C:/Dev/KiCAD/Ddraig68k/expansion/JoypadController/CPLD/tb_joypad.vhd
-- Project Name:  Joypad
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Joypad
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
 
ENTITY tb_joypad IS
END tb_joypad;
 
ARCHITECTURE behavior OF tb_joypad IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Joypad
    PORT(
         data_io : INOUT  std_logic_vector(7 downto 0);
         addr_i : IN  std_logic_vector(7 downto 1);
         cpuclk_i : IN  std_logic;
         csreg_i : IN  std_logic;
         csdata_i : IN  std_logic;
         uds_i : IN  std_logic;
         lds_i : IN  std_logic;
         rw_i : IN  std_logic;
         reset_i : IN  std_logic;
         dtack_o : OUT  std_logic;
         led_o : OUT  std_logic;
         data_clk_o : OUT  std_logic;
         joy1oe_o : OUT  std_logic;
         joy2oe_o : OUT  std_logic;
         joy1sel_o : OUT  std_logic;
         joy2sel_o : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal addr_i : std_logic_vector(7 downto 1) := (others => '0');
   signal cpuclk_i : std_logic := '0';
   signal csreg_i : std_logic := '1';
   signal csdata_i : std_logic := '1';
   signal uds_i : std_logic := '1';
   signal lds_i : std_logic := '1';
   signal rw_i : std_logic := '1';
   signal reset_i : std_logic := '1';

	--BiDirs
   signal data_io : std_logic_vector(7 downto 0);

 	--Outputs
   signal dtack_o : std_logic;
   signal led_o : std_logic;
   signal data_clk_o : std_logic;
   signal joy1oe_o : std_logic;
   signal joy2oe_o : std_logic;
   signal joy1sel_o : std_logic;
   signal joy2sel_o : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   constant cpu_clk_period : time := 100 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Joypad PORT MAP (
          data_io => data_io,
          addr_i => addr_i,
          cpuclk_i => cpuclk_i,
          csreg_i => csreg_i,
          csdata_i => csdata_i,
          uds_i => uds_i,
          lds_i => lds_i,
          rw_i => rw_i,
          reset_i => reset_i,
          dtack_o => dtack_o,
          led_o => led_o,
          data_clk_o => data_clk_o,
          joy1oe_o => joy1oe_o,
          joy2oe_o => joy2oe_o,
          joy1sel_o => joy1sel_o,
          joy2sel_o => joy2sel_o
        );

   -- Clock process definitions
   clock_process :process
   begin
		cpuclk_i <= '0';
		wait for cpu_clk_period/2;
		cpuclk_i <= '1';
		wait for cpu_clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
		data_io     <= "ZZZZZZZZ";

		-- hold reset state for 100 ns.
		reset_i <= '0';
		WAIT FOR 200 ns;
		reset_i <= '1';

        -- Read the ID from the board
		wait on cpuclk_i until cpuclk_i = '1';
		report("Testing ID read");
		addr_i      <= "1111111";
		lds_i       <= '1';
		uds_i       <= '0';
        rw_i        <= '1';
        csreg_i     <= '0';
		wait on dtack_o until dtack_o = '0';
		wait for 300ns;
		wait on cpuclk_i until cpuclk_i = '1';
		lds_i       <= '1';
		uds_i       <= '1';
        rw_i        <= '1';
        csreg_i     <= '1';
		wait for 100ns;
		
        -- Read joystick 1
		wait on cpuclk_i until cpuclk_i = '1';
		report("Testing Joystick 1 read");
		addr_i      <= "0000000";
		lds_i       <= '1';
		uds_i       <= '0';
        rw_i        <= '1';
        csreg_i     <= '0';
		wait on dtack_o until dtack_o = '0';
		wait for 300ns;
		wait on cpuclk_i until cpuclk_i = '1';
		lds_i       <= '1';
		uds_i       <= '1';
        rw_i        <= '1';
        csreg_i     <= '1';
		wait for 100ns;
		
        -- Read joystick 2
		wait on cpuclk_i until cpuclk_i = '1';
		report("Testing Joystick 2 read");
		addr_i      <= "0000001";
		lds_i       <= '1';
		uds_i       <= '0';
        rw_i        <= '1';
        csreg_i     <= '0';
		wait on dtack_o until dtack_o = '0';
		wait for 300ns;
		wait on cpuclk_i until cpuclk_i = '1';
		lds_i       <= '1';
		uds_i       <= '1';
        rw_i        <= '1';
        csreg_i     <= '1';
		wait for 100ns;
		
        -- Set Select High for joystick 1
		wait on cpuclk_i until cpuclk_i = '1';
		report("Testing Joystick 1 select high");
		addr_i      <= "0000000";
		lds_i       <= '1';
		uds_i       <= '0';
        rw_i        <= '0';
        csreg_i     <= '0';
		data_io     <= "00000001";
		wait on dtack_o until dtack_o = '0';
		wait for 300ns;
		wait on cpuclk_i until cpuclk_i = '1';
		data_io     <= "ZZZZZZZZ";
		lds_i       <= '1';
		uds_i       <= '1';
        rw_i        <= '1';
        csreg_i     <= '1';
		wait for 100ns;
		

        -- Set Select Low for joystick 1
		wait on cpuclk_i until cpuclk_i = '1';
		report("Testing Joystick 1 select low");
		addr_i      <= "0000000";
		lds_i       <= '1';
		uds_i       <= '0';
        rw_i        <= '0';
        csreg_i     <= '0';
		data_io     <= "00000000";
		wait on dtack_o until dtack_o = '0';
		wait for 300ns;
		wait on cpuclk_i until cpuclk_i = '1';
		data_io     <= "ZZZZZZZZ";
		lds_i       <= '1';
		uds_i       <= '1';
        rw_i        <= '1';
        csreg_i     <= '1';
		wait for 100ns;

        -- Set Select High for joystick 2
		wait on cpuclk_i until cpuclk_i = '1';
		report("Testing Joystick 2 select high");
		addr_i      <= "0000001";
		lds_i       <= '1';
		uds_i       <= '0';
        rw_i        <= '0';
        csreg_i     <= '0';
		data_io     <= "00000001";
		wait on dtack_o until dtack_o = '0';
		wait for 300ns;
		wait on cpuclk_i until cpuclk_i = '1';
		data_io     <= "ZZZZZZZZ";
		lds_i       <= '1';
		uds_i       <= '1';
        rw_i        <= '1';
        csreg_i     <= '1';
		wait for 100ns;
		

        -- Set Select Low for joystick 2
		wait on cpuclk_i until cpuclk_i = '1';
		report("Testing Joystick 2 select low");
		addr_i      <= "0000001";
		lds_i       <= '1';
		uds_i       <= '0';
        rw_i        <= '0';
        csreg_i     <= '0';
		data_io     <= "00000000";
		wait on dtack_o until dtack_o = '0';
		wait for 300ns;
		wait on cpuclk_i until cpuclk_i = '1';
		data_io     <= "ZZZZZZZZ";
		lds_i       <= '1';
		uds_i       <= '1';
        rw_i        <= '1';
        csreg_i     <= '1';
		wait for 100ns;
      wait;
   end process;

END;
