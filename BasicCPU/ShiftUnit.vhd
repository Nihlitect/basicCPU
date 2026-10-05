library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;


entity ShiftUnit is
	generic(
		W : integer :=16);
	port(
		F: in std_logic_vector(2 downto 0); -- Funct select type of shift operation
		A: in std_logic_vector(W-1 downto 0); -- Input A
		amt: in std_logic_vector(2 downto 0); -- amount of bits to be shifted
		
		O: out std_logic_vector(W-1 downto 0) -- Ouptput the shifted
	);
end ShiftUnit;

-- SHIFT FUNCTIONS			
-- funct[2]	Description		
-- 0	Shift by constant written in instruction		
-- 1	Shift by amount sitting in a register		

-- funct[1..0]	MNEMONIC	Description	
-- 00	SLL	Slide left, fill with zeros	
-- 01	SRU	Slide right, fill with zeros - unsigned	
-- 10	SRS	Slide right - signed	
-- 11	ROT	Rotate 	

architecture shifty of ShiftUnit is

begin 
	process(F, amt, A)
	begin
		case F is
			when "000" =>
				 O <= std_logic_vector(shift_left(unsigned(A), to_integer(unsigned(amt))));-- Left Shift

			when "001" =>
				 O <= std_logic_vector(rotate_left(unsigned(A), to_integer(unsigned(amt))));-- Left Circular Shift

			when "010" =>
				 O <= std_logic_vector(shift_right(unsigned(A), to_integer(unsigned(amt))));-- Right Shift  

			when "011" =>
				 O <= std_logic_vector(rotate_right(unsigned(A), to_integer(unsigned(amt))));-- Right Circular Shift
		
		-- Not sure if we really need this
		--when "100" =>
		--	 O <= std_logic_vector(shift_left(unsigned(A), unsigned(B)));  -- Left Shift
		--when "101" =>
		--	 O <= std_logic_vector(rotate_left(unsigned(A), unsigned(B))); -- Left Circular Shift
		--when "110" =>
		--	 O <= std_logic_vector(shift_right(unsigned(A), unsigned(B))); -- Right Shift         
		--when "111" =>
		--	 O <= std_logic_vector(rotate_right(unsigned(A), unsigned(B)));-- Right Circular Shift
			when others => O <= (others => '0');
		end case;
	end process;
end shifty;