library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity REGISTERS is
	generic(
		A_WIDTH: integer := 4; -- The width of the address
		WIDTH: integer :=16 
	);
	port(
		A: in std_logic_vector(A_WIDTH-1 downto 0); -- Address
		DATA: in std_logic_vector(WIDTH-1 downto 0);
		EN: in std_logic;
		ENO: in std_logic;
		CLR: in std_logic;
		clk: in std_logic;
		
		DOUT: out std_logic_vector(WIDTH-1 downto 0)
	);
end REGISTERS;


-- THIS creates 16 addressable read-write registers with 4bit addresses.
architecture regin of REGISTERS is
	component NbitDEMUX is -- Demultiplexer: routes a signal using an ADDRESS to a single selected wire
		port(
			ADDRESS: in std_logic_vector(A_WIDTH-1 downto 0);
			EN: in std_logic;
			EN_out: out std_logic_vector(2**A_WIDTH-1 downto 0)
		);
	end component;
	
	component BufferedRegister is -- 16bitRegister with 16bit Tristate-buffer output
		port(
			EN: in std_logic; -- Enable write
			ENO: in std_logic;
			CLR: in std_logic; -- Clear Register
			clk: in std_logic; -- clock -> only on rising edge change is allowed
			Din: in std_logic_vector(WIDTH-1 downto 0);
			Dout: out std_logic_vector(WIDTH-1 downto 0)
		);
	end component;
	
	-- temp routing signals for connection
	signal enable: std_logic_vector(2**A_WIDTH-1 downto 0); 
	signal enableOutput: std_logic_vector(2**A_WIDTH-1 downto 0);
	
begin

	en_mux: NbitDEMUX -- Route the enable using the address
		port map(
			ADDRESS => A,
			EN => EN,
			EN_out => enable
		);
	eno_mux: NbitDEMUX -- Route the enable output with the address
		port map(
			ADDRESS => A,
			EN => ENO,
			EN_out => enableOutput
		);
	
	
	-- For the addressable length create and map a register 
	registe: for i in 0 to 2**A_WIDTH-1 generate
	begin
		regi: BufferedRegister
			port map(
				EN => enable(i), -- Only Enable and Enable output get routed here
				ENO => enableOutput(i), -- the rest have common signals.
				CLR => CLR,
				clk => clk,
				Din => DATA,
				Dout => DOUT
			);
	end generate;
end regin;
		