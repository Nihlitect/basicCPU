library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.std_logic_arith.ALL;
use IEEE.std_logic_unsigned.all;

entity IOCtrlUnit is
	generic( W: integer := 16 );
	port(
		F:	in  std_logic_vector(2 downto 0);
		IO: in  std_logic;
		
		SWO: out std_logic; -- Make output switch
		SSEN: out std_logic -- Turn on SSD write enable
		);
end IOCtrlUnit;

architecture IOController of IOCtrlUnit is

begin
	process(F, IO)
	begin
		--Defaults
		SWO <= '0';
		SSEN <= '0';
		
		if IO = '1' then -- IO is enabled
			case F is
				when "000" => SSEN <= '1'; --enable Seven Segment Display Write enable
				when "001" => SWO <= '1'; -- Enable Switch output to bus
				when others => 
					SWO <='0';
					SSEN <='0';
			end case;
		end if;
	end process;
end IOController;
