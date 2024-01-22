library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity AudioSID is
    Port (
        data_io     : inout std_logic_vector(7 downto 0);
        addr_i      : in std_logic_vector(7 downto 1);
        cpuclk_i    : in std_logic;
        csreg_i     : in std_logic;
        csdata_i    : in std_logic;
        uds_i       : in std_logic;
        lds_i       : in std_logic;
        rw_i        : in std_logic;
        reset_i     : in std_logic;
        dtack_o     : out std_logic;
        cs_sid1_o   : out std_logic;
        cs_sid2_o   : out std_logic;
        clk_1mhz_o  : out std_logic;
        led_o       : out std_logic
    );
end AudioSID;

architecture Behavioral of AudioSID is

    constant BOARD_ID       : std_logic_vector(7 downto 0) := X"23";

    signal s_dtackcount     : std_logic_vector(2 downto 0);
    signal s_ledtime        : std_logic_vector(7 downto 0);
    signal s_clkdiv         : std_logic;
    signal s_idsel         	: std_logic;
	signal s_sid1sel		: std_logic;
	signal s_sid2sel		: std_logic;
    signal s_clk1mhz        : std_logic;
		
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
			if s_ledtime < "11111111" then
				s_ledtime <= s_ledtime + 1;
			end if;
		end if;
	end process;
	
    ClkGen: entity work.Clock 
        port map (
                clk_i => cpuclk_i, clk_div8_o => s_clkdiv, clk_div10_o => s_clk1mhz
            );

   -- Address decoding
	s_idsel 	<= '1' WHEN csreg_i = '0' AND (lds_i = '0' OR uds_i = '0') AND rw_i = '1' AND addr_i = "1111111" ELSE '0';
	s_sid1sel	<= '0' WHEN csreg_i = '0' AND uds_i = '0' AND addr_i(7 downto 6) = "00" ELSE '1';
	s_sid2sel	<= '0' WHEN csreg_i = '0' AND uds_i = '0' AND addr_i(7 downto 6) = "01" ELSE '1';

    -- Generate DTACK signal
    dtack_o <= '1' when s_dtackcount > "100" and (csdata_i = '0' or csreg_i = '0') else '0';
    
        -- Flash activity LED
    led_o <= '0' when s_ledtime < "11111111" else '1';
              
    -- Write out device ID
    data_io <= BOARD_ID when s_idsel = '1' else "ZZZZZZZZ";
	
    cs_sid1_o   <= s_sid1sel;
    cs_sid2_o   <= s_sid2sel;
    clk_1mhz_o  <= s_clk1mhz;

end Behavioral;
