LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

ENTITY AudioYM2151 IS
  PORT (
    data_io : INOUT STD_LOGIC_VECTOR (15 DOWNTO 0);
    addr_i : IN STD_LOGIC_VECTOR (7 DOWNTO 1);

    cpuclk_i : IN STD_LOGIC;
    csdata_i : IN STD_LOGIC;
    csreg_i : IN STD_LOGIC;

    reset_i : IN STD_LOGIC;
    lds_i : IN STD_LOGIC;
    uds_i : IN STD_LOGIC;
    rw_i : IN STD_LOGIC;

    dtack_o : OUT STD_LOGIC;

    ym_cs_o : OUT STD_LOGIC;
    ym_wr_o : OUT STD_LOGIC;
    ym_rd_o : OUT STD_LOGIC;

    csymclk_o : OUT STD_LOGIC;
    spi_clk_o : OUT STD_LOGIC;
    spi_do_o : OUT STD_LOGIC;

    led_o : OUT STD_LOGIC
  );
END AudioYM2151;

ARCHITECTURE Behavioral OF AudioYM2151 IS

  CONSTANT BOARD_ID : STD_LOGIC_VECTOR(15 DOWNTO 0) := X"2121";
  CONSTANT DEFAULT_CLK : STD_LOGIC_VECTOR(15 DOWNTO 0) := X"BCFC"; -- 3.57Mhz

  SIGNAL s_dtackcount : STD_LOGIC_VECTOR(3 DOWNTO 0);
  SIGNAL s_ledtime : STD_LOGIC_VECTOR(9 DOWNTO 0);
  SIGNAL s_clocktime : STD_LOGIC_VECTOR(9 DOWNTO 0);
  SIGNAL s_clkdiv : STD_LOGIC;

  SIGNAL s_clkreg : STD_LOGIC_VECTOR(15 DOWNTO 0) := DEFAULT_CLK;
  SIGNAL s_setfreq : STD_LOGIC := '0';
  SIGNAL s_spiclk : STD_LOGIC;
  SIGNAL s_last_reset : STD_LOGIC := '0';
  SIGNAL s_spi_bytesent : STD_LOGIC := '0';
  

  SIGNAL s_setclock : STD_LOGIC := '0';
  SIGNAL s_spi_ready : STD_LOGIC := '0';
  SIGNAL s_miso : STD_LOGIC := '0';
  SIGNAL s_clkdone : STD_LOGIC;
  SIGNAL s_clock_reg_sel : STD_LOGIC := '0';
  SIGNAL s_last_reg_sel : STD_LOGIC := '1';
  SIGNAL s_reg_set : STD_LOGIC;
  SIGNAL s_spiread : STD_LOGIC_VECTOR(15 DOWNTO 0);
  signal s_rx_count : std_logic_vector(1 downto 0);
  signal s_spi_data : std_logic_vector(7 downto 0);
