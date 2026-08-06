LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;

-- Clock generation and clock-enable strobes.
--
-- clk_i (40 MHz) is the only signal on the CPLD's global clock net, and it is
-- now the only clock in the whole design.  Previously the divided 20 MHz and
-- 10 MHz clocks were used directly as flip-flop clocks, which on an XC9500
-- means product-term clocks: much larger delay than the global net, and skew
-- between function blocks.  That skew is invisible at a 10 MHz CPU and bites
-- at 20 MHz.
--
-- Instead, the divided clocks leave the chip only as CPU clock outputs, and
-- internal logic runs from clk_i qualified by the enable strobes below.
--
-- The enables are decoded from the *pre-edge* value of the divider, so they
-- are high on exactly the clk_i rising edge at which the corresponding divided
-- clock changes.  Logic gated by en20_fall_o therefore updates on precisely
-- the same edges it used to, and all existing DRAM timing is preserved.

entity Clock is
    Port (
        clk_i       : in  std_logic;    -- 40 MHz, global clock net
        clk20_o     : out std_logic;    -- 20 MHz CPU clock output
        clk10_o     : out std_logic;    -- 10 MHz CPU clock output
        en20_rise_o : out std_logic;    -- clk_i edge where clk20 rises
        en20_fall_o : out std_logic;    -- clk_i edge where clk20 falls
        en10_rise_o : out std_logic     -- clk_i edge where clk10 rises
    );
end Clock;

architecture Behavioral of Clock is
    signal s_div : unsigned(1 downto 0) := (others => '0');
begin

    process(clk_i)
    begin
        if rising_edge(clk_i) then
            s_div <= s_div + 1;
        end if;
    end process;

    -- Driven straight from the divider flip-flops so both pins are registered
    -- outputs with a clean tCO, not combinational functions of anything.
    clk20_o <= s_div(0);
    clk10_o <= s_div(1);

    en20_rise_o <= '1' when s_div(0) = '0'   else '0';
    en20_fall_o <= '1' when s_div(0) = '1'   else '0';
    en10_rise_o <= '1' when s_div    = "01"  else '0';

end Behavioral;
