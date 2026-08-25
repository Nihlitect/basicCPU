library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library altera; 
use altera.altera_primitives_components.all;

-- This is a N-bit D Flip Flop -- No enable signal will follow Din at every clock
entity NbitDFF is
	generic( -- Generic Definition
		WIDTH : integer :=16);
	port(
		CLR: in std_logic; -- Clear Register
		clk: in std_logic; -- clock -> only on rising edge change is allowed
		Din: in std_logic_vector(WIDTH-1 downto 0);
		Dout: out std_logic_vector(WIDTH-1 downto 0)
	);
end NbitDFF;
-- Add the library and use clauses before the design unit declaration



	
-- The architecture of the 16 bit register
architecture reg of NbitDFF is

	-- Define the D - flip flop shematic to be use here
	component DFF is 
		port(
			d: in std_logic;
			clk: in std_logic;
			clrn: in std_logic; 
			prn: in std_logic; 
			q: out std_logic 
		);
	end component;
	
begin -- Begin behaviour
	
	ffmap : for i in 0 to WIDTH-1 generate
	begin
		-- flip flop map to output using for 
		ffi: DFF -- Instantiating DFF
	port map (
			d => Din(i),--<data_in>, 
			clk => clk,--<clock_signal>, 
			clrn => not CLR,--<active_low_clear>,
			prn => '1',--<active_low_preset>,
			q => Dout(i)--<data_out>
			);
	end generate;
end reg;
-- Alternitevly if acceptable in the unit
-- apparently this leaves the 'compiler' or 'synthesizer' 
-- to optimise the hardware involved. fascinating.
--
--architecture reg of NbitRegister is
--
--begin

--	process(clk)
--	begin
--		if rising_edge(clk) then
--			Dout <= Din;
--		end if;
--	end process;
--end reg; 
