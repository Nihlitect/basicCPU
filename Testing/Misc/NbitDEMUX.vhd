library IEEE;
use IEEE.std_logic_1164.all;
--use IEEE.std_logic_arith.all;
--use IEEE.std_logic_unsigned.all;
use IEEE.NUMERIC_STD.ALL;

entity NbitDEMUX is
	generic(
		ADDR_WIDTH: integer := 4
	);
	port(
		ADDRESS: in std_logic_vector(ADDR_WIDTH-1 downto 0);
		EN: in std_logic;
		EN_out: out std_logic_vector(2**ADDR_WIDTH-1 downto 0));
end NbitDEMUX;

architecture demux of NbitDEMUX is

begin
	process(EN,ADDRESS)
	begin
		En_out <= (others => '0');
		-- Apparently to_integer > than conv_integer... more 'modern'?
		if (EN = '1') then 
			EN_out(to_integer(unsigned(ADDRESS))) <= '1';
		end if;
	end process;
end demux;