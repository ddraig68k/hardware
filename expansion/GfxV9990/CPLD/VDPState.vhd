library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity VDPState is
    Port ( clk      : in STD_LOGIC;
           reset    : in STD_LOGIC;
           vdpsel   : in STD_LOGIC;
           rw       : in STD_LOGIC;
           vdpw     : out STD_LOGIC;
           vdpr     : out STD_LOGIC);
end VDPState;

architecture Behavioral of VDPState is
	type STATES is (VDPIDLE, VDPWRITE, VDPWRITE2, VDPREAD, VDPWAIT);
	
	signal s_state 	: STATES := VDPIDLE;
begin

	FSM: process(clk, reset, vdpsel)
	begin
		if (reset = '0' or vdpsel = '0') then
			s_state <= VDPIDLE;
			vdpw 	<= '1';
			vdpr	<= '1';
		else
			if (rising_edge(clk)) then
				case s_state is
					when VDPIDLE => 
						vdpw <= '1';
						vdpr <= '1';
						if (vdpsel = '1') then
							if (rw = '0') then
								--vdpw <= '0';
								s_state <= VDPWRITE;
							else
								--vdpr <= '0';
								s_state <= VDPREAD;
							end if;
						end if;
					
					when VDPWRITE =>
						vdpw <= '0';
						--s_state <= VDPWAIT;
						s_state <= VDPWRITE2;

					when VDPWRITE2 =>
						vdpw <= '0';
						s_state <= VDPWAIT;
						
					when VDPREAD =>
						vdpr <= '0';
						s_state <= VDPWAIT;
						
					when VDPWAIT =>
						vdpw <= '1';
						if (vdpsel = '0') then
							s_state <= VDPIDLE;
							vdpr 	<= '1';
						end if;
				end case;
			end if;
		end if;
	end process;

end Behavioral;

