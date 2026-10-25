library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity ShiftUnit is
	generic(
		W : integer :=16);
	port(
		F: in std_logic_vector(1 downto 0); -- Funct select type of shift operation
		A: in std_logic_vector(W-1 downto 0); -- Input A
		amt: in std_logic_vector(3 downto 0); -- amount of bits to be shifted
		
		O: out std_logic_vector(W-1 downto 0) -- Ouptput the shifted
	);
end ShiftUnit;
architecture shifty of ShiftUnit is
begin 
	process(F, amt, A)
	begin
		case F is
			when "00" => -- SLL
				O <= std_logic_vector(shift_left(unsigned(A), to_integer(unsigned(amt))));-- Left Shift
			when "01" => -- SRL
				O <= std_logic_vector(shift_right(unsigned(A), to_integer(unsigned(amt))));-- Left Circular Shift
			when "10" => -- SRA
				O <= std_logic_vector(shift_right(signed(A), to_integer(unsigned(amt))));-- Right Shift  
				O(W-1) <= A(W-1); 
			when "11" => -- ROL
				O <= std_logic_vector(rotate_left(unsigned(A), to_integer(unsigned(amt))));-- Right Circular Shift
			when others => O <= (others => '0');
		end case;
	end process;
end shifty;

-- SHIFT FUNCTIONS			
-- funct[2]	Description		
-- 0	Shift by constant written in instruction		
-- 1	Shift by amount sitting in a register		

-- funct[1..0]	MNEMONIC	Description	
-- 00	SLL	Slide left, fill with zeros	
-- 01	SRU	Slide right, fill with zeros - unsigned	
-- 10	SRS	Slide right - signed	
-- 11	ROT	Rotate 	