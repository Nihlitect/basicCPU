library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity NbitN_1MUX is
    generic (
        BITS     : integer := 4;
        WIDTH : integer := 16
    );
    port (
        D : in  std_logic_vector((2**BITS)*WIDTH-1 downto 0);
        SEL: in  std_logic_vector(BITS-1 downto 0);
        Y: out std_logic_vector(WIDTH-1 downto 0)
    );
end NbitN_1MUX;

-- All inputs are on a shared bus this allows it to be generic.
-- 
-- since select represents the number of outputs SEL+1 represents position (starting from 1 for calculation sake)
-- basically
-- Y <= D((S+1) x W downto (S) * W )
-- S <= '1000'
-- S = 8   : since it starts at 0 we +1
-- Y <= D(9*16 downto 8*16)

-- which gives the 16 bits of position SEL.

architecture muxmaxing of NbitN_1MUX is
begin
    Y <= D((to_integer(unsigned(SEL))+1)*WIDTH-1
           downto to_integer(unsigned(SEL))*WIDTH);
end muxmaxing;
