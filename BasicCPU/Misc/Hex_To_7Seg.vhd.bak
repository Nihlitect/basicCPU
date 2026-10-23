library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Entity declaration defining the 4-bit input and 7-bit output
entity Hex_To_7Seg is
    Port ( 
        hex_in  : in  STD_LOGIC_VECTOR (3 downto 0); -- 4-bit binary input
        seg_out : out STD_LOGIC_VECTOR (0 to 6)  -- 7-bit segment output (abcdefg)
    );
end Hex_To_7Seg;

-- Behavioral architecture using a selected signal assignment
architecture Behavioral of Hex_To_7Seg is
begin
    with hex_in select
            seg_out <=
            "1000000" when "0000", -- '0'
            "1111001" when "0001", -- '1'
            "0100100" when "0010", -- '2'
            "0110000" when "0011", -- '3'
            "0011001" when "0100", -- '4'
            "0010010" when "0101", -- '5'
            "0000010" when "0110", -- '6'
            "1111000" when "0111", -- '7'
            "0000000" when "1000", -- '8'
            "0010000" when "1001", -- '9'
            "0001000" when "1010", -- 'A'
            "0000011" when "1011", -- 'b'
            "1000110" when "1100", -- 'C'
            "0100001" when "1101", -- 'd'
            "0000110" when "1110", -- 'E'
            "0001110" when "1111", -- 'F'
            "0000000" when others; -- Default case (turn off all segments)
end Behavioral;