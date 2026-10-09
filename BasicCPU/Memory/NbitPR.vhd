
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

-- Pipeline Register
-- Updates every CLKN rising edges.
-- CLKN <= 1 means update every rising edge.
-- STL = '1' stalls the register and freezes its counter.

entity NbitPR is
    generic(
        W    : integer := 16;
        CLKN : integer := 1
    );
    port(
        I   : in  std_logic_vector(W-1 downto 0);
        clk : in  std_logic;
        STL : in  std_logic;
        O   : out std_logic_vector(W-1 downto 0)
    );
end NbitPR;

architecture rtl of NbitPR is

    function get_cycles(N : integer) return positive is -- Validate CLKN, the number of clock cycles for pipeline register to update.
    begin
        if N <= 1 then
            return 1;
        else
            return N;
        end if;
    end function;

    constant CYCLES : positive := get_cycles(CLKN);-- Assign

    signal count : integer range 0 to CYCLES-1 := 0;
    signal Q     : std_logic_vector(W-1 downto 0)
                   := (others => '0');

begin
    process(clk)
    begin
        if rising_edge(clk) then
            if STL = '0' then
                if count = CYCLES-1 then -- If counted to clock cycles required.
                    Q     <= I; -- new output
                    count <= 0; -- reset count
                else
                    count <= count + 1; -- otherwise count
                end if;
            end if;
        end if;
    end process;

    O <= Q;

end rtl;
