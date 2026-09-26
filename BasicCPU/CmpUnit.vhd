library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity CmpUnit is -- This unit is used for implementation in the decode stage so that there are not bubbles show in the pipeline
    generic(
        WIDTH : integer := 16
    );
    port(
        A : in  std_logic_vector(WIDTH-1 downto 0);
        B : in  std_logic_vector(WIDTH-1 downto 0);

        Z : out std_logic;
        C : out std_logic;
        N : out std_logic;
        O : out std_logic
    );
end CmpUnit;

architecture compare of CmpUnit is

    signal temp : std_logic_vector(WIDTH downto 0);

begin
    temp <= std_logic_vector(unsigned('0' & A) - unsigned('0' & B)); -- A - B for comparison

    -- Unsigned carry/borrow indication
    C <= temp(WIDTH);

    -- Sign of A- B
    N <= temp(WIDTH-1);

    
    Z <= '1' when temp(WIDTH-1 downto 0) = (temp(WIDTH-1 downto 0)'range => '0')-- A-B == 0
         else '0';

    O <= (A(WIDTH-1) xor B(WIDTH-1)) and-- Signed overflow condition
         (A(WIDTH-1) xor temp(WIDTH-1));

end compare;