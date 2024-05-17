library IEEE;
use IEEE.std_logic_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.std_logic_UNSIGNED.ALL;

entity DRAMController is
    Port (
		clock_40mhz_i 	: in std_logic;
		reset_n_i		: in std_logic;

		address_i		: in std_logic_vector (28 downto 0);
		siz0_i			: in std_logic;
		siz1_i			: in std_logic;
		
		rw_i 			: in std_logic;
		as_n_i			: in std_logic;
		ds_n_i			: in std_logic;
		cs_dram_n_i		: in std_logic;
		cbreq_n_i		: in std_logic;

		cback_n_o		: out std_logic;
		dsack0_n_o		: out std_logic;
		dsack1_n_o		: out std_logic;
		sterm_n_o		: out std_logic;
		
		dram_addr_o		: out std_logic_vector (11 downto 0);
		dram_ras_n_o	: out std_logic_vector (3 downto 0);
		dram_casa_n_o	: out std_logic_vector (3 downto 0);
		dram_casb_n_o	: out std_logic_vector (3 downto 0);
		dram_we_n_o		: out std_logic
	);
end DRAMController;

architecture Behavioral of DRAMController is

	type dram_state_t  is (IDLE, SYNC_RW1, SYNC_RW2, ASYNC_RW1, ASYNC_RW2, REFRESH1, REFRESH2, REFRESH3, REFRESH4, PRECHARGE);
	signal state : dram_state_t;

	-- Max values for refresh counters
	constant ref_count_max 		: integer := 312;

	signal addr_mux 	: std_logic := '0';
	signal byte_sel 	: std_logic_vector(3 downto 0);

	signal ref_ack 		: std_logic;
	signal ref_req 		: std_logic;

begin
	cback_n_o 	<= '1';					-- Disable cache bursts for now

	dram_addr_o <= address_i(13 downto 2) 
					when addr_mux = '0' 
				   	else address_i(25 downto 14);

	byte_sel(0) <= '0'
					when address_i(1 downto 0) = "00"
					or rw_i = '1'
					else '1';

	byte_sel(1) <= '0' 
					when address_i(1 downto 0) = "01" 
					or (address_i(1) = '0' and (siz0_i = '0' or siz1_i = '1'))
					or rw_i = '1' 
					else '1';

	byte_sel(2) <= '0' 
					when address_i(1 downto 0) = "10"
					or (address_i(1) = '0' and ((siz0_i = '0' and siz1_i = '0')
					or (siz0_i = '1' and siz1_i = '1')
					or (address_i(0) = '1' and siz0_i = '0')))
					or rw_i = '1'
					else '1';

	byte_sel(3) <= '0'
					when address_i(1 downto 0) = "11"
					or (address_i(0) = '1' and siz0_i = '1' and siz1_i = '1')
					or (siz0_i = '0' and siz1_i = '0')
					or (address_i(1) = '1' and siz1_i = '1')
					or rw_i = '1'
					else '1';

	process (clock_40mhz_i, reset_n_i)
		variable count : integer range 0 to ref_count_max;
	begin
		if reset_n_i = '0' then
			ref_req <= '0';
			count := 0;
		elsif rising_edge(clock_40mhz_i) then
			if count < ref_count_max then
				count := count + 1;
			else
				ref_req <= '1';
			end if;
			
			if ref_ack = '1' then
				ref_req <= '0';
				count := 0;
			end if;
		end if;
	end process;

	process (clock_40mhz_i, reset_n_i)
	begin
		if reset_n_i = '0' then
			state 			<= IDLE;
			ref_ack 		<= '0';
			addr_mux 		<= '0';
			dram_ras_n_o 	<= (others => '1');
			dram_casa_n_o 	<= (others => '1');
			dram_casb_n_o 	<= (others => '1');
			sterm_n_o 		<= '1';
			dram_we_n_o		<= '1';
			dsack0_n_o		<= '1';
			dsack1_n_o		<= '1';

			
		elsif rising_edge(clock_40mhz_i) then
			ref_ack <= '0';
			
			case state is
				when IDLE =>
					state 			<= IDLE;
					addr_mux 		<= '0';
					sterm_n_o		<= '1';
					dram_we_n_o 	<= '1';
					dram_ras_n_o 	<= (others => '1');
					dram_casa_n_o 	<= (others => '1');
					dram_casb_n_o 	<= (others => '1');
					dsack0_n_o		<= '1';
					dsack1_n_o		<= '1';

					if ref_req = '1' then
						state 			<= REFRESH1;
						ref_ack 		<= '1';
						dram_casa_n_o 	<= (others => '0');
						dram_casb_n_o 	<= (others => '0');
					elsif cs_dram_n_i = '0' then
						state			<= ASYNC_RW1;
						dram_ras_n_o	<= "0101";
					end if;

				when SYNC_RW1 =>
					addr_mux		<= '1';
					if rw_i = '0' then
						dram_we_n_o <= '0';
					end if;
					state 			<= SYNC_RW2;

				when SYNC_RW2 =>
					dram_casa_n_o	<= byte_sel;
					dram_casb_n_o	<= byte_sel;

					if rw_i = '0' then
						dram_we_n_o <= '0';
					end if;
					
					sterm_n_o		<= '0';
					state 			<= IDLE;

				when ASYNC_RW1 =>
					addr_mux		<= '1';
					state 			<= ASYNC_RW2;

				when ASYNC_RW2 =>
					dram_casa_n_o	<= byte_sel;
					dram_casb_n_o	<= byte_sel;

					dsack0_n_o		<= '0';
					dsack1_n_o		<= '0';
					state 			<= IDLE;

				when REFRESH1 =>
					dram_ras_n_o 	<= (others => '1');
					dram_casa_n_o 	<= (others => '0');
					dram_casb_n_o 	<= (others => '0');	
					state 			<= REFRESH2;
			
				when REFRESH2 =>
					dram_ras_n_o 	<= (others => '0');
					dram_casa_n_o 	<= (others => '0');
					dram_casb_n_o 	<= (others => '0');	
					state 			<= REFRESH3;

				when REFRESH3 =>
					dram_ras_n_o 	<= (others => '0');
					dram_casa_n_o 	<= (others => '1');
					dram_casb_n_o 	<= (others => '1');	
					state 			<= REFRESH4;

				when REFRESH4 =>
					dram_ras_n_o 	<= (others => '1');
					dram_casa_n_o 	<= (others => '1');
					dram_casb_n_o 	<= (others => '1');	
					state 			<= PRECHARGE;

				when PRECHARGE =>
					dram_ras_n_o 	<= (others => '1');
					dram_casa_n_o 	<= (others => '1');
					dram_casb_n_o 	<= (others => '1');	
					sterm_n_o		<= '1';
					dram_we_n_o		<= '1';
			
					state <= IDLE;

				when OTHERS =>
					state 			<= IDLE;
					addr_mux 		<= '0';
					dram_we_n_o		<= '1';
					sterm_n_o		<= '1';
					dram_ras_n_o 	<= (others => '1');
					dram_casa_n_o 	<= (others => '1');
					dram_casb_n_o 	<= (others => '1');	
			end case;
		end if;
	end process;

end Behavioral;

