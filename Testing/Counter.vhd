library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity NbitCounter is
    generic(-- generic component
        WIDTH: integer := 16
    );
    port(
        Increment: in  std_logic; -- icrement signal -> used to add one to Cin
        Cin:       in std_logic_vector(WIDTH-1 downto 0);
        Cout:      out std_logic_vector(WIDTH-1 downto 0)
    );	
end NbitCounter;

-- Architecture in theory atleast should simply behave as an adder with
-- only 1 input A where B is 0 and increment is the carry in. But with 
-- VHDL it can be defined simply like this using the numeric library.
architecture count of NbitCounter is
begin
    process(Cin, Increment)
    begin
        if Increment = '1' then -- If increment is on
            Cout <= std_logic_vector(unsigned(Cin) + 1); -- add 1 to Cin vector A + 0 + 1
        else
            Cout <= Cin; -- otherwise just the output just stays the input A + 0 + 0 = A
        end if;
    end process;

end count;