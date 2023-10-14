library ieee;
use ieee.std_logic_1164.all;

entity barrelShifter_tb is
end entity barrelShifter_tb;

architecture testbench of barrelShifter_tb is
  signal input_tb      :       std_logic_vector(7 downto 0)  := "11111111";
  signal shift_tb      :       std_logic_vector(2 downto 0)  := "000";
  signal output_tb     :       std_logic_vector(7 downto 0);
begin
  shift_tb <= "001" after 200 ns,
              "010" after 400 ns,
              "011" after 600 ns,
              "100" after 800 ns,
              "101" after 1000 ns,
              "110" after 1200 ns,
              "111" after 1400 ns;
  DUT: entity work.barrelShifter
    generic map(
      nShifts   =>      3,
      nBits     =>      8
    )
    port map(
      input     =>      input_tb,
      shift     =>      shift_tb,
      output    =>      output_tb
    );
end architecture testbench;
