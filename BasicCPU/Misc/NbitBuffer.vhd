library IEEE;
use IEEE.std_logic_1164.all;

entity NbitBuffer is 
	generic(
		WIDTH : integer := 16 
	);
	Port(
		input : in std_logic_vector(WIDTH-1 downto 0);
		enable : in std_logic;
		output : out std_logic_vector(WIDTH-1 downto 0)
	);
end NbitBuffer;

architecture buff of NbitBuffer is -- Z means high-impedance
begin
	output <= input when (enable = '1') else (others => 'Z'); -- Rather simple since vector support	
end buff;


-- Things to note about this 'Tristate buffer' for implementation of FPGA.
-- - FPGA's cant emulate tristate logic on LUT's 
-- - FPGA's have such drivers *only on their I/O pins*
--   Therefore, quartus will convert the tri-state-logic into
--   Multiplexers *only if the bus is shared with other drivers*
--
