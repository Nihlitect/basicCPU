library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity tb_ALU is
end entity;

architecture test_alu of tb_ALU is
    -- function select
    signal F : std_logic_vector(2 downto 0) := "000";
    -- inputs
    signal A : std_logic_vector(15 downto 0) := std_logic_vector(to_unsigned(58, 16));
    signal B : std_logic_vector(15 downto 0) := std_logic_vector(to_unsigned(43, 16));
    -- output
    signal C : std_logic_vector(15 downto 0);
begin

    uut : entity work.ALU
        port map (
            A => A,
            B => B,
            F => F,
            C => C
        );
    stim : process
    begin
        -- Test 1: ADD (F="000")
        A <= std_logic_vector(to_unsigned(58, 16));
        B <= std_logic_vector(to_unsigned(43, 16));
        F <= "000";
        wait for 50 ns;
        assert to_integer(unsigned(C)) = 101
            report "ADD failed: expected 101, got " & integer'image(to_integer(unsigned(C)))
            severity error;

        -- Test 2: SUB (F="001")
        A <= std_logic_vector(to_unsigned(58, 16));
        B <= std_logic_vector(to_unsigned(43, 16));
        F <= "001";
        wait for 50 ns;
        assert to_integer(unsigned(C)) = 15
            report "SUB failed: expected 15, got " & integer'image(to_integer(unsigned(C)))
            severity error;
    
        -- Test 3: INC (F="010")
        A <= x"00F5";
        B <= x"0F0F";
        F <= "010";
        wait for 50 ns;
        assert C = x"00F6"
            report "INC failed"
            severity error;
        -- Test 4: DEC (F="011")
        A <= x"00F5";
        B <= x"0F0F";
        F <= "011";
        wait for 50 ns;
        assert C = x"00F4"
            report "DEC failed"
            severity error;
         -- Test 5: AND (F="100")
        A <= x"00FF";
        B <= x"0F0F";
        F <= "100";
        wait for 50 ns;
        assert C = x"000F"
            report "AND failed"
            severity error;
        -- Test 6: OR (F="101")
        A <= x"00FF";
        B <= x"0F0F";
        F <= "101";
        wait for 50 ns;
        assert C = x"0FFF"
            report "OR failed"
            severity error;
        -- Test 7: XOR (F="110")
        A <= x"00FF";
        B <= x"0F0F";
        F <= "110";
        wait for 50 ns;
        assert C = x"0FF0"
            report "XOR failed"
            severity error;
        -- Test 8: NOT (F="111")
        A <= x"00FF";
        B <= x"0F0F";
        F <= "110";
        wait for 50 ns;
        assert C = x"FF00"
            report "NOT failed"
            severity error;

        report "All tests completed";
        std.env.stop;  -- requires VHDL-2008
        wait;
    end process;

end architecture;