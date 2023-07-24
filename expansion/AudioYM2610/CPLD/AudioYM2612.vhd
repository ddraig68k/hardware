library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity AudioYM2612 is
    Port (
        data_io     : inout std_logic_vector (15 downto 0);
        addr_i      : in std_logic_vector (7 downto 1);

        cpuclk_i    : in std_logic;
        csdata_i    : in std_logic;
        csreg_i     : in std_logic;

        reset_i     : in std_logic;
        lds_i       : in std_logic;
        uds_i       : in std_logic;
        rw_i        : in std_logic;

        dtack_o     : out std_logic;

        ym_cs_o     : out std_logic;
        ym_wr_o     : out std_logic;
        ym_rd_o     : out std_logic;

        sn_rdy_i    : in std_logic;
        sn_cs_o     : out std_logic;
        sn_we_o     : out std_logic;

        csymclk_o   : out std_logic;
        cssnclk_o   : out std_logic;
        enymclk_o   : out std_logic;
        ensnclk_o   : out std_logic;
        spi_clk_o   : out std_logic;
        spi_do_o    : out std_logic;
        spi_di_i    : in std_logic;

        led_o       : out std_logic
    );
end AudioYM2612;

architecture Behavioral of AudioYM2612 is

    TYPE t_SM_CS is (IDLE, STARTYM, STARTSN,TRANSFERYM1, TRANSFERYM2, TRANSFERN1, TRANSFERSN2, CS_INACTIVE);

    constant BOARD_ID       : STD_LOGIC_VECTOR(15 DOWNTO 0) := X"2222";
    constant DEFAULT_CLKYM  : STD_LOGIC_VECTOR(15 DOWNTO 0) := X"CE14"; -- 7.60Mhz
    constant DEFAULT_CLKSN  : STD_LOGIC_VECTOR(15 DOWNTO 0) := X"BCFC"; -- 3.57Mhz
    CONSTANT CS_INACTIVE_CLKS  : INTEGER := 2;

    SIGNAL s_dtackcount     : STD_LOGIC_VECTOR(3 DOWNTO 0);
    SIGNAL s_ledtime        : STD_LOGIC_VECTOR(9 DOWNTO 0);
    SIGNAL s_clkdiv         : STD_LOGIC;
    
    SIGNAL s_clkreg_ym      : STD_LOGIC_VECTOR(15 DOWNTO 0) := X"0000";
    SIGNAL s_clkreg_sn      : STD_LOGIC_VECTOR(15 DOWNTO 0) := X"0000";
    SIGNAL s_spiclk         : STD_LOGIC;
    
    SIGNAL s_spi_sm         : t_SM_CS;
    SIGNAL s_ym_clockset    : STD_LOGIC := '0';
    SIGNAL s_sn_clockset    : STD_LOGIC := '0';

    SIGNAL s_start_spi_tx   : STD_LOGIC := '0';
    SIGNAL s_spi_ready      : STD_LOGIC := '0';
    SIGNAL s_clock_reg_sel  : STD_LOGIC := '0';
    SIGNAL s_spi_data       : STD_LOGIC_VECTOR(7 DOWNTO 0);
    SIGNAL s_spi_ym_cs      : STD_LOGIC := '1';
    SIGNAL s_spi_sn_cs      : STD_LOGIC := '1';
    SIGNAL s_spi_iack_count : INTEGER RANGE 0 TO CS_INACTIVE_CLKS;
   
