library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity AudioYM2151 is
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

        csymclk_o   : out std_logic;
        spi_clk_o   : out std_logic;
        spi_do_o    : out std_logic;

        led_o       : out std_logic
    );
end AudioYM2151;

architecture Behavioral of AudioYM2151 is

    constant BOARD_ID       : std_logic_vector(15 downto 0) := X"2121";

    signal s_dtackcount     : std_logic_vector(2 downto 0);
    signal s_ledtime        : std_logic_vector(9 downto 0);
    signal s_clkdiv         : std_logic;
    signal s_idaddr         : std_logic;
    signal s_clkaddr        : std_logic;
    
    signal s_clkreg         : std_logic_vector(15 downto 0) := X"BCEE";
    signal s_prevclkreg     : std_logic_vector(15 downto 0) := X"0000";
    signal s_setfreq        : std_logic := '0';
    signal s_spiclk         : std_logic;
    
    signal s_setclock       : std_logic := '0';
    signal s_spi_enable     : std_logic := '0';
    signal s_spi_busy       : std_logic := '0';
    signal s_miso           : std_logic := '0';
    signal s_clkdone        : std_logic;
    signal s_spiread        : std_logic_vector(15 downto 0);
   
begin

    dtack_gen : process(cpuclk_i, reset_i, csreg_i, csdata_i)
    begin
        if reset_i = '0' or (csdata_i = '1' and csreg_i = '1') then
            s_dtackcount <= (others => '0');
        elsif rising_edge(cpuclk_i) then
            if s_dtackcount < "111" then
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
	
    ClkGen: entity work.Clock 
        port map (
           clk_i        => cpuclk_i,
           clk_div8_o   => s_clkdiv,
           clk_div16_o  => s_spiclk
        );
            
    YMClock: entity work.spi_master
        port map (
            clk         => s_spiclk, 
            reset_n     => reset_i,
            enable      => s_setclock,
            cpol        => '1',
            cpha        => '0',
            miso        => s_miso,
            sclk        => spi_clk_o,
            ss_n        => csymclk_o,
            mosi        => spi_do_o,
            busy        => s_spi_busy,
            tx          => s_clkreg,
            rx          => s_spiread
        );

    -- Generate DTACK signal
    dtack_o <= '0' when s_dtackcount > "011" and (csdata_i = '0' or csreg_i = '0') else '1';
    
    -- Flash activity LED
    led_o <= '0' when s_ledtime < "1111111111" else '1';

    -- Address decoding
    s_idaddr <= '1' when addr_i = "1111111" else '0';
    s_clkaddr <= '1' when std_match(addr_i, "1-0000-") else '0';
    
    -- YM2151 decoding
    ym_rd_o <= '0' when s_idaddr = '0' and s_clkaddr = '0' and uds_i = '0' and csreg_i = '0' and rw_i = '1' else '1';
    ym_wr_o <= '0' when s_idaddr = '0' and s_clkaddr = '0' and uds_i = '0' and csreg_i = '0' and rw_i = '0' else '1';
    ym_cs_o <= '0' when s_idaddr = '0' and s_clkaddr = '0' and uds_i = '0' and csreg_i = '0' else '1';

    -- YM2151 clock control (1000000 for clock speed, 1100000 for status register)
    -- Status register just has busy bit in the lsb
    data_io <= "0000000" & s_spi_busy & "0000000" & s_spi_busy when s_clkaddr = '1' and addr_i(6) = '1' and uds_i = '0' and rw_i = '1' else (others => 'Z');
    data_io <= s_clkreg when s_clkaddr = '1' and addr_i(1) = '0' and uds_i = '0' and lds_i = '0' and rw_i = '1' else (others => 'Z');
    s_clkreg <= data_io when s_clkaddr = '1' and addr_i(1) = '0' and uds_i = '0' and lds_i = '0' and rw_i = '0' else s_clkreg;
        
    -- Write out device ID
    data_io <= BOARD_ID when addr_i = "1111111" and uds_i = '0' and csreg_i = '0' else "ZZZZZZZZZZZZZZZZ";

end Behavioral;

