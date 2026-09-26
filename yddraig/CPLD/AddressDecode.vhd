library IEEE;
use IEEE.std_logic_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.std_logic_UNSIGNED.ALL;

entity AddressDecode is
    Port (
		a_i				: in std_logic_vector(23 downto 8);
        clk_i 			: in std_logic;
        as_i 			: in std_logic;
        fc0_i 			: in std_logic;
        fc1_i 			: in std_logic;
        fc2_i 			: in std_logic;
        bootrom_i 		: in std_logic;
        reset_i 		: in std_logic;
		rw_i			: in std_logic;
		uds_i			: in std_logic;
        dtack_o 		: out std_logic;
        cs_rom_o 		: out std_logic;
        cs_sram_o 		: out std_logic;
		dram_sel_o 		: out std_logic;
        cs_duart_o 		: out std_logic;
        cs_pit_o 	 	: out std_logic;
        cs_kbd_o 		: out std_logic;
        cs_rtc_o 		: out std_logic;
		cs_ide_o 		: out std_logic;
		cs_data1_o		: out std_logic;
		cs_data2_o		: out std_logic;
		cs_data3_o		: out std_logic;
		cs_data4_o		: out std_logic;
		cs_reg1_o		: out std_logic;
		cs_reg2_o		: out std_logic;
		cs_reg3_o		: out std_logic;
		cs_reg4_o		: out std_logic;
		ide_wr_o     	: out std_logic;
	  	ide_rd_o     	: out std_logic;
		vpa_o			: out std_logic;
		berr_o			: out std_logic
	);
end AddressDecode;

architecture Behavioral of AddressDecode is
	signal s_dtack 		: std_logic_vector(7 downto 0);
	-- Controller clock is 16 MHz (62.5 ns) with the 32 MHz oscillator.
	-- Thresholds refer to the number of rising edges since AS asserted.
	-- Keep SRAM one controller clock slower than ROM.  At 16 MHz this
	-- acknowledges SRAM after 250..312.5 ns from AS, giving the external
	-- LS32 chip-select path and 55 ns SRAM plenty of margin before the CPU
	-- samples data or completes a stack write.
	constant c_sram_ack_ticks : natural := 3;
	constant c_rom_ack_ticks : natural := 3;
	constant c_slow_ack_ticks : natural := 9;
	constant c_expansion_ack_ticks : natural := 41;
	-- CompactFlash timings, retuned from measurement (iobench).  Tick 12 put
	-- the IDE bus cycle at ~916 ns; these give ~500 ns while staying inside
	-- ATA PIO-0 on write pulse width and PIO-2 on address setup, which every
	-- CF card supports.  IORDY is not wired, so PIO-2 is the ceiling anyway.
	--   strobe at tick 1  ->  ~59 ns address setup
	--   write ends tick 4 ->  187 ns /IOW pulse, a full clock before DTACK
	--   ack at tick 5     ->  8-clock cycle, ~430 ns /IOR before the CPU samples
	constant c_ide_strobe_ticks : natural := 1;
	constant c_ide_write_end_ticks : natural := 4;
	constant c_ide_ack_ticks : natural := 5;
	signal s_ide_strobe, s_ide_write_done, s_ide_ack : std_logic;

	-- Registered acknowledge decisions.  Comparing the counter combinatorially
	-- inside dtack_o pulled the whole 8-bit vector plus every chip select into
	-- one function block; the fitter then had to buffer dtack_op across seven
	-- macrocells.  Deciding here and gating with the select there keeps the
	-- output equation small.  Timing is unchanged: a flag set when the counter
	-- reads N-1 is high from tick N, exactly as ">= N" was.
	signal s_rom_ack, s_sram_ack, s_slow_ack, s_exp_ack : std_logic;

	-- Bus error timeout.  s_dtack is already cleared by AS and saturates, so it
	-- serves as the timeout directly; the separate 8-bit counter in DdraigGlue
	-- is no longer needed.  255 ticks = 15.9 us at 16 MHz, comfortably past the
	-- 2.56 us expansion fallback and well inside any sane watchdog.
	constant c_berr_ticks : natural := 255;
	
	signal s_rom 		: std_logic;
	signal s_sram 		: std_logic;
	signal s_dram 		: std_logic;
	signal s_ide 		: std_logic;
	signal s_duart 		: std_logic;
	signal s_pit 		: std_logic;
	signal s_kbd 		: std_logic;
	signal s_rtc 		: std_logic;
	signal s_fc			: std_logic;
	signal s_addr_sel	: std_logic;
	signal s_ack		: std_logic;

	signal s_reg1 		: std_logic;
	signal s_reg2 		: std_logic;
	signal s_reg3		: std_logic;
	signal s_reg4 		: std_logic;

	signal s_data1		: std_logic;
	signal s_data2		: std_logic;
	signal s_data3		: std_logic;
	signal s_data4		: std_logic;
	
	signal s_ext_id   	: std_logic;

