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

	-- Registered timing signals, qualified at the pins for prompt termination.
	signal s_ras0_reg, s_ras1_reg : std_logic;
	signal s_cas0_reg, s_cas1_reg : std_logic;
	signal s_we_reg, s_dtack_reg : std_logic;
	signal s_mem_active, s_refresh_active : std_logic;
	signal s_cycle_active : std_logic;
	
	-- state signals
	signal s_refreq			: std_logic; 					-- Refresh request
	signal s_term_count		: std_logic; 					-- Refresh counter terminal count signal
	signal s_refcount		: std_logic_vector(19 downto 0);-- The refresh counter
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
	-- Start the normal-access enable before RAS is asserted, but terminate it
	-- asynchronously at the end of the CPU cycle. Unlike simply OR-ing AS into
	-- the pins, the cleared enable cannot expose stale registered strobes when
	-- AS falls again for the next access. The FSM still supplies precharge time.
	mem_cycle_enable : process(clk_i, reset_i, as_i)
	begin
		if reset_i = '0' or as_i = '1' then
			s_mem_active <= '0';
		elsif falling_edge(clk_i) then
			if s_state = mem_rw1 then
				s_mem_active <= '1';
			end if;
		end if;
	end process;

	-- Refresh must not depend on CPU AS or byte strobes. Its enable is
	-- registered alongside the timing outputs, not decoded from the next state.
	s_cycle_active <= s_mem_active or s_refresh_active;
	ras0_o <= s_ras0_reg or not s_cycle_active;
	ras1_o <= s_ras1_reg or not s_cycle_active;
	cas0_o <= s_cas0_reg or
		(not s_refresh_active and (not s_mem_active or uds_i));
	cas1_o <= s_cas1_reg or
		(not s_refresh_active and (not s_mem_active or lds_i));
	we_o <= s_we_reg or not s_mem_active or rw_i;
	dtack_o <= s_dtack_reg or not s_mem_active;

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
				s_cas0_async	<= uds_i;
				s_cas1_async	<= lds_i;
				s_refack_async	<= '0';
				s_dtack_async	<= '1';
				s_mux_async		<= '1';
				s_we_async		<= rw_i;
				s_next_state	<= mem_rw5;

			when mem_rw5 =>								-- assert DTACK
				s_ras0_async	<= '0';
				s_ras1_async	<= '0';
				s_cas0_async	<= uds_i;
				s_cas1_async	<= lds_i;
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
			s_ras0_reg	<= '1';
			s_ras1_reg	<= '1';
			s_cas0_reg	<= '1';
			s_cas1_reg	<= '1';
			s_dtack_reg	<= '1';
			s_we_reg	<= '1';
			s_refresh_active <= '0';
			mux_o		<= '0';
			s_refack	<= '0';
		elsif (clk_i'event and clk_i = '0') then	-- state machine clocked on falling edge
			s_state		<= s_next_state;			-- update the state machine state
			s_ras0_reg	<= s_ras0_async;
			s_ras1_reg	<= s_ras1_async;
			s_cas0_reg	<= s_cas0_async;
			s_cas1_reg	<= s_cas1_async;
			s_we_reg	<= s_we_async;
			mux_o		<= s_mux_async;
			s_refack	<= s_refack_async;
			s_dtack_reg	<= s_dtack_async;
			if s_state = ref_cbr1 or s_state = ref_cbr2 or
			   s_state = ref_cbr3 or s_state = ref_cbr4 then
				s_refresh_active <= '1';
			else
				s_refresh_active <= '0';
			end if;
		end if;			
	end process;

	---------------------------------------
	----    refresh counter 
	----    10 bits 15.6us interval
	---------------------------------------
	rfcnt: process(clk_i, s_refack, reset_i)
	begin
		if (reset_i = '0') then
			s_refcount <= X"00000";
		elsif (clk_i'event and clk_i = '0') then
			if(s_refack = '1') then
				s_refcount <= X"00000";
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
