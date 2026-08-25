library IEEE;
library altera; 
use IEEE.STD_LOGIC_1164.ALL;
use altera.altera_primitives_components.all;


-- This is a N-bit register
entity NbitRegisterE is
	generic( -- Generic Definition
		WIDTH : integer :=16);
	port(
		EN: in std_logic; -- Enable write
		CLR: in std_logic; -- Clear Register
		clk: in std_logic; -- clock -> only on rising edge change is allowed
		Din: in std_logic_vector(WIDTH-1 downto 0);
		Dout: out std_logic_vector(WIDTH-1 downto 0)
	);
end NbitRegisterE;

	
-- The architecture of the 16 bit register
architecture reg of NbitRegisterE is

	-- Define the D - flip flop shematic to be use here * Depricated since its not edge triggered and dont know how to make it
	--component BitRegister is
	--	port(
	--		EN: in std_logic;
	--		CLR: in std_logic;
	--		D: in std_logic; -- Data in
	--		clk: in std_logic; -- Enable or Clock
	--		Q: out std_logic -- value of Data Bit stored
	--	);
	--end component;
	
	component DFFE is -- Built in to quartus/altera withc rising edge triggered flipflop.
		port(
				d: in std_logic; -- <data_in>,
				clk: in std_logic;--<clock_signal>,
				clrn: in std_logic;--<active_low_clear>,
				prn: in std_logic;--<active_low_preset>,
				ena: in std_logic;--<clock_enable>,
				q: out std_logic--<data_out>
			);
	end component;
	
begin -- Begin behaviour
	
	ffmap : for i in 0 to WIDTH-1 generate
	begin
		-- flip flop map to output using for 
      dffei : DFFE
		port map(
				d => Din(i),--<data_in>,
				clk => clk,--<clock_signal>,
				clrn => not CLR,--<active_low_clear>,
				prn => '1',--<active_low_preset>, dont need right?
				ena => EN,--<clock_enable>,
				q => Dout(i)--<data_out>
			);
	end generate;
end reg;

-- Add the library and use clauses before the design unit declaration

-- Instantiating DFFE
--	<instance_name> : DFFE
--	port map (
--			d => <data_in>,
--			clk => <clock_signal>,
--			clrn => <active_low_clear>,
--			prn => <active_low_preset>,
--			ena => <clock_enable>,
--			q => <data_out>
--			);
