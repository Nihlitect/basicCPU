library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.std_logic_arith.ALL;
use IEEE.std_logic_unsigned.all;
--use IEEE.NUMERIC_STD.ALL;

entity ArithmeticUnit is
    generic(
        WIDTH: integer := 16;
        OP_LENGTH: integer := 2 -- We only need the last 2 digits for arithemtic selection.
    );
    port(
        A:         in  std_logic_vector(WIDTH-1 downto 0); 
        B:         in  std_logic_vector(WIDTH-1 downto 0);
        Operation: in  std_logic_vector(OP_LENGTH-1 downto 0); 

        S:         out std_logic_vector(WIDTH-1 downto 0);
		  carry: out std_logic
    );
end ArithmeticUnit;


architecture arithmetic of ArithmeticUnit is

begin
   process(A, B, Operation)
      variable temp: std_logic_vector(WIDTH downto 0); -- to store 
	begin
		case Operation is
			when "00" => temp := ('0' & A) + ('0' & B);	-- ADD: A + B
			when "01" => temp := A + (not B) + 1; 			-- SUB: A - B
			when "10" => temp := ('0' & A) + 1;				-- INC: A + 1
			when "11" => temp := (not A) + 1; 				-- NEG:-A Maybe something else is better we can explore later
			when others => temp := (others => 'X');-- Default
		end case;
		carry <= temp(WIDTH);
		S <= temp(WIDTH-1 downto 0);-- result
     
    end process;
end arithmetic;