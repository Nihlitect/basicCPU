library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

-- Author: Chihab Chamkhi
-- Date: 08/8/2026

entity LogicUnit is
    generic(
        WIDTH     : integer := 16;
        OP_LENGTH : integer := 3
    );
    port(
        A         : in  std_logic_vector(WIDTH-1 downto 0);
        B         : in  std_logic_vector(WIDTH-1 downto 0);
        operation : in  std_logic_vector(OP_LENGTH-1 downto 0);
        S         : out std_logic_vector(WIDTH-1 downto 0)
    );
end LogicUnit;

-- Instructions to implement

-- bitwise:
-- A AND B
-- A OR B
-- A XOR B

-- * below instructions only require 2 addresses so could use extra space to add even more instruction
-- NOT A
-- Left Shift A
-- Right Shift A
-- Circular Right Shift
-- Circular Left Shift
architecture logic of LogicUnit is

begin
    process(A, B, operation)
    begin
        case operation is
            when "000" => S <= A and B;-- Bitwise AND         
            when "001" => S <= A or B; -- Bitwise OR
            when "010" => S <= A xor B;-- Bitwise XOR
            when "011" => S <= not A;  -- NOT A
            when "100" =>
                S <= std_logic_vector(shift_left(unsigned(A), 1));  -- Left Shift
            when "101" =>
                S <= std_logic_vector(rotate_left(unsigned(A), 1)); -- Left Circular Shift
            when "110" =>
                S <= std_logic_vector(shift_right(unsigned(A), 1)); -- Right Shift         
            when "111" =>
                S <= std_logic_vector(rotate_right(unsigned(A), 1));-- Right Circular Shift
            when others =>
                S <= (others => 'X');
        end case;
    end process;
end logic;







