library IEEE;
use IEEE.std_logic_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.std_logic_UNSIGNED.ALL;

entity DRAMStateMachine is
    Port (
		clk_i 		: in std_logic;
        dram_sel_i	: in std_logic;
        reset_i		: in std_logic;
        lds_i 		: in std_logic;
        uds_i 		: in std_logic;
        rw_i 		: in std_logic;
		as_i		: in std_logic;
        ras0_o 		: out std_logic;
        ras1_o		: out std_logic;
        cas0_o 		: out std_logic;
        cas1_o 		: out std_logic;
        we_o 		: out std_logic;
		mux_o 		: out std_logic;
        dtack_o		: out std_logic
	);
end DRAMStateMachine;

architecture Behavioral of DRAMStateMachine is
	-- async signals
	signal s_ras0_async		: std_logic;
	signal s_ras1_async		: std_logic;
	signal s_cas0_async		: std_logic;
	signal s_cas1_async		: std_logic;
	signal s_we_async		: std_logic;
	signal s_refack_async	: std_logic;
	signal s_mux_async		: std_logic;
	signal s_dtack_async	: std_logic;
	
	-- state signals
	signal s_refreq			: std_logic; 					-- Refresh request
	signal s_term_count		: std_logic; 					-- Refresh counter terminal count signal
	signal s_refcount		: std_logic_vector(9 downto 0);	-- The refresh counter
	signal s_refack			: std_logic;					-- Refresh acknowlege
	signal s_state			: std_logic_vector(3 downto 0);	-- Current state
	signal s_next_state		: std_logic_vector(3 downto 0);	-- Next state
	
	-- state declarations
	constant idle			: std_logic_vector(3 downto 0) := "0000";
	constant mem_rw1		: std_logic_vector(3 downto 0) := "0001";
	constant mem_rw2		: std_logic_vector(3 downto 0) := "0010";
	constant mem_rw3   		: std_logic_vector(3 downto 0) := "0011";
	constant mem_rw4   		: std_logic_vector(3 downto 0) := "0100";
	constant mem_rw5   		: std_logic_vector(3 downto 0) := "0101";
	constant ref_cbr1		: std_logic_vector(3 downto 0) := "0110";
	constant ref_cbr2  		: std_logic_vector(3 downto 0) := "0111";
	constant ref_cbr3  		: std_logic_vector(3 downto 0) := "1000";
	constant ref_cbr4  		: std_logic_vector(3 downto 0) := "1001";
	constant precharge 		: std_logic_vector(3 downto 0) := "1010";
	constant unused1  		: std_logic_vector(3 downto 0) := "1011";
	constant unused2		: std_logic_vector(3 downto 0) := "1100";
	constant unused3		: std_logic_vector(3 downto 0) := "1101";
	constant unused4		: std_logic_vector(3 downto 0) := "1110";
	constant unused5		: std_logic_vector(3 downto 0) := "1111";
	
begin

