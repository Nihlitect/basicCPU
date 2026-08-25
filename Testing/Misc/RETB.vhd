library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity RETB is -- Rising Edge Triggered Bit
    Port (
        clk  : in  STD_LOGIC;
        --d    : in  STD_LOGIC;
        q    : out STD_LOGIC
    );
end RETB;

architecture Behavioral of RETB is
begin
    process(clk)
    begin
        if rising_edge(clk) then
            q <= '1'; -- Bit updates only on the rising edge
        end if;
    end process;
end Behavioral;