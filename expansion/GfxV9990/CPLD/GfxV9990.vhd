library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity GfxV9990 is
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
		wait_i		: in std_logic;
        vdpw_o      : out std_logic;
        vdpr_o      : out std_logic;
        dtack_o     : out std_logic;
        led_o       : out std_logic
    );
end GfxV9990;

architecture Behavioral of GfxV9990 is

    constant BOARD_ID       : std_logic_vector(7 downto 0) := X"12";

    signal s_dtackcount     : std_logic_vector(2 downto 0);
    signal s_ledtime        : std_logic_vector(7 downto 0);
    signal s_clkdiv         : std_logic;
    signal s_idsel         	: std_logic;
	signal s_vdpsel			: std_logic;
		
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
                clk_i => cpuclk_i, clk_div2_o => OPEN, clk_div4_o => OPEN, clk_div8_o => s_clkdiv
            );

	AddrDec: entity work.AddressDecode
		port map (
				addr => addr_i, lds => lds_i, uds => uds_i, csreg => csreg_i, vdpsel => s_vdpsel, idsel => s_idsel
			);
	
	VDP: entity work.VDPState
		port map (
			clk => cpuclk_i, reset => reset_i, vdpsel => s_vdpsel, rw => rw_i, vdpw => vdpw_o, vdpr => vdpr_o
		);
		
    -- Generate DTACK signal
    dtack_o <= '0' when s_dtackcount > "100" and (csdata_i = '0' or csreg_i = '0') and wait_i = '1' else '1';
    
        -- Flash activity LED
    led_o <= '0' when s_ledtime < "11111111" else '1';
              
    -- Write out device ID
    data_io <= BOARD_ID when s_idsel = '1' else "ZZZZZZZZ";
	
end Behavioral;
