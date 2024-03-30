LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

 
ENTITY tb_DRAM IS
END tb_DRAM;
 
ARCHITECTURE behavior OF tb_DRAM IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT DRAMController
    PORT(
         clock_40mhz_i  : IN  std_logic;
         reset_n_i      : IN  std_logic;
         address_i      : IN  std_logic_vector(28 downto 0);
         siz0_i         : IN  std_logic;
         siz1_i         : IN  std_logic;
         rw_i           : IN  std_logic;
         as_n_i         : IN  std_logic;
         ds_n_i         : IN  std_logic;
         cs_dram_n_i    : IN  std_logic;
         cbreq_n_i      : IN  std_logic;
         cback_n_o      : OUT  std_logic;
         dsack0_n_o     : OUT  std_logic;
         dsack1_n_o     : OUT  std_logic;
         sterm_n_o      : OUT  std_logic;
         dram_addr_o    : OUT  std_logic_vector(11 downto 0);
         dram_ras_n_o   : OUT  std_logic_vector(3 downto 0);
         dram_casa_n_o  : OUT  std_logic_vector(3 downto 0);
         dram_casb_n_o  : OUT  std_logic_vector(3 downto 0);
         dram_we_n_o    : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal clock_40mhz_i : std_logic := '0';
   signal reset_n_i     : std_logic := '1';
   signal address_i     : std_logic_vector(28 downto 0) := (others => '0');
   signal size          : std_logic_vector(1 downto 0) := "00";
   signal rw_i          : std_logic := '1';
   signal as_n_i        : std_logic := '1';
   signal ds_n_i        : std_logic := '1';
   signal cs_dram_n_i   : std_logic := '1';
   signal cbreq_n_i     : std_logic := '1';

 	--Outputs
   signal cback_n_o     : std_logic;
   signal dsack0_n_o    : std_logic;
   signal dsack1_n_o    : std_logic;
   signal sterm_n_o     : std_logic;
   signal dram_addr_o   : std_logic_vector(11 downto 0);
   signal dram_ras_n_o  : std_logic_vector(3 downto 0);
   signal dram_casa_n_o : std_logic_vector(3 downto 0);
   signal dram_casb_n_o : std_logic_vector(3 downto 0);
   signal dram_we_n_o   : std_logic;

   -- Clock period definitions
   constant clock_40mhz_i_period : time := 25 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
	uut: DRAMController
		PORT MAP (
          clock_40mhz_i => clock_40mhz_i,
          reset_n_i => reset_n_i,
          address_i => address_i,
          siz0_i => size(0),
          siz1_i => size(1),
          rw_i => rw_i,
          as_n_i => as_n_i,
          ds_n_i => ds_n_i,
          cs_dram_n_i => cs_dram_n_i,
          cbreq_n_i => cbreq_n_i,
          cback_n_o => cback_n_o,
          dsack0_n_o => dsack0_n_o,
          dsack1_n_o => dsack1_n_o,
          sterm_n_o => sterm_n_o,
          dram_addr_o => dram_addr_o,
          dram_ras_n_o => dram_ras_n_o,
          dram_casa_n_o => dram_casa_n_o,
          dram_casb_n_o => dram_casb_n_o,
          dram_we_n_o => dram_we_n_o
        );

	-- Clock process definitions
	clock_40mhz_i_process :process
	begin
		clock_40mhz_i <= '0';
		wait for clock_40mhz_i_period/2;
		clock_40mhz_i <= '1';
		wait for clock_40mhz_i_period/2;
	end process;
 

	-- Stimulus process
	stim_proc: process
	begin		
		-- hold reset state for 100 ns.
		reset_n_i <= '0';
		wait for 100 ns;	
		reset_n_i <= '1';
		wait for 100 ns;

		report("Testing address access without DRAM CS");
		address_i <= "0" & X"0000100";
		size <= "00";
		as_n_i <= '0';
		ds_n_i <= '0';
 		wait for 200ns;
		size <= "11";
		address_i <= (others => '0');
		as_n_i <= '1';
		ds_n_i <= '1';
		wait for 200 ns;

		-- Enable write to check the siz0&1 and byte selection
		rw_i  <= '0';

		report("Testing 32-bit low memory address access");
		address_i <= "0" & X"0000100";
		size <= "00";
		as_n_i <= '0';
		ds_n_i <= '0';
		cs_dram_n_i <= '0';
		wait for 200ns;
		cs_dram_n_i <= '1';
		size <= "11";
		address_i <= (others => '0');
		as_n_i <= '1';
		ds_n_i <= '1';
		wait for 200 ns;

		report("Testing 32-bit high memory address access");
		address_i <= "0" & X"0A00100";
		size <= "00";
		as_n_i <= '0';
		ds_n_i <= '0';
		cs_dram_n_i <= '0';
		wait for 200ns;
		cs_dram_n_i <= '1';
		size <= "11";
		address_i <= (others => '0');
		as_n_i <= '1';
		ds_n_i <= '1';
		wait for 200 ns;


		report("Testing size = 00 address access");
		address_i <= "0" & X"0000100";
		size <= "00";
		as_n_i <= '0';
		ds_n_i <= '0';
		cs_dram_n_i <= '0';
 		wait for 200ns;
		cs_dram_n_i <= '1';
		size <= "11";
		address_i <= (others => '0');
		as_n_i <= '1';
		ds_n_i <= '1';
		wait for 200 ns;

		report("Testing size = 01 address access");
		address_i <= "0" & X"0000100";
		size <= "01";
		as_n_i <= '0';
		ds_n_i <= '0';
		cs_dram_n_i <= '0';
 		wait for 200ns;
		cs_dram_n_i <= '1';
		size <= "11";
		address_i <= (others => '0');
		as_n_i <= '1';
		ds_n_i <= '1';
		wait for 200 ns;

		report("Testing size = 10 address access");
		address_i <= "0" & X"0000100";
		size <= "10";
		as_n_i <= '0';
		ds_n_i <= '0';
		cs_dram_n_i <= '0';
 		wait for 200ns;
		cs_dram_n_i <= '1';
		size <= "11";
		address_i <= (others => '0');
		as_n_i <= '1';
		ds_n_i <= '1';
		wait for 200 ns;

		report("Testing size = 11 address access");
		address_i <= "0" & X"0000100";
		size <= "11";
		as_n_i <= '0';
		ds_n_i <= '0';
		cs_dram_n_i <= '0';
 		wait for 200ns;
		cs_dram_n_i <= '1';
		size <= "11";
		address_i <= (others => '0');
		as_n_i <= '1';
		ds_n_i <= '1';
		wait for 200 ns;

		report("Testing size = 01 different address access");
		address_i <= "0" & X"0000102";
		size <= "01";
		as_n_i <= '0';
		ds_n_i <= '0';
		cs_dram_n_i <= '0';
 		wait for 200ns;
		cs_dram_n_i <= '1';
		size <= "11";
		address_i <= (others => '0');
		as_n_i <= '1';
		ds_n_i <= '1';
		wait for 200 ns;

		report("Testing size = 10 different address access");
		address_i <= "0" & X"0000102";
		size <= "10";
		as_n_i <= '0';
		ds_n_i <= '0';
		cs_dram_n_i <= '0';
 		wait for 200ns;
		cs_dram_n_i <= '1';
		size <= "11";
		address_i <= (others => '0');
		as_n_i <= '1';
		ds_n_i <= '1';
		wait for 200 ns;

		wait;
   end process;
END;
