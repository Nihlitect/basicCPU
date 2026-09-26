library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity ALU is
	generic( WIDTH: integer := 16 );
	port(
		OP:       in  std_logic_vector(3 downto 0);
		A:        in  std_logic_vector(WIDTH-1 downto 0);
		B:        in  std_logic_vector(WIDTH-1 downto 0);

		C:        out std_logic_vector(WIDTH-1 downto 0);
		carry:    out std_logic;
		negative: out std_logic;
		zero:     out std_logic );
end ALU;


architecture alu of ALU is

	signal temp_logic : std_logic_vector(WIDTH-1 downto 0);
	signal temp_arith : std_logic_vector(WIDTH-1 downto 0);

	signal temp_carry : std_logic;
	signal result     : std_logic_vector(WIDTH-1 downto 0);

begin

    
	lu: entity work.LogicUnit -- Logic Unit
		generic map(
			WIDTH => WIDTH
		)
		port map(
			A => A,
			B => B,
			operation => OP(1 downto 0),
			S => temp_logic
		);

	au: entity work.ArithmeticUnit -- Arithmetic Unit
      generic map(
          WIDTH => WIDTH
      )
      port map(
         A => A,
         B => B,
         Operation => OP(1 downto 0),
         S => temp_arith,
			carry => temp_carry
		);

	-- Select Logic Unit or Arithmetic Unit
	C <= temp_logic when OP(3) = '1' else temp_arith;-- Output result

	carry <= temp_carry when OP(3) = '0' else '0';-- Carry from Arithmetic Unit
	negative <= result(WIDTH-1); -- Negative flag
	zero <= '1' when result = (result'range => '0') else '0'; -- Zero flag

end alu;