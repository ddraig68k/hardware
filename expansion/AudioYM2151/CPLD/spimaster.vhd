library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity spi_master is
    generic (
        data_length : integer := 16
    );
    port (
        clk         : in std_logic;     -- system clock
        reset_n     : in std_logic;     -- asynchronous active low reset
        enable      : in std_logic;     -- initiate communication
        cpol        : in std_logic;     -- clock polarity mode
        cpha        : in std_logic;     -- clock phase mode
        miso        : in std_logic;     -- master in slave out
        sclk        : out std_logic;    -- spi clock
        ss_n        : out std_logic;    -- slave select
        mosi        : out std_logic;    -- master out slave in
        busy        : out std_logic;    -- master busy signal
        tx          : in std_logic_vector(data_length - 1 downto 0);    -- data to transmit
        rx          : out std_logic_vector(data_length - 1 downto 0));  -- data received
end spi_master;

architecture behavioural of spi_master is

    type fsm is(INIT, EXECUTE);         -- state machine

    signal state                : fsm;
    signal receive_transmit     : std_logic;                                -- '1' for tx, '0' for rx 
    signal clk_toggles          : integer range 0 to data_length * 2 + 1;   -- clock toggle counter
    signal last_bit             : integer range 0 to data_length * 2;       -- last bit indicator
    signal rxbuffer             : std_logic_vector(data_length - 1 downto 0) := (others => '0');    -- receive data buffer
    signal txbuffer             : std_logic_vector(data_length - 1 downto 0) := (others => '0');    -- transmit data buffer
    signal int_ss_n             : std_logic;    -- internal register for ss_n 
    signal int_sclk             : std_logic;    -- internal register for sclk 

begin

    -- wire internal registers to outside	
    ss_n <= int_ss_n;
    sclk <= int_sclk;

    process (clk, reset_n)
    begin

    if (reset_n = '0') then         -- reset everything
        busy        <= '1';
        int_ss_n    <= '1';
        mosi        <= 'Z';
        rx          <= (others => '0');
        state       <= INIT;
    elsif (falling_edge(clk)) then
        case state is
            when INIT =>            -- bus is idle
                busy        <= '0';
                int_ss_n    <= '1';
                mosi        <= 'Z';

                if (enable = '1') then  -- initiate communication
                    busy            <= '1';
                    int_sclk        <= cpol;        -- set spi clock polarity
                    receive_transmit <= not cpha;   -- set spi clock phase
                    txbuffer        <= tx;          -- put data to buffer to transmit
                    clk_toggles     <= 0;           -- initiate clock toggle counter
                    last_bit        <= data_length * 2 + conv_integer(cpha) - 1; -- set last rx data bit
                    state <= EXECUTE;
                else
                    state <= INIT;
                end if;

            when EXECUTE =>
                busy            <= '1';
                int_ss_n        <= '0';         -- pull the slave select signal down
                receive_transmit <= not receive_transmit; -- change receive transmit mod

                -- counter
                if (clk_toggles = data_length * 2 + 1) then
                    clk_toggles <= 0;           -- reset counter
                else
                    clk_toggles <= clk_toggles + 1; -- increment counter
                end if;

                -- toggle sclk
                if (clk_toggles <= data_length * 2 and int_ss_n = '0') then
                    int_sclk <= not int_sclk; -- toggle spi clock
                end if;

                --receive miso bit
                if (receive_transmit = '0' and clk_toggles < last_bit + 1 and int_ss_n = '0') then
                    rxbuffer <= rxbuffer(data_length - 2 downto 0) & miso;
                end if;

                --transmit mosi bit
                if (receive_transmit = '1' and clk_toggles < last_bit) then
                    mosi <= txbuffer(data_length - 1);
                    txbuffer <= txbuffer(data_length - 2 downto 0) & '0';
                end if;

                -- finish/ resume the communication
                if (clk_toggles = data_length * 2 + 1) then
                    busy <= '0';
                    int_ss_n <= '1';
                    mosi <= 'Z';
                    rx <= rxbuffer;
                    state <= INIT;
                else
                    state <= EXECUTE;
                end if;
            end case;
        end if;
    end process;
end behavioural;