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

	type dram_state_t  is (IDLE, RAS, CAS, TERM, PRE, REF_CAS, REF_RAS);
	signal state : dram_state_t;

	-- Max values for refresh counters
	constant ref_count_max 		: integer := 180;
	constant pre_count_max 		: integer := 1;
	constant ras_ref_count_max 	: integer := 1;

	signal addr_mux 	: std_logic := '0';
	signal byte_sel 	: std_logic_vector(3 downto 0);

	signal ref_ack 		: std_logic;
	signal ref_req 		: std_logic;

	signal cas_reg 		: std_logic_vector(3 downto 0);
	signal ras_reg 		: std_logic_vector(3 downto 0);

	signal dram_we 		: std_logic;

begin

	dram_we_n_o <= rw_i or dram_we;		-- Block write during refresh
	cback_n_o 	<= '1';					-- Disable cache bursts for now

	dsack0_n_o	<= '1';
	dsack1_n_o	<= '1';

	dram_addr_o <= address_i(13 downto 2) when addr_mux = '0' else address_i(25 downto 14);

	byte_sel(0) <= '0' when rw_i = '1' or address_i(1 downto 0) = "00" else '1';

	byte_sel(1) <= '0' when rw_i = '1' or address_i(1 downto 0) = "01" or 
					(address_i(1) = '0' and (siz0_i = '0' or siz1_i = '1')) else '1';

	byte_sel(2) <= '0' when rw_i = '1' or address_i(1 downto 0) = "10" or 
					(address_i(1) = '0' and ((siz0_i = '0' and siz1_i = '0') or 
					(siz0_i = '1' and siz1_i = '1') or 
					(address_i(0) = '1' and siz0_i = '0'))) else '1';

	byte_sel(3) <= '0' when rw_i = '1' or address_i(1 downto 0) = "11" or 
					(address_i(0) = '1' and siz0_i = '1' and siz1_i = '1') or 
					(siz0_i = '0' and siz1_i = '0') or 
					(address_i(1) = '1' and siz1_i = '1') else '1';

	cas_reg(0) 	<= byte_sel(0);
	cas_reg(1) 	<= byte_sel(2);
	cas_reg(2) 	<= byte_sel(1);
	cas_reg(3) 	<= byte_sel(3);

	ras_reg 	<= "1110" when address_i(27 downto 26) = "00" else
				   "1101" when address_i(27 downto 26) = "10" else
				   "1011" when address_i(27 downto 26) = "01" else
				   "0111" when address_i(27 downto 26) = "11";

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

	process(clock_40mhz_i, reset_n_i)
		variable pre_count 		: integer range 0 to pre_count_max;
		variable ras_ref_count 	: integer range 0 to ras_ref_count_max;
	begin
		if reset_n_i = '0' then
			state 			<= IDLE;
			ref_ack 		<= '0';
			addr_mux 		<= '0';
			dram_ras_n_o 	<= (others => '1');
			dram_casa_n_o 	<= (others => '1');
			dram_casb_n_o 	<= (others => '1');
			sterm_n_o 		<= '1';
			
			pre_count 		:= 0;
			ras_ref_count 	:= 0;
		elsif rising_edge(clock_40mhz_i) then
			ref_ack <= '0';
			
			case state is
				when IDLE =>
					state 			<= IDLE;
					addr_mux 		<= '0';
					sterm_n_o		<= '1';
					dram_we 		<= '0';
					dram_ras_n_o 	<= (others => '1');
					dram_casa_n_o 	<= (others => '1');
					dram_casb_n_o 	<= (others => '1');

				if ref_req = '1' then
					state 			<= REF_CAS;
					ref_ack 		<= '1';
					dram_we 		<= '1';
					dram_casa_n_o 	<= (others => '0');
					dram_casb_n_o 	<= (others => '0');
				elsif cs_dram_n_i = '0' then
					state			<= RAS;
					dram_ras_n_o	<= ras_reg;
				end if;

				when RAS =>
					addr_mux		<= '1';
					state 			<= CAS;

				when CAS =>
					dram_casa_n_o	<= cas_reg;
					dram_casb_n_o	<= cas_reg;
					sterm_n_o		<= '0';
					state 			<= PRE;

				when REF_CAS =>
					dram_ras_n_o 	<= (others => '0');
					state 			<= ref_ras;
			
				when REF_RAS =>
					if ras_ref_count = ras_ref_count_max then
						state <= pre;
						ras_ref_count := 0;
					else
						ras_ref_count := ras_ref_count + 1;
					end if;

				when PRE =>
					dram_ras_n_o 	<= (others => '1');
					dram_casa_n_o 	<= (others => '1');
					dram_casb_n_o 	<= (others => '1');	
					sterm_n_o		<= '1';
					dram_we 		<= '0';
				
					if pre_count = pre_count_max then
						state <= IDLE;
						pre_count := 0;
					else
						pre_count := pre_count + 1;
					end if;

				when OTHERS =>
					state 			<= IDLE;
					addr_mux 		<= '0';
					dram_we 		<= '0';
					sterm_n_o		<= '1';
					dram_ras_n_o 	<= (others => '1');
					dram_casa_n_o 	<= (others => '1');
					dram_casb_n_o 	<= (others => '1');	
			end case;
		end if;
	end process;

end Behavioral;