BEGIN

  dtack_gen : PROCESS (cpuclk_i, reset_i, csreg_i, csdata_i)
  BEGIN
    IF reset_i = '0' OR (csdata_i = '1' AND csreg_i = '1') THEN
      s_dtackcount <= (OTHERS => '0');
    ELSIF rising_edge(cpuclk_i) THEN
      IF s_dtackcount < "1111" THEN
        s_dtackcount <= s_dtackcount + 1;
      END IF;
    END IF;
  END PROCESS;

  led_flash : PROCESS (s_clkdiv, reset_i, csdata_i, csreg_i)
  BEGIN
    IF reset_i = '0' OR csdata_i = '0' OR csreg_i = '0' THEN
      s_ledtime <= (OTHERS => '0');
    ELSIF rising_edge(s_clkdiv) THEN
      IF s_ledtime < "1111111111" THEN
        s_ledtime <= s_ledtime + 1;
      END IF;
    END IF;
  END PROCESS;

  set_clock : PROCESS (cpuclk_i, reset_i)
  BEGIN
    IF (rising_edge(cpuclk_i)) THEN
      IF (reset_i = '0') THEN
        s_clkdone <= '0';
        s_setclock <= '0';
        s_reg_set <= '0';
        s_clocktime <= (OTHERS => '0');
        s_last_reset <= '1';
        s_spi_bytesent <= '0';
        s_last_reg_sel <= '1';
      ELSE

        IF s_clocktime > "0000000000" THEN
          s_clocktime <= s_clocktime - 1;
        END IF;

        IF (s_clock_reg_sel = '1' and s_last_reg_sel = '0') THEN -- and s_clocktime = "0000000000") then
          s_reg_set <= '1'; -- Only set on rising edge of clock selection
        END IF;
	      
        IF (s_setclock = '1') THEN
            s_setclock <= '0';  -- Clear start SPI pulse
        ELSIF (s_last_reset = '1' AND s_spi_ready = '1') THEN
          s_setclock <= '1';
		  s_last_reset <= '0';
		  s_spi_data  <= s_clkreg(15 downto 8);	-- Set the uppper byte of data
          s_spi_bytesent <= '1';
	    ELSIF (s_reg_set = '1' AND s_spi_ready = '1') THEN
          s_setclock <= '1';
		  s_spi_data  <= s_clkreg(15 downto 8);	-- Set the uppper byte of data		  
          s_spi_bytesent <= '1';
          s_reg_set <= '0';
		ELSIF (s_spi_bytesent = '1' and s_spi_ready = '1') THEN
		  s_spi_bytesent <= '0';
          s_setclock <= '1';
		  s_spi_data <= s_clkreg(7 downto 0);
        END IF;
        
        s_last_reg_sel <= s_clock_reg_sel;        
      END IF;
    END IF;
  END PROCESS;

  ClkGen : ENTITY work.Clock
    PORT MAP(
      clk_i => cpuclk_i,
      clk_div8_o => s_clkdiv,
      clk_div16_o => s_spiclk
    );

  YMClock : ENTITY work.SPI_Master_With_Single_CS
    PORT MAP(
      i_Rst_L => reset_i,
      i_Clk => cpuclk_i,

      i_TX_Count => "10",
      i_TX_Byte => s_spi_data,
      i_TX_DV => s_setclock,
      o_TX_Ready => s_spi_ready,

	  o_RX_Count => s_rx_count,
      o_RX_DV => OPEN,
      o_RX_Byte => OPEN,
   
      -- SPI Interface
      o_SPI_Clk => spi_clk_o,
      o_SPI_MOSI => spi_do_o,
	  i_SPI_MISO => '0', 
      o_SPI_CS_n => csymclk_o
    );

  -- Generate DTACK signal
  dtack_o <= '0' WHEN s_dtackcount > "0100" AND (csdata_i = '0' OR csreg_i = '0') ELSE '1';

  -- Flash activity LED
  led_o <= '1' WHEN s_ledtime < "1111111111" ELSE '0';

  -- YM2151 decoding
  ym_rd_o <= NOT rw_i;
  ym_wr_o <= rw_i;
  ym_cs_o <= '0' WHEN addr_i(7 DOWNTO 2) = "000000" AND uds_i = '0' AND csreg_i = '0' ELSE '1';

  -- YM2151 clock control
  s_clock_reg_sel <= '1' WHEN addr_i = "1000000" AND uds_i = '0' AND lds_i = '0' AND rw_i = '0' AND csreg_i = '0' ELSE '0';
  s_clkreg <= data_io WHEN s_clock_reg_sel = '1' ELSE DEFAULT_CLK WHEN reset_i = '0' ELSE s_clkreg;

  --s_clkreg <= X"BCFC" when reset_i = '0' else data_io when addr_i = "1000000" and uds_i = '0' and lds_i = '0' and rw_i = '0' else s_clkreg;

  -- Write out device ID
  data_io <= BOARD_ID WHEN addr_i = "1111111" AND uds_i = '0' AND csreg_i = '0' ELSE "ZZZZZZZZZZZZZZZZ";

END Behavioral;