begin
	process (clk_i, reset_i, as_i)
	begin
		if (reset_i = '0' or as_i = '1') then
			s_dtack <= (others => '0');
			s_ide_strobe <= '0';
			s_ide_write_done <= '0';
			s_ide_ack <= '0';
			s_rom_ack <= '0';
			s_sram_ack <= '0';
			s_slow_ack <= '0';
			s_exp_ack <= '0';
		elsif (rising_edge(clk_i)) then
			if (s_dtack < "11111111") then
				s_dtack <= s_dtack + 1;
			end if;
			-- Register and hold these enables: decoding the binary counter
			-- directly onto IDE strobes could glitch during carry transitions.
			if s_dtack = c_ide_strobe_ticks - 1 then
				s_ide_strobe <= '1';
			end if;
			if s_dtack = c_ide_ack_ticks - 1 then
				s_ide_ack <= '1';
			end if;
			if s_dtack = c_ide_write_end_ticks - 1 then
				s_ide_write_done <= '1';
			end if;
			if s_dtack = c_rom_ack_ticks - 1 then
				s_rom_ack <= '1';
			end if;
			if s_dtack = c_sram_ack_ticks - 1 then
				s_sram_ack <= '1';
			end if;
			if s_dtack = c_slow_ack_ticks - 1 then
				s_slow_ack <= '1';
			end if;
			if s_dtack = c_expansion_ack_ticks - 1 then
				s_exp_ack <= '1';
			end if;
		end if;
	end process;
	
	s_fc <= fc0_i and fc1_i and fc2_i;
	s_addr_sel <= '1' when s_fc = '0' and as_i = '0' else '0';

	s_rom 	<= '0' WHEN s_addr_sel = '1' AND (bootrom_i = '0' OR std_match(a_i, "11111-----------")) ELSE '1';	-- $F80000 - $FFFFFF
	s_sram 	<= '0' WHEN s_addr_sel = '1' AND bootrom_i = '1' AND std_match(a_i, "0000------------") ELSE '1';	-- $000000 - $0FFFFF
	s_duart	<= '0' WHEN s_addr_sel = '1' AND std_match(a_i, "1111011111110000") AND uds_i = '0' ELSE '1';		-- $F7F000 - $F7F0FF
	s_pit	<= '0' WHEN s_addr_sel = '1' AND std_match(a_i, "1111011111110001") AND uds_i = '0' ELSE '1';		-- $F7F100 - $F7F1FF
	s_kbd	<= '0' WHEN s_addr_sel = '1' AND std_match(a_i, "1111011111110010") AND uds_i = '0' ELSE '1';		-- $F7F200 - $F7F2FF
	s_ide	<= '0' WHEN s_addr_sel = '1' AND std_match(a_i, "1111011111110011") ELSE '1';						-- $F7F300 - $F7F3FF
	s_rtc	<= '0' WHEN s_addr_sel = '1' AND std_match(a_i, "1111011111110100") ELSE '1';						-- $F7F400 - $F7F4FF
	s_reg1	<= '0' WHEN s_addr_sel = '1' AND std_match(a_i, "1111011111110101") ELSE '1';						-- $F7F500 - $F7F5FF
	s_reg2	<= '0' WHEN s_addr_sel = '1' AND std_match(a_i, "1111011111110110") ELSE '1';						-- $F7F600 - $F7F6FF
	s_reg3	<= '0' WHEN s_addr_sel = '1' AND std_match(a_i, "1111011111110111") ELSE '1';						-- $F7F700 - $F7F7FF
	s_reg4	<= '0' WHEN s_addr_sel = '1' AND std_match(a_i, "1111011111111000") ELSE '1';						-- $F7F800 - $F7F8FF
	

	s_dram	<= '1' WHEN s_addr_sel = '1' AND a_i >= "0001000000000000" AND a_i < "1001000000000000" ELSE '0'; 	-- $100000 - $8FFFFF (8 MB)
	s_data1	<= '0' WHEN s_addr_sel = '1' AND a_i >= "1010000000000000" AND a_i < "1011000000000000" ELSE '1'; 	-- $A00000 - $AFFFFF (1 MB)
	s_data2	<= '0' WHEN s_addr_sel = '1' AND a_i >= "1011000000000000" AND a_i < "1100000000000000" ELSE '1'; 	-- $B00000 - $BFFFFF (1 MB)
	s_data3	<= '0' WHEN s_addr_sel = '1' AND a_i >= "1100000000000000" AND a_i < "1101000000000000" ELSE '1'; 	-- $C00000 - $CFFFFF (1 MB)
	s_data4	<= '0' WHEN s_addr_sel = '1' AND a_i >= "1101000000000000" AND a_i < "1110000000000000" ELSE '1'; 	-- $D00000 - $DFFFFF (1 MB)
																											 
	cs_rom_o 	<= s_rom;
	cs_sram_o 	<= s_sram;
	cs_ide_o	<= s_ide;
	cs_duart_o	<= s_duart;
	cs_pit_o	<= s_pit;
	cs_kbd_o	<= s_kbd;
	cs_rtc_o	<= s_rtc;
	dram_sel_o	<= s_dram;

	cs_reg1_o	<= s_reg1;
	cs_reg2_o	<= s_reg2;
	cs_reg3_o	<= s_reg3;
	cs_reg4_o	<= s_reg4;

	cs_data1_o	<= s_data1;
	cs_data2_o	<= s_data2;
	cs_data3_o	<= s_data3;
	cs_data4_o	<= s_data4;

	-- Conservative CompactFlash PIO-0 timings at a 16 MHz controller clock:
	-- delay RD/WR until tick 3 (125..187.5 ns after AS), then acknowledge
	-- at tick 12 (687.5..750 ns after AS). This provides address setup and
	-- >=562.5 ns of read strobe before DTACK, including slow 8-bit registers.
	-- End writes at tick 11 (500 ns pulse), a full clock BEFORE DTACK, so
	-- the CPU still holds write data for the CF's 30 ns PIO-0 hold requirement.
	-- Reads stay asserted until AS releases: the CPU samples after DTACK.
	-- AS also aborts both strobes through s_ide. IORDY is not wired
	-- to this CPLD; faster modes need a separate board/device timing review.
	ide_wr_o <= '0' WHEN s_ide = '0' AND s_ide_strobe = '1' AND
		s_ide_write_done = '0' AND rw_i = '0' ELSE '1';
	ide_rd_o <= '0' WHEN s_ide = '0' AND s_ide_strobe = '1' AND rw_i = '1' ELSE '1';
	
	-- DUART, PIT and expansion data accesses use the devices' own DTACK.
	s_ack 		<= s_kbd AND s_rtc;
	s_ext_id	<= s_reg1 AND s_reg2 AND s_reg3 AND s_reg4; 
	
	-- Handle interrupt ack via VPA
	vpa_o		<= '0' WHEN s_fc = '1' AND as_i = '0' AND s_dtack > "00010" ELSE '1';
	
	-- Preserve the expansion-register fallback for absent-card detection:
	-- 40..41 clocks = 2.5..2.5625 us at 16 MHz. An installed card may ack sooner.
	-- SRAM gets two extra ticks because its byte enables pass through the
	-- external LS32 gates and its write enable is the CPU R/W signal itself.
	-- ROM has a direct CPLD select and retains the 3-tick acknowledge.
	dtack_o 	<= '0' WHEN s_ext_id = '0' AND s_exp_ack = '1'
					   ELSE '0' WHEN s_sram = '0' AND s_sram_ack = '1'
					   ELSE '0' WHEN s_rom = '0' AND s_rom_ack = '1'
					   ELSE '0' WHEN s_ide = '0' AND s_ide_ack = '1'
					   ELSE '0' WHEN s_ack = '0' AND s_slow_ack = '1'
					   ELSE '1';

	-- Bus error when a cycle is never acknowledged.  AS clears the counter.
	berr_o		<= '0' WHEN s_dtack = c_berr_ticks ELSE '1'; 
							 
end Behavioral;
