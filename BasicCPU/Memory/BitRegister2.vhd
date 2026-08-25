library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity BitRegister2 is 
	port(
		EN: in std_logic;
		CLR: in std_logic;
		D: in std_logic; -- Data in
		clk: in std_logic; -- Enable or Clock
		Q: out std_logic -- value of Data Bit stored
	);
end BitRegister2;


-- This is an Edge triggered D flip flop w enable, implementation using VHDL obv,
-- not generic to altera/intel so can resuse later in life.
architecture flipper of BitRegister2 is

begin
	process(clk, CLR)
	begin
		 if CLR = '1' then
			  Q <= '0';
		 elsif rising_edge(clk) then
			  if EN = '1' then
					Q <= D;
			  end if;
		 end if;
	end process;
end flipper;