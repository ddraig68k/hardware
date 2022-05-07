library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity Joypad is
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
        led_o       : out std_logic;
		data_clk_o	: out std_logic;
		joy1oe_o	: out std_logic;
		joy2oe_o	: out std_logic;
		joy1sel_o	: out std_logic;
		joy2sel_o	: out std_logic
    );
end Joypad;

architecture Behavioral of Joypad is

    constant BOARD_ID       : std_logic_vector(7 downto 0) := X"42";

    signal s_dtackcount     : std_logic_vector(2 downto 0);
    signal s_ledtime        : std_logic_vector(9 downto 0);
	signal s_joyclk			: std_logic; 
    signal s_clkdiv         : std_logic;
    signal s_idaddr         : std_logic;

	signal s_data_io		: std_logic_vector(7 downto 0) := "ZZZZZZZZ";
	signal s_joy1oe			: std_logic := '1';
	signal s_joy2oe			: std_logic := '1';
	signal s_joy1sel		: std_logic := '0';
	signal s_joy2sel		: std_logic := '0';
	
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

    ClkGen: entity work.Clock 
        port map (
                clk_i => cpuclk_i, clk_div4_o => s_joyclk, clk_div8_o => s_clkdiv
            );

	addr_decode : process (cpuclk_i, reset_i, csreg_i)
	begin
		if (reset_i = '0') then
			s_joy1sel <= '0';
			s_joy2sel <= '0';
		else
			if (rising_edge(cpuclk_i)) then
				-- Device ID
				if (std_match(addr_i, "111111-") and csreg_i = '0') then
					s_data_io <= BOARD_ID;
				else
					s_data_io <= "ZZZZZZZZ";
				end if;
				
				-- Read joypad 1
				if (std_match(addr_i, "0000000") and csreg_i = '0' and rw_i = '1') then
					s_joy1oe <= '0';
				else
					s_joy1oe <= '1';
				end if;

				-- Read joypad 2
				if (std_match(addr_i, "0000001") and csreg_i = '0' and rw_i = '1') then
					s_joy2oe <= '0';
				else
					s_joy2oe <= '1';
				end if;

				-- Set joypad 1 select signal
				if (std_match(addr_i, "0000000") and csreg_i = '0' and rw_i = '0' and uds_i = '0') then
					s_joy1sel <= data_io(0);
				end if;

				-- Set joypad 2 select signal
				if (std_match(addr_i, "0000001") and csreg_i = '0' and rw_i = '0' and uds_i = '0') then
					s_joy2sel <= data_io(0);
				end if;

			end if;
		end if;
	end process;

    -- Generate DTACK signal
    dtack_o <= '0' when s_dtackcount > "010" and (csdata_i = '0' or csreg_i = '0') else '1';
    
        -- Flash activity LED
    led_o <= '0' when s_ledtime < "1111111111" else '1';
                
	data_io <= s_data_io;
	joy1oe_o <= s_joy1oe;
	joy2oe_o <= s_joy2oe;
	joy1sel_o <= s_joy1sel;
	joy2sel_o <= s_joy2sel;
	data_clk_o <= s_joyclk when (s_joy1oe = '1' and s_joy2oe = '1') else '0';
end Behavioral;