begin

    dtack_gen : process(cpuclk_i, reset_i, csreg_i, csdata_i)
    begin
        if reset_i = '0' or (csdata_i = '1' and csreg_i = '1') then
            s_dtackcount <= (others => '0');
        elsif rising_edge(cpuclk_i) then
            if s_dtackcount < "1111" then
                s_dtackcount <= s_dtackcount + 1;
            end if;
        end if;
    end process;

    led_flash : process (s_clkdiv, reset_i, csdata_i, csreg_i)
	begin
		if reset_i = '0' or csdata_i = '0' or csreg_i = '0' then
			s_ledtime <= (others => '0');
		elsif rising_edge(s_clkdiv) then
			if s_ledtime < "1111111111" then
				s_ledtime <= s_ledtime + 1;
			end if;
		end if;
	end process;

	set_clock : PROCESS (cpuclk_i, reset_i)
	BEGIN
        IF (reset_i = '0') THEN
            s_start_spi_tx <= '0';
            s_spi_sm <= IDLE;
            s_ym_clockset <= '0';
            s_sn_clockset <= '0';
            s_spi_ym_cs <= '1';
            s_spi_sn_cs <= '1';
        ELSIF (rising_edge(cpuclk_i)) THEN
            CASE s_spi_sm IS
                WHEN IDLE =>
                    IF s_spi_ym_cs = '1' AND (s_ym_clockset = '0' OR s_clock_reg_ym = '1') THEN
                        s_spi_sm <= STARTYM;
                        s_start_spi_tx <= '1';
                    ELSIF s_spi_sn_cs = '1' AND (s_sn_clockset = '0' OR s_clock_reg_sn = '1') THEN
                        s_spi_sm <= STARTSN;
                        s_start_spi_tx <= '1';
                    END IF;

				WHEN STARTYM =>
					s_start_spi_tx <= '0';
					s_spi_data <= s_clkreg(15 downto 8);
					s_spi_ym_cs <= '0';
					s_spi_sm <= TRANSFERYM1;

                WHEN TRANSFERYM1 =>
                    IF s_spi_ready = '1' THEN
						s_spi_data <= s_clkreg(7 downto 0);
						s_start_spi_tx <= '1';
						s_spi_sm <= TRANSFERYM2;
                    END IF;

                WHEN TRANSFERYM2 =>
					s_start_spi_tx <= '0';
                    IF s_spi_ready = '1' THEN
						s_spi_sm <= CS_INACTIVE;
						s_spi_iack_count <= CS_INACTIVE_CLKS;
						s_ym_clockset <= '1';
                    END IF;

				WHEN STARTSN =>
					s_start_spi_tx <= '0';
					s_spi_data <= s_clkreg(15 downto 8);
					s_spi_sn_cs <= '0';
					s_spi_sm <= TRANSFERSN1;

                WHEN TRANSFERSN1 =>
                    IF s_spi_ready = '1' THEN
						s_spi_data <= s_clkreg(7 downto 0);
						s_start_spi_tx <= '1';
						s_spi_sm <= TRANSFERSN2;
                    END IF;

                WHEN TRANSFERSN2 =>
					s_start_spi_tx <= '0';
                    IF s_spi_ready = '1' THEN
						s_spi_sm <= CS_INACTIVE;
						s_spi_iack_count <= CS_INACTIVE_CLKS;
						s_sc_clockset <= '1';
                    END IF;

                WHEN CS_INACTIVE =>
					s_start_spi_tx <= '0';
					s_spi_ym_cs <= '1';
					s_spi_sn_cs <= '1';
                    IF s_spi_iack_count > 0 THEN
                        s_spi_iack_count <= s_spi_iack_count - 1;
                    ELSE
                        s_spi_sm <= IDLE;
                    END IF;
            END CASE;
        END IF;
	END PROCESS;

    
    -- Determine which LTC6903 to write to depending on the address written to.
    -- Addr[7:6] = "10" for the YM2612 Clock
    -- Addr[7:6] = "11" for the SN76489 Clock
    SelectSPI: process(addr_i(7), addr_i(6), csreg_i)
    begin
        if (csreg_i = '0' and addr_i(7) = '1' and addr_i(6) = '0') then
            s_spien_ym <= '1';
            s_spien_sn <= '0';
        elsif (csreg_i = '0' and addr_i(7) = '1' and addr_i(6) = '1') then
            s_spien_ym <= '0';
            s_spien_sn <= '1';
        end if;
    end process;
	
    ClkGen: entity work.Clock 
        port map (
           clk_i        => cpuclk_i,
           clk_div8_o   => s_clkdiv,
           clk_div16_o  => s_spiclk
        );
            
	SPIMaster : ENTITY work.SPI_Master
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
    dtack_o <= '0' when s_dtackcount > "0100" and (csdata_i = '0' or csreg_i = '0') else '1';
    
    -- Flash activity LED
    led_o <= '1' when s_ledtime < "1111111111" else '0';

    -- YM2612 decoding
    ym_rd_o <= not rw_i;
    ym_wr_o <= rw_i;
    ym_cs_o <= '0' when addr_i(7 downto 2) = "000000" and uds_i = '0' and csreg_i = '0' else '1';

    sn_we_o <= rw_i;
    sn_cs_o <= '0' when addr_i(7 downto 2) = "000010" and uds_i = '0' and csreg_i = '0' else '1';

    -- YM2612 clock control
    s_clock_reg_ym <= '1' WHEN addr_i = "1000000" AND uds_i = '0' AND lds_i = '0' AND rw_i = '0' AND csreg_i = '0' ELSE '0';
    s_clock_reg_sn <= '1' WHEN addr_i = "1100000" AND uds_i = '0' AND lds_i = '0' AND rw_i = '0' AND csreg_i = '0' ELSE '0';
    s_clkreg_ym <= data_io WHEN s_clock_reg_ym = '1' ELSE DEFAULT_CLKYM WHEN reset_i = '0';
    s_clkreg_sn <= data_io WHEN s_clock_reg_sn = '1' ELSE DEFAULT_CLKSN WHEN reset_i = '0';
        
    -- Write out device ID
    data_io <= BOARD_ID when addr_i = "1111111" and uds_i = '0' and csreg_i = '0' else "ZZZZZZZZZZZZZZZZ";

    csymclk_o <= s_spi_ym_cs;
    cssnclk_o <= s_spi_sn_cs;
    
    enymclk_o <= reset_i;
    ensnclk_o <= reset_i;
    
end Behavioral;

