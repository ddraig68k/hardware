----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:40:14 10/27/2021 
-- Design Name: 
-- Module Name:    AudioYM2151 - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity AudioYM2151 is
    Port ( dtack_op : out  STD_LOGIC;
           reset_ip : in  STD_LOGIC;
           cs_ymclk_op : out  STD_LOGIC;
           spi_clk_op : out  STD_LOGIC;
           spi_do_op : out  STD_LOGIC;
           cs_data_ip : in  STD_LOGIC;
           cs_reg_ip : in  STD_LOGIC;
           sys_clk_ip : in  STD_LOGIC;
           lds_ip : in  STD_LOGIC;
           uds_ip : in  STD_LOGIC;
           rw_ip : in  STD_LOGIC;
           a_ip : in  STD_LOGIC_VECTOR (7 downto 1);
           ym_wr_op : out  STD_LOGIC;
           ym_rd_op : out  STD_LOGIC;
           cs_ym_op : out  STD_LOGIC;
           led_op : out  STD_LOGIC;
           d_io : inout  STD_LOGIC_VECTOR (15 downto 0));
end AudioYM2151;

architecture Behavioral of AudioYM2151 is

begin


end Behavioral;

