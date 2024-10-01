-------------------------------------------------------------------------------
-- Title      : Testbench for design "EX14"
-- Project    : 
-------------------------------------------------------------------------------
-- $Id$
-------------------------------------------------------------------------------
-- Author     :   <Andreas Voggeneder>
-- Company    : 
-- Created    : 2006-05-13
-- Platform   : 
-- Standard   : VHDL'87
-------------------------------------------------------------------------------
-- Description: 
-------------------------------------------------------------------------------
-- Copyright (c) 2006 
-------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;

-----------------------------------------------------------------------------------------

entity testbench52 is

end testbench52;

-----------------------------------------------------------------------------------------

architecture Behavioral of testbench52 is

  -- component ports
  signal SWITCH1   : std_logic;

  -- clock
  signal Clk : std_logic := '1';

begin  -- Behavioral

  -- component instantiation
  DUT: entity work.T8052_Toplevel
    generic map(
      simenv    => 1)  -- do not simulate DLL (too slow)
    port map (
      clk50MHz  => Clk,
      SWITCH1   => SWITCH1,
      SWITCH2   => '0',
      SWITCH3   => '1',
      SWITCH4   => '0',
      DIPSWITCH => "01010010",
      DIG_A     => open,
      DIG_B     => open,
      DIG_C     => open,
      DIG_D     => open,
      DIG_E     => open,
      DIG_F     => open,
      DIG_G     => open,
      DIG_1     => open,
      DIG_2     => open,
      DIG_3     => open,
      DIG_4     => open,
      LED       => open
      );

  -- clock generation (50 MHz)
  Clk <= not Clk after 10 ns;

  -- waveform generation
  WaveGen_Proc: process

  begin
    -- activate Reset for 1 clock cycle
    SWITCH1 <= '1' after 0 ns,
               '0' after 40 ns;

    wait;

  end process WaveGen_Proc;

  

end Behavioral;
