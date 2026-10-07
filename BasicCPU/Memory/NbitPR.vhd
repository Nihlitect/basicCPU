library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

-- PSR (Pipeline Stall Register)
entity NbitPR is
	generic( -- Generic Definition
		W : integer :=16);
	port(
		I: in std_logic_vector(W-1 downto 0);
		clk: in std_logic; -- clock -> only on rising edge change is allowed
		STL: in std_logic; -- Stall pipeline buffer signal
		O: out std_logic_vector(W-1 downto 0)
	);
end NbitPR;


architecture stall of NbitPR is
	component NbitRegister is
		--generic( -- Generic Definition
			--WIDTH : integer :=16);
		port(
			Din: in std_logic_vector(W-1 downto 0);
			clk: in std_logic; -- clock -> only on rising edge change is allowed
			EN: in std_logic; -- Enable write
			CLR: in std_logic; -- Clear Register
			Dout: out std_logic_vector(W-1 downto 0)
		);
	end component;
	
	signal Data : std_logic_vector(W-1 downto 0);
	
begin -- Begin behaviour
	

	first: NbitRegister
		port map(
			EN => not STL,
			CLR => '0',
			clk => not clk, 
         Din   => I,
         Dout   => Data
		);
		
	second: NbitRegister
		port map(
			EN => not STL,
			CLR => '0',
			clk => clk,
			Din => Data,
			Dout => O
			);
		
end stall;



