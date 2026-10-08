library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity tb_ALU2 is
end entity;


architecture test_alu of tb_ALU2 is
    -- function select
    signal F : std_logic_vector(2 downto 0) := "000";
    -- inputs
    signal A : std_logic_vector(15 downto 0) := std_logic_vector(to_unsigned(58, 16));
    signal B : std_logic_vector(15 downto 0) := std_logic_vector(to_unsigned(43, 16));
    -- output
    signal O : std_logic_vector(15 downto 0);

    signal V: std_logic;
    signal C: std_logic;
    signal N: std_logic;
    signal Z: std_logic;

begin

    uut : entity work.ALU2
        port map (
            F => F,
            A => A,
            B => B,
            O => O,
            
            V => V,
            Z => Z,
            N => N,
            C => C
        );
    stim : process
    begin
        -- Test 1: MIN (F="000")
        A <= std_logic_vector(to_signed(-58, 16));
        B <= std_logic_vector(to_signed(43, 16));
        F <= "000";
        wait for 50 ns;
        assert to_integer(signed(O)) = -58
            report "MIN failed: expected -58, got " & integer'image(to_integer(signed(O)))
            severity error;

        -- Test 1.1: MIN (F="000")
        A <= std_logic_vector(to_signed(58, 16));
        B <= std_logic_vector(to_signed(43, 16));
        F <= "000";
        wait for 50 ns;
        assert to_integer(signed(O)) = 43
            report "MIN failed: expected 43, got " & integer'image(to_integer(signed(O)))
            severity error;


        -- Test 2: MAX (F="001")
        A <= std_logic_vector(to_signed(-58, 16));
        B <= std_logic_vector(to_signed(43, 16));
        F <= "001";
        wait for 50 ns;
        assert to_integer(signed(O)) = 43
            report "MAX failed: expected 43, got " & integer'image(to_integer(signed(O)))
            severity error;
        
        -- Test 2.1: MAX (F="001")
        A <= std_logic_vector(to_signed(58, 16));
        B <= std_logic_vector(to_signed(43, 16));
        F <= "001";
        wait for 50 ns;
        assert to_integer(signed(O)) = 58
            report "MAX failed: expected 58, got " & integer'image(to_integer(signed(O)))
            severity error;
    

        -- Test 3: MINU (F="010")
        A <= std_logic_vector(to_unsigned(32768, 16));
        B <= std_logic_vector(to_unsigned(500, 16));
        F <= "010";
        wait for 50 ns;
        assert to_integer(unsigned(O)) = 500
            report "MINU failed: expected 500, got " & integer'image(to_integer(unsigned(O)))
            severity error;

        -- Test 4: MAXU (F="011")
        A <= std_logic_vector(to_unsigned(58, 16));
        B <= std_logic_vector(to_unsigned(43, 16));
        F <= "011";
        wait for 50 ns;
        assert to_integer(unsigned(O)) = 58
            report "MAXU failed: expected 58, got " & integer'image(to_integer(unsigned(O)))
            severity error;
        

         -- Test 5: NEG (F="100")
        A <= std_logic_vector(to_unsigned(58, 16));
        B <= x"1111"
        F <= "100";
        wait for 50 ns;
        assert to_integer(signed(O)) = -58
            report "NEG failed: expected -58, got " & integer'image(to_integer(signed(O)))
            severity error;

        -- Test 6: NAND (F="101")
        A <= x"00FF";
        B <= x"0F0F";
        F <= "101";
        wait for 50 ns;
        assert O = x"0FF0"
            report "NAND failed"
            severity error;

        -- Test 7: XNOR (F="110")
        A <= x"00FF";
        B <= x"0F0F";
        F <= "110";
        wait for 50 ns;
        assert O = x"F00F"
            report "XNOR failed"
            severity error;


        -- Test 8: CMP (F="111")
        A <= std_logic_vector(to_unsigned(58, 16));
        B <= std_logic_vector(to_unsigned(43, 16));
        F <= "011";
        wait for 50 ns;
        assert C=1 and V = 0 and N=0 and Z = 0
            report "CMP failed: expected , got "
            severity error;
            
        -- Test 8.1: CMP (F="111")
        A <= std_logic_vector(to_unsigned(59, 16));
        B <= std_logic_vector(to_unsigned(59, 16));
        F <= "011";
        wait for 50 ns;
        assert C=1 and V = 0 and N=0 and Z = 1
            report "CMP failed: expected , got "
            severity error;

        report "All tests completed";
        std.env.stop;  -- requires VHDL-2008
        wait;
    end process;

end architecture;