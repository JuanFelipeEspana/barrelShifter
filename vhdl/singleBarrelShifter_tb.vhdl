library ieee;
use ieee.std_logic_1164.all;

entity singleBarrelShifter_tb is
end entity singleBarrelShifter_tb;

architecture testbench of singleBarrelShifter_tb is
  signal input_tb       :       std_logic_vector(7 downto 0) := "11111111";
  signal shift_tb       :       std_logic       := '0';
  signal output_tb      :       std_logic_vector(7 downto 0);
begin
  shift_tb <= '1' after 200 ns;

  DUT: entity work.singleBarrelShifter
    generic map(
      nBits     =>      8,
      nShifts   =>      3
    )
    port map(
      input     =>      input_tb,
      shift     =>      shift_tb,
      output    =>      output_tb
    );
end architecture testbench;
