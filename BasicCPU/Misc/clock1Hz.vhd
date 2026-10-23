library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity clock1Hz is
    Port ( clk_50MHz : in  STD_LOGIC;
           reset     : in  STD_LOGIC;
           clk_1Hz   : out STD_LOGIC);
end clock1Hz;

architecture Behavioral of clock1Hz is
    -- 50,000,000 / (2 * 2 Hz) = 12,500,000 counts per toggle
    constant TOGGLE_LIMIT : integer := 25000000;
    signal counter        : integer range 0 to TOGGLE_LIMIT := 0;
    signal clk_reg        : STD_LOGIC := '0';
begin
    process(clk_50MHz, reset)
    begin
        if reset = '1' then
            counter <= 0;
            clk_reg <= '0';
        elsif rising_edge(clk_50MHz) then
            if counter = (TOGGLE_LIMIT - 1) then
                counter <= 0;
                clk_reg <= not clk_reg; -- Toggle the output
            else
                counter <= counter + 1;
            end if;
        end if;
    end process;

    clk_1Hz <= clk_reg;
end Behavioral;
