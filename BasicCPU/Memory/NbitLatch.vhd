library ieee;
use ieee.std_logic_1164.all;

entity NbitLatch is
	generic (
		N : integer := 4 -- Default width is 8 bits
	);
	port (
		D    : in  std_logic_vector(N-1 downto 0); -- Data input
		EN   : in  std_logic;                      -- Enable (gate) signal

		Q    : out std_logic_vector(N-1 downto 0)  -- Latch output
	);
end entity NbitLatch;

architecture leach of NbitLatch is
begin
   process (EN, D)
	begin
	  
		if (EN = '1') then-- When enable is high, the latch is on (Q follows D)
			Q <= D;
		end if;
	-- Note: No 'else' branch means previous value is retained when en = '0', 
	-- which explicitly infers a level-sensitive latch.
	end process;
end architecture leach;