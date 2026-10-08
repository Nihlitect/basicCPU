library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity tb_NbitPR is
end entity;

architecture testPipelineRegister of tb_NbitPR is
    signal clk  : std_logic := '0';
    signal STL  : std_logic := '0';
    signal DIN  : std_logic_vector(15 downto 0) := (others => '0');
    signal DOUT : std_logic_vector(15 downto 0);
begin

    nbitPR : entity work.NbitPR
        generic map (
            W => 16
        )
        port map (
            I   => DIN,
            clk => clk,
            STL => STL,
            O   => DOUT
        );

    clk <= not clk after 10 ns; -- 20 ns period

    stim : process
    begin
        -- Test 1: basic pass-through, no stall
        DIN <= x"0058";
        wait until rising_edge(clk);
        wait for 1 ns; -- let O settle after the edge
        assert DOUT = x"0058"
            report "Pass-through failed: expected 0058, got " & to_hstring(DOUT)
            severity error;

        -- Test 2: new value on next edge
        DIN <= x"00FF";
        wait until rising_edge(clk);
        wait for 1 ns;
        assert DOUT = x"00FF"
            report "Pass-through failed: expected 00FF, got " & to_hstring(DOUT)
            severity error;

        -- Test 3: stall asserted -- DOUT should hold, ignoring new DIN
        STL <= '1';
        DIN <= x"1234"; -- should NOT be captured while stalled
        wait until rising_edge(clk);
        wait for 1 ns;
        assert DOUT = x"00FF"
            report "Stall failed: expected hold at 00FF, got " & to_hstring(DOUT)
            severity error;

        -- hold stall for another cycle, change DIN again, confirm still held
        DIN <= x"ABCD";
        wait until rising_edge(clk);
        wait for 1 ns;
        assert DOUT = x"00FF"
            report "Stall (2nd cycle) failed: expected hold at 00FF, got " & to_hstring(DOUT)
            severity error;

        -- Test 4: release stall, next edge should capture current DIN
        STL <= '0';
        wait until rising_edge(clk);
        wait for 1 ns;
        assert DOUT = x"ABCD"
            report "Resume-after-stall failed: expected ABCD, got " & to_hstring(DOUT)
            severity error;

        -- Test 5: all-zeros and all-ones boundary patterns
        DIN <= x"0000";
        wait until rising_edge(clk);
        wait for 1 ns;
        assert DOUT = x"0000"
            report "All-zeros failed: got " & to_hstring(DOUT)
            severity error;

        DIN <= x"FFFF";
        wait until rising_edge(clk);
        wait for 1 ns;
        assert DOUT = x"FFFF"
            report "All-ones failed: got " & to_hstring(DOUT)
            severity error;

        report "All NbitPR tests completed";
        std.env.stop; -- VHDL-2008
        wait;
    end process;

end architecture;