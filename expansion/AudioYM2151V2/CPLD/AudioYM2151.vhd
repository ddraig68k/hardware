LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

ENTITY AudioYM2151 IS
    PORT (
        data_io     : INOUT STD_LOGIC_VECTOR (15 DOWNTO 0);
        addr_i      : IN STD_LOGIC_VECTOR (7 DOWNTO 1);

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
END AudioYM2151;

ARCHITECTURE Behavioral OF AudioYM2151 IS

    TYPE t_SM_CS is (IDLE, START, TRANSFER1, TRANSFER2, CS_INACTIVE);

    CONSTANT BOARD_ID       : STD_LOGIC_VECTOR(15 DOWNTO 0) := X"2121";
    CONSTANT DEFAULT_CLK    : STD_LOGIC_VECTOR(15 DOWNTO 0) := X"BCFC"; -- 3.57Mhz
    CONSTANT CS_INACTIVE_CLKS  : INTEGER := 2;

    SIGNAL s_dtackcount     : STD_LOGIC_VECTOR(3 DOWNTO 0);
    SIGNAL s_ledtime        : STD_LOGIC_VECTOR(9 DOWNTO 0);
    SIGNAL s_clkdiv         : STD_LOGIC;

    SIGNAL s_clkreg         : STD_LOGIC_VECTOR(15 DOWNTO 0) := DEFAULT_CLK;
    SIGNAL s_setfreq        : STD_LOGIC := '0';
    SIGNAL s_spiclk         : STD_LOGIC;

    SIGNAL s_spi_sm         : t_SM_CS;
    SIGNAL s_ym_clockset    : STD_LOGIC := '0';

    SIGNAL s_start_spi_tx   : STD_LOGIC := '0';
    SIGNAL s_spi_ready      : STD_LOGIC := '0';
    SIGNAL s_clock_reg_sel  : STD_LOGIC := '0';
    SIGNAL s_spi_data       : STD_LOGIC_VECTOR(7 DOWNTO 0);
    SIGNAL s_spi_cs         : STD_LOGIC := '1';
    SIGNAL s_spi_iack_count : INTEGER RANGE 0 TO CS_INACTIVE_CLKS;

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
        IF (reset_i = '0') THEN
            s_start_spi_tx <= '0';
            s_spi_sm <= IDLE;
            s_ym_clockset <= '0';
            s_spi_cs <= '1';
        ELSIF (rising_edge(cpuclk_i)) THEN
            CASE s_spi_sm IS
                WHEN IDLE =>
                    IF s_spi_cs = '1' AND (s_ym_clockset = '0' OR s_clock_reg_sel = '1') THEN
                        s_spi_sm <= START;
                        s_start_spi_tx <= '1';
                    END IF;

				WHEN START =>
					s_start_spi_tx <= '0';
					s_spi_data <= s_clkreg(15 downto 8);
					s_spi_cs <= '0';
					s_spi_sm <= TRANSFER1;

                WHEN TRANSFER1 =>
                    IF s_spi_ready = '1' THEN
						s_spi_data <= s_clkreg(7 downto 0);
						s_start_spi_tx <= '1';
						s_spi_sm <= TRANSFER2;
                    END IF;

                WHEN TRANSFER2 =>
					s_start_spi_tx <= '0';
                    IF s_spi_ready = '1' THEN
						s_spi_sm <= CS_INACTIVE;
						s_spi_iack_count <= CS_INACTIVE_CLKS;
						s_ym_clockset <= '1';
                    END IF;

                WHEN CS_INACTIVE =>
					s_start_spi_tx <= '0';
					s_spi_cs <= '1';
                    IF s_spi_iack_count > 0 THEN
                        s_spi_iack_count <= s_spi_iack_count - 1;
                    ELSE
                        s_spi_sm <= IDLE;
                    END IF;
            END CASE;
        END IF;
	END PROCESS;

	ClkGen : ENTITY work.Clock
		PORT MAP(
			clk_i => cpuclk_i,
			clk_div8_o => s_clkdiv,
			clk_div16_o => s_spiclk
		);

	YMClock : ENTITY work.SPI_Master
        GENERIC MAP (
            SPI_MODE          => 0,
            CLKS_PER_HALF_BIT => 2
        )
		PORT MAP(
			i_Rst_L => reset_i,
			i_Clk => cpuclk_i,

			i_TX_Byte => s_spi_data,
			i_TX_DV => s_start_spi_tx,
			o_TX_Ready => s_spi_ready,

			o_RX_DV => OPEN,
			o_RX_Byte => OPEN,

			-- SPI Interface
			o_SPI_Clk => spi_clk_o,
			o_SPI_MOSI => spi_do_o,
			i_SPI_MISO => '0'
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
	s_clkreg <= data_io WHEN s_clock_reg_sel = '1' ELSE DEFAULT_CLK WHEN reset_i = '0';-- ELSE s_clkreg;

    csymclk_o <= s_spi_cs;

	--s_clkreg <= X"BCFC" when reset_i = '0' else data_io when addr_i = "1000000" and uds_i = '0' and lds_i = '0' and rw_i = '0' else s_clkreg;


    -- Write out device ID
	data_io <= BOARD_ID WHEN addr_i = "1111111" AND uds_i = '0' AND csreg_i = '0' ELSE "ZZZZZZZZZZZZZZZZ";

END Behavioral;
