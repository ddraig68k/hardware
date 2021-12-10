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

    constant BOARD_ID       : std_logic_vector(15 downto 0) := X"2222";

    signal s_dtackcount     : std_logic_vector(3 downto 0);
    signal s_ledtime        : std_logic_vector(9 downto 0);
    signal s_clkdiv         : std_logic;
    
    signal s_clkreg         : std_logic_vector(15 downto 0) := X"0000";
    signal s_prevclkreg     : std_logic_vector(15 downto 0) := X"0000";
    signal s_setfreq        : std_logic := '0';
    signal s_spiclk         : std_logic;
    
    signal s_setclock       : std_logic := '0';
    signal s_spi_enable     : std_logic := '0';
    signal s_spi_busy       : std_logic := '0';
    signal s_miso           : std_logic := '0';
    signal s_clkdone        : std_logic;
    signal s_spiread        : std_logic_vector(15 downto 0);
    
    signal s_spi_ss         : std_logic;
    signal s_spien_sn       : std_logic := '0';
    signal s_spien_ym       : std_logic := '0';
   
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

    set_clock : process (cpuclk_i, reset_i)
    begin
        if (rising_edge(cpuclk_i)) then
            if (reset_i = '0') then
                s_clkdone <= '0';
                s_setclock <= '1';
				s_prevclkreg <= (others => '0');
            else
                if (s_clkreg /= s_prevclkreg and s_spi_busy = '0') then
                    s_setclock <= '1';
                    s_prevclkreg <= s_clkreg;
                    s_spi_enable <= '0';
                elsif (s_setclock = '1' and s_spi_busy = '0') then
                    s_spi_enable <= '1';
                elsif (s_setclock = '1' and s_spi_busy = '1') then
                    s_setclock   <= '0';
                elsif (s_spi_busy = '0') then
                    s_spi_enable <= '0';
                    s_setclock   <= '0';
                end if;
            end if;
        end if;
    end process;
    
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
            
    SPIMaster: entity work.spi_master
        port map (
            clk         => s_spiclk, 
            reset_n     => reset_i,
            enable      => s_setclock,
            cpol        => '0',
            cpha        => '0',
            sclk        => spi_clk_o,
            ss_n        => s_spi_ss,
            mosi        => spi_do_o,
            busy        => s_spi_busy,
            tx          => s_clkreg
        );
        
    -- Generate DTACK signal
    dtack_o <= '0' when s_dtackcount > "0100" and (csdata_i = '0' or csreg_i = '0') and sn_rdy_i = '1' else '1';
    
    -- Flash activity LED
    led_o <= '1' when s_ledtime < "1111111111" else '0';

    -- YM2612 decoding
    ym_rd_o <= not rw_i;
    ym_wr_o <= rw_i;
    ym_cs_o <= '0' when addr_i(7 downto 2) = "000000" and uds_i = '0' and csreg_i = '0' else '1';

    sn_we_o <= rw_i;
    sn_cs_o <= '0' when addr_i(7 downto 2) = "000001" and uds_i = '0' and csreg_i = '0' else '1';

    -- YM2612 clock control
    s_clkreg <= X"BCFC" when reset_i = '0' else data_io when addr_i = "1000000" and uds_i = '0' and lds_i = '0' and rw_i = '0' else s_clkreg;
        
    -- Write out device ID
    data_io <= BOARD_ID when addr_i = "1111111" and uds_i = '0' and csreg_i = '0' else "ZZZZZZZZZZZZZZZZ";

    csymclk_o <= '0' when s_spi_ss = '0' and s_spien_ym = '1' else '1';
    cssnclk_o <= '0' when s_spi_ss = '0' and s_spien_sn = '1' else '1';
    
    enymclk_o <= reset_i;
    ensnclk_o <= reset_i;
    
end Behavioral;

