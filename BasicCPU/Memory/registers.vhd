library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity REGISTERS is -- Two read busses and seperate write bus
	generic(
		A_WIDTH: integer := 4; -- The width of the address
		WIDTH: integer :=16 
	);
	port(
		A_ADDR: in std_logic_vector(A_WIDTH-1 downto 0); -- Address 1 - For reading
		B_ADDR: in std_logic_vector(A_WIDTH-1 downto 0); -- Address 2 - For reading
		
		W_ADDR: in std_logic_vector(A_WIDTH-1 downto 0); -- Address 3 - For writing
		DATA: in std_logic_vector(WIDTH-1 downto 0); -- Data to write
		
		ENI: in std_logic; -- Write
		ENO: in std_logic; -- READ both
		CLR: in std_logic; -- Clears 
		clk: in std_logic;
		
		AOUT: out std_logic_vector(WIDTH-1 downto 0);
		BOUT: out std_logic_vector(WIDTH-1 downto 0)
	);
end REGISTERS;


-- THIS creates 16 addressable read-write registers with 4bit addresses.
-- *ONLY ADDRESS A CONTROLS THE WRITE*
architecture regin of REGISTERS is
	component NbitDEMUX is -- Demultiplexer: routes a signal using an ADDRESS to a single selected wire
		port(
			ADDRESS: in std_logic_vector(A_WIDTH-1 downto 0);
			EN: in std_logic;
			EN_out: out std_logic_vector(2**A_WIDTH-1 downto 0)
		);
	end component;
	
	component NbitRegister is -- 16bitRegister with 16bit Tristate-buffer output
		port(
			EN: in std_logic; -- Enable write
			CLR: in std_logic; -- Clear Register
			clk: in std_logic; -- clock -> only on rising edge change is allowed
			Din: in std_logic_vector(WIDTH-1 downto 0);
			Dout: out std_logic_vector(WIDTH-1 downto 0));
	end component;
	
	-- temp routing signals for connection
	signal enable: std_logic_vector(2**A_WIDTH-1 downto 0); 
	--signal ENOA: std_logic_vector(2**A_WIDTH-1 downto 0);
	--signal ENOB: std_logic_vector(2**A_WIDTH-1 downto 0);
	signal rsignal: std_logic_vector((2**A_WIDTH)*WIDTH-1 downto 0);
begin
	write_dmux: NbitDEMUX -- Route the Write signal using the address
		port map(
			ADDRESS => W_ADDR,
			EN => ENI,
			EN_out => enable -- This is for writing
		);
		
	amux: entity work.NbitN_1MUX -- MULTIPLEXER FOR A
		generic map( BITS => A_WIDTH, WIDTH => WIDTH)
		port map(
			D => rsignal, -- connection
			SEL => A_ADDR, -- only register of A_ADDR passes
			Y => AOUT );
			
	bmux: entity work.NbitN_1MUX -- MULTIPLEXER FOR B
		generic map( BITS => A_WIDTH, WIDTH => WIDTH )
		port map(
			D => rsignal, -- connection
			SEL => B_ADDR, -- only register of B_ADDR passes
			Y => BOUT);
		
	-- For the addressable length create and map a register 
	registe: for i in 0 to 2**A_WIDTH-1 generate
	begin
		regi: NbitRegister
			port map(
				EN => enable(i), -- Only Enable and Enable output get routed here
				CLR => CLR,
				clk => clk,
				Din => DATA,
				Dout => rsignal((i+1)*WIDTH-1 downto i*WIDTH));
	end generate;
	
end regin;

	-- *Depricated since using MUX instead of buffers
	--enoa_dmux: NbitDEMUX -- Route the enable output with the address for A output
	--	port map(
	--		ADDRESS => A_ADDR,
	--		EN => ENO,
	--		EN_out => ENOA
	--	);
	--enob_dmux: NbitDEMUX -- Route the enable output with the address for B output
	--	port map(
	--		ADDRESS => B_ADDR,
	--		EN => ENO,
	--		EN_out => ENOB
	--	);
		