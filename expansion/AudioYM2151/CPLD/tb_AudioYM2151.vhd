LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY tb_AudioYM2151 is
END tb_AudioYM2151;

ARCHITECTURE behavior OF tb_AudioYM2151 IS

    -- Component Declaration for the Unit Under Test (UUT)
    COMPONENT AudioYM2151
        PORT (
            data_io     : INOUT STD_LOGIC_VECTOR(15 DOWNTO 0);
            addr_i      : IN STD_LOGIC_VECTOR(7 DOWNTO 1);
            cpuclk_i    : IN STD_LOGIC;
            csdata_i    : IN STD_LOGIC;
            csreg_i     : IN STD_LOGIC;
            reset_i     : IN STD_LOGIC;
            lds_i       : IN STD_LOGIC;
            uds_i       : IN STD_LOGIC;
            rw_i        : IN STD_LOGIC;
            dtack_o     : OUT STD_LOGIC;
            ym_cs_o     : OUT STD_LOGIC;
            ym_wr_o     : OUT STD_LOGIC;
            ym_rd_o     : OUT STD_LOGIC;
            csymclk_o   : OUT STD_LOGIC;
            spi_clk_o   : OUT STD_LOGIC;
            spi_do_o    : OUT STD_LOGIC;
            led_o       : OUT STD_LOGIC
        );
    END COMPONENT;

    --Inputs
    SIGNAL addr_i : STD_LOGIC_VECTOR(7 DOWNTO 1) := (OTHERS => '0');
    SIGNAL cpuclk_i : STD_LOGIC := '0';
    SIGNAL csdata_i : STD_LOGIC := '1';
    SIGNAL csreg_i : STD_LOGIC := '1';
    SIGNAL reset_i : STD_LOGIC := '1';
    SIGNAL lds_i : STD_LOGIC := '1';
    SIGNAL uds_i : STD_LOGIC := '1';
    SIGNAL rw_i : STD_LOGIC := '1';

    --BiDirs
    SIGNAL data_io : STD_LOGIC_VECTOR(15 DOWNTO 0);

    --Outputs
    SIGNAL dtack_o : STD_LOGIC;
    SIGNAL ym_cs_o : STD_LOGIC;
    SIGNAL ym_wr_o : STD_LOGIC;
    SIGNAL ym_rd_o : STD_LOGIC;
    SIGNAL csymclk_o : STD_LOGIC;
    SIGNAL spi_clk_o : STD_LOGIC;
    SIGNAL spi_do_o : STD_LOGIC;
    SIGNAL led_o : STD_LOGIC;

    -- appropriate port name 

    CONSTANT clk10mhz_period : TIME := 100 ns;

BEGIN
    -- Instantiate the Unit Under Test (UUT)
    uut : AudioYM2151 PORT MAP(
        data_io     => data_io,
        addr_i      => addr_i,
        cpuclk_i    => cpuclk_i,
        csdata_i    => csdata_i,
        csreg_i     => csreg_i,
        reset_i     => reset_i,
        lds_i       => lds_i,
        uds_i       => uds_i,
        rw_i        => rw_i,
        dtack_o => dtack_o,
        ym_cs_o => ym_cs_o,
        ym_wr_o => ym_wr_o,
        ym_rd_o => ym_rd_o,
        csymclk_o => csymclk_o,
        spi_clk_o => spi_clk_o,
        spi_do_o => spi_do_o,
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
		report("Testing YM2151 read");
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

        -- Write the YM2151 clock frequency again to test
		wait on cpuclk_i until cpuclk_i = '1';
		report("Testing YM2151 read");
		addr_i      <= "1000000";
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

		data_io     <= X"ZZZZ";
        
        WAIT;
    END PROCESS;

END;