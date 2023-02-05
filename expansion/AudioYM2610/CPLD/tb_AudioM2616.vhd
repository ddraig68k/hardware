--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   10:30:42 12/13/2021
-- Design Name:   
-- Module Name:   D:/Dev/KiCAD/ddraig68k-kicad/expansion/AudioYM2612/CPLD/tb_AudioM2616.vhd
-- Project Name:  AudioYM2612
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: AudioYM2612
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
 
ENTITY tb_AudioM2616 IS
END tb_AudioM2616;
 
ARCHITECTURE behavior OF tb_AudioM2616 IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT AudioYM2612
    PORT(
         data_io : INOUT  std_logic_vector(15 downto 0);
         addr_i : IN  std_logic_vector(7 downto 1);
         cpuclk_i : IN  std_logic;
         csdata_i : IN  std_logic;
         csreg_i : IN  std_logic;
         reset_i : IN  std_logic;
         lds_i : IN  std_logic;
         uds_i : IN  std_logic;
         rw_i : IN  std_logic;
         dtack_o : OUT  std_logic;
         ym_cs_o : OUT  std_logic;
         ym_wr_o : OUT  std_logic;
         ym_rd_o : OUT  std_logic;
         sn_rdy_i : IN  std_logic;
         sn_cs_o : OUT  std_logic;
         sn_we_o : OUT  std_logic;
         csymclk_o : OUT  std_logic;
         cssnclk_o : OUT  std_logic;
         enymclk_o : OUT  std_logic;
         ensnclk_o : OUT  std_logic;
         spi_clk_o : OUT  std_logic;
         spi_do_o : OUT  std_logic;
         spi_di_i : IN  std_logic;
         led_o : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal addr_i : std_logic_vector(7 downto 1) := (others => '0');
   signal cpuclk_i : std_logic := '0';
   signal csdata_i : std_logic := '1';
   signal csreg_i : std_logic := '1';
   signal reset_i : std_logic := '1';
   signal lds_i : std_logic := '1';
   signal uds_i : std_logic := '1';
   signal rw_i : std_logic := '1';
   signal sn_rdy_i : std_logic := '1';
   signal spi_di_i : std_logic := '1';

	--BiDirs
   signal data_io : std_logic_vector(15 downto 0);

 	--Outputs
   signal dtack_o : std_logic;
   signal ym_cs_o : std_logic;
   signal ym_wr_o : std_logic;
   signal ym_rd_o : std_logic;
   signal sn_cs_o : std_logic;
   signal sn_we_o : std_logic;
   signal csymclk_o : std_logic;
   signal cssnclk_o : std_logic;
   signal enymclk_o : std_logic;
   signal ensnclk_o : std_logic;
   signal spi_clk_o : std_logic;
   signal spi_do_o : std_logic;
   signal led_o : std_logic;
   
   CONSTANT clk10mhz_period : TIME := 100 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: AudioYM2612 PORT MAP (
          data_io => data_io,
          addr_i => addr_i,
          cpuclk_i => cpuclk_i,
          csdata_i => csdata_i,
          csreg_i => csreg_i,
          reset_i => reset_i,
          lds_i => lds_i,
          uds_i => uds_i,
          rw_i => rw_i,
          dtack_o => dtack_o,
          ym_cs_o => ym_cs_o,
          ym_wr_o => ym_wr_o,
          ym_rd_o => ym_rd_o,
          sn_rdy_i => sn_rdy_i,
          sn_cs_o => sn_cs_o,
          sn_we_o => sn_we_o,
          csymclk_o => csymclk_o,
          cssnclk_o => cssnclk_o,
          enymclk_o => enymclk_o,
          ensnclk_o => ensnclk_o,
          spi_clk_o => spi_clk_o,
          spi_do_o => spi_do_o,
          spi_di_i => spi_di_i,
          led_o => led_o
        );

   -- Clock process definitions
    clock10mhz_process : PROCESS
    BEGIN
        cpuclk_i <= '0';
        WAIT FOR clk10mhz_period/2;
        cpuclk_i <= '1';
        WAIT FOR clk10mhz_period/2;
    END PROCESS;
 

    -- Stimulus process
    stim_proc : PROCESS
    BEGIN
		sn_rdy_i <= '1';

        -- hold reset state for 100 ns.
        reset_i <= '0';
        WAIT FOR 200 ns;
        reset_i <= '1';
        
        -- Wait for the initial SPI transfer to finish
        WAIT FOR 60us;

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

        -- Read a register on the YM2151
		wait on cpuclk_i until cpuclk_i = '1';
		report("Testing YM2151 read");
		addr_i      <= "0000000";
		lds_i       <= '1';
		uds_i       <= '0';
        rw_i        <= '1';
        csreg_i     <= '0';
		wait for 300ns;
		wait on cpuclk_i until cpuclk_i = '1';
		lds_i       <= '1';
		uds_i       <= '1';
        rw_i        <= '1';
        csreg_i     <= '1';
		wait for 100ns;

        -- Write a register on the YM2151
		wait on cpuclk_i until cpuclk_i = '1';
		report("Testing YM2151 write");
		addr_i      <= "0000000";
		lds_i       <= '1';
		uds_i       <= '0';
        rw_i        <= '0';
        csreg_i     <= '0';
		wait for 300ns;
		wait on cpuclk_i until cpuclk_i = '1';
		lds_i       <= '1';
		uds_i       <= '1';
        rw_i        <= '1';
        csreg_i     <= '1';
		wait for 100ns;

        -- Read the YM2151 clock frequency
		wait on cpuclk_i until cpuclk_i = '1';
		report("Testing YM2151 read");
		addr_i      <= "1000000";
		lds_i       <= '0';
		uds_i       <= '0';
        rw_i        <= '1';
        csreg_i     <= '0';
		wait for 300ns;
		wait on cpuclk_i until cpuclk_i = '1';
		lds_i       <= '1';
		uds_i       <= '1';
        rw_i        <= '1';
        csreg_i     <= '1';
		wait for 100ns;
        
        -- Read the YM2151 spi status
		wait on cpuclk_i until cpuclk_i = '1';
		report("Testing YM2151 read");
		addr_i      <= "1000001";
		lds_i       <= '1';
		uds_i       <= '0';
        rw_i        <= '1';
        csreg_i     <= '0';
		wait for 300ns;
		wait on cpuclk_i until cpuclk_i = '1';
		lds_i       <= '1';
		uds_i       <= '1';
        rw_i        <= '1';
        csreg_i     <= '1';
		wait for 100ns;

		wait for 500ns;
        
        -- Write the YM2151 clock frequency
		wait on cpuclk_i until cpuclk_i = '1';
		report("Write the YM2151 clock frequency");
		addr_i      <= "1000000";
		lds_i       <= '0';
		uds_i       <= '0';
        rw_i        <= '0';
        csreg_i     <= '0';
        data_io     <= X"1234";
		wait for 300ns;
		wait on cpuclk_i until cpuclk_i = '1';
		lds_i       <= '1';
		uds_i       <= '1';
        rw_i        <= '1';
        csreg_i     <= '1';
		wait for 100ns;

        -- Wait for the SPI transfer to finish
        WAIT FOR 60us;

        -- Write the SN76489 clock frequency again to test
		wait on cpuclk_i until cpuclk_i = '1';
		report("Write the SN76489 clock frequency");
		addr_i      <= "1100000";
		lds_i       <= '0';
		uds_i       <= '0';
        rw_i        <= '0';
        csreg_i     <= '0';
        data_io     <= X"ABCD";
		wait for 300ns;
		wait on cpuclk_i until cpuclk_i = '1';
		lds_i       <= '1';
		uds_i       <= '1';
        rw_i        <= '1';
        csreg_i     <= '1';
		wait for 100ns;

        
        WAIT;
    END PROCESS;


END;