-- The DRAM controller state machine is implemented as a two-process FSM.
-- The first process is the asynchronous one that determines the next state based upon current state and other inputs.
-- Internal control signal levels are also set in this process.
-- The second process is a small synchronous process that synchronizes the state transitions and control signal outputs to the system clock.

	---------------------------------------
	------ Asynchronous process -----------
	---------------------------------------
	as_control: process(dram_sel_i, s_refreq, s_state, as_i, rw_i, lds_i, uds_i)
	begin
		case s_state is
			when idle =>
				s_ras0_async 	<= '1';
				s_ras1_async 	<= '1';
				s_cas0_async 	<= '1';
				s_cas1_async 	<= '1';
				s_dtack_async 	<= '1';
				s_refack_async	<= '0';
				s_we_async 		<= '1';
				s_mux_async		<= '0';
				
				if (s_refreq = '1') then
					s_next_state 	<= ref_cbr1;		-- do a refresh cycle
				elsif (dram_sel_i = '1' and as_i = '0') then
					s_next_state 	<= mem_rw1;			-- do a normal read/write cycle
				else
					s_next_state	<= idle;			-- stay in the idle state
				end if;
				
			when mem_rw1 =>								-- dram access start
				s_ras0_async	<= '1';
				s_ras1_async	<= '1';
				s_cas0_async	<= '1';
				s_cas1_async	<= '1';
				s_refack_async	<= '0';
				s_dtack_async	<= '1';
				s_mux_async		<= '0';
				s_we_async		<= '1';
				s_next_state	<= mem_rw2;

			when mem_rw2 =>								-- assert RAS
				s_ras0_async	<= '0';
				s_ras1_async	<= '0';
				s_cas0_async	<= '1';
				s_cas1_async	<= '1';
				s_refack_async	<= '0';
				s_dtack_async	<= '1';
				s_mux_async		<= '0';
				s_we_async		<= '1';
				s_next_state	<= mem_rw3;
			
			when mem_rw3 =>								-- multiplex address
				s_ras0_async	<= '0';
				s_ras1_async	<= '0';
				s_cas0_async	<= '1';
				s_cas1_async	<= '1';
				s_refack_async	<= '0';
				s_dtack_async	<= '1';
				s_mux_async		<= '1';
				s_we_async		<= rw_i;
				s_next_state	<= mem_rw4;

			when mem_rw4 =>								-- assert CAS
				s_ras0_async	<= '0';
				s_ras1_async	<= '0';
				s_cas0_async	<= lds_i;
				s_cas1_async	<= uds_i;
				s_refack_async	<= '0';
				s_dtack_async	<= '1';
				s_mux_async		<= '1';
				s_we_async		<= rw_i;
				s_next_state	<= mem_rw5;

			when mem_rw5 =>								-- assert DTACK
				s_ras0_async	<= '0';
				s_ras1_async	<= '0';
				s_cas0_async	<= lds_i;
				s_cas1_async	<= uds_i;
				s_refack_async	<= '0';
				s_dtack_async	<= '0';
				s_mux_async		<= '1';
				s_we_async		<= rw_i;
				if as_i = '0' then
					s_next_state <= mem_rw5;
				else
					s_next_state <= precharge;
				end if;

			when ref_cbr1 =>							-- assert CAS (CAS before RAS refresh mode start)
				s_ras0_async	<= '1';
				s_ras1_async	<= '1';
				s_cas0_async	<= '0';
				s_cas1_async	<= '0';
				s_refack_async	<= '1';
				s_dtack_async	<= '1';
				s_mux_async		<= '0';
				s_we_async		<= '1';
				s_next_state	<= ref_cbr2;			
			
			when ref_cbr2 =>							-- assert RAS
				s_ras0_async	<= '0';
				s_ras1_async	<= '0';
				s_cas0_async	<= '0';
				s_cas1_async	<= '0';
				s_refack_async	<= '0';
				s_dtack_async	<= '1';
				s_mux_async		<= '1';
				s_we_async		<= '1';
				s_next_state	<= ref_cbr3;

			when ref_cbr3 =>							-- de-assert CAS
				s_ras0_async	<= '0';
				s_ras1_async	<= '0';
				s_cas0_async	<= '1';
				s_cas1_async	<= '1';
				s_refack_async	<= '0';
				s_dtack_async	<= '1';
				s_mux_async		<= '1';
				s_we_async		<= '1';
				s_next_state	<= ref_cbr4;
				
			when ref_cbr4 =>							-- de-assert RAS
				s_ras0_async	<= '1';
				s_ras1_async	<= '1';
				s_cas0_async	<= '1';
				s_cas1_async	<= '1';
				s_refack_async	<= '0';
				s_dtack_async	<= '1';
				s_mux_async		<= '0';
				s_we_async		<= '1';
				s_next_state	<= precharge;

			when precharge =>
				s_ras0_async	<= '1';
				s_ras1_async	<= '1';
				s_cas0_async	<= '1';
				s_cas1_async	<= '1';
				s_refack_async	<= '0';
				s_dtack_async	<= '1';
				s_mux_async		<= '0';
				s_we_async		<= '1';
				s_next_state	<= idle;			

			when others =>
				s_ras0_async	<= '1';
				s_ras1_async	<= '1';
				s_cas0_async	<= '1';
				s_cas1_async	<= '1';
				s_refack_async	<= '0';
				s_dtack_async 	<= '1';
				s_mux_async		<= '0';
				s_we_async		<= '1';
				s_next_state	<= idle;			
		end case;
	end process;

	---------------------------------------------
	-------- Synchronous Process  ---------------
	---------------------------------------------
	sync_control : process(clk_i, reset_i)
	begin
		if (reset_i = '0') then
			s_state	 	<= idle;
			ras0_o		<= '1';
			ras1_o		<= '1';
			cas0_o		<= '1';
			cas1_o		<= '1';
			dtack_o		<= '1';
			we_o		<= '1';
			mux_o		<= '0';
			s_refack	<= '0';
		elsif (clk_i'event and clk_i = '0') then	-- state machine clocked on falling edge
			s_state		<= s_next_state;			-- update the state machine state
			ras0_o		<= s_ras0_async;
			ras1_o		<= s_ras1_async;
			cas0_o		<= s_cas0_async;
			cas1_o		<= s_cas1_async;
			we_o		<= s_we_async;
			mux_o		<= s_mux_async;
			s_refack	<= s_refack_async;
			dtack_o		<= s_dtack_async;
		end if;			
	end process;

	---------------------------------------
	----    refresh counter 
	----    10 bits 15.6us interval
	---------------------------------------
	rfcnt: process(clk_i, s_refack, reset_i)
	begin
		if (reset_i = '0') then
			s_refcount <= "0000000000";
		elsif (clk_i'event and clk_i = '0') then
			if(s_refack = '1') then
				s_refcount <= "0000000000";
			else
				s_refcount <= s_refcount + 1;
			end if;
		end if;
	end process;

	-- 138 hex = 0100111000 binary = 312 decimal
	-- assuming 20 MHz clock (50ns clock period)
	-- 50ns (tCYC) x 312 = 15.6us is the refresh request rate.
	s_term_count <= '1' when s_refcount = "0100111000" else '0';

	rreq: process (clk_i, s_term_count, s_refack, reset_i)
	begin
		if (reset_i = '0') then
			s_refreq <= '0';
		elsif(clk_i'event and clk_i = '0') then
			if s_refack = '1' then
				s_refreq <= '0';
			elsif s_term_count = '1' then				-- assert refreq when the terminal count (tc) is reached
				s_refreq <= '1';
			end if;
		end if;
	end process;

end Behavioral;

