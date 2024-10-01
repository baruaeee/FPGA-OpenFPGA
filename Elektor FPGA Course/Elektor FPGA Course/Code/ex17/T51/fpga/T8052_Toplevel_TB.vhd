-------------------------------------------------------------------------------
-- Title      : Testbench for design "T8052_Toplevel"
-- Project    : 
-------------------------------------------------------------------------------
-- $Id$
-------------------------------------------------------------------------------
-- Author     :   <Andreas Voggeneder@LAPI>
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

  component T8052_Toplevel
  generic(
      simenv      : integer := 0);
    port (
      clk_50MHz : in    std_logic;
      SWITCH1   : in    std_logic;
      LED       : out   std_logic_vector(7 downto 1);
      SWITCH3   : in    std_logic;
      Txd232    : out   std_logic;
      RxD232    : in    std_logic;
      SCL       : inout std_logic;
      SDA       : inout std_logic;
      Ps2Clk_io : inout std_logic;
      Ps2Dat_io : inout std_logic
      );
  end component;

  -- component ports
  signal SWITCH1   : std_logic;
  signal SCL,SDA   : std_logic;
  signal Ps2Clk    : std_logic;
  signal Ps2Dat    : std_logic;

  -- clock
  signal Clk : std_logic := '1';

begin  -- Behavioral

  SCL <= 'H';
  SDA <= 'H';
  Ps2Clk <= 'H';
  Ps2Dat <= 'H';
  -- component instantiation
  DUT: T8052_Toplevel
    generic map(
      simenv    => 1)  -- do not simulate DLL (too slow)
    port map (
      clk_50MHz => Clk,
      SWITCH1   => SWITCH1,
      LED       => open,
      SWITCH3   => '0',
      Txd232    => open,
      RxD232    => '1',
      SCL       => SCL,
      SDA       => SDA,
      Ps2Clk_io => Ps2Clk,
      Ps2Dat_io => Ps2Dat
      );

  -- clock generation (25 MHz)
  Clk <= not Clk after 20 ns;

  -- waveform generation
  WaveGen_Proc: process
    variable data : std_logic_vector(7 downto 0);
    procedure sendbit(b : in std_logic) is
    begin
      Ps2Dat <= b;
      Ps2Clk <= '0';
      wait for 25 us;
      Ps2Clk <= '1';
      wait for 25 us;
    end sendbit;
    
    procedure sendkbd(data : in std_logic_vector) is
      variable parity : std_logic :='1';
    begin
      sendbit('0');
      for i in 0 to 7 loop
        sendbit(data(i));
        parity := parity xor data(i);
      end loop;
      sendbit(parity);
      sendbit('1');
      Ps2Clk <= 'Z';
      Ps2Dat <= 'Z';
    end sendkbd;
    
    procedure recvkbd(data : out std_logic_vector) is
--      variable parity : std_logic :='1';
      variable tmp : std_logic_vector(11 downto 0);
    begin
--      sendbit('0');
      for i in 0 to 11 loop
--        sendbit(data(i));
        Ps2Clk <= '0';
        wait for 25 us;
        Ps2Clk <= '1';
        tmp(i):= Ps2Dat;
        wait for 25 us;
--        parity := parity xor data(i);
      end loop;
      data :=tmp(8 downto 1);
      Ps2Clk <= 'Z';
      Ps2Dat <= 'Z';
    end recvkbd;
  begin
    -- activate Reset for 1 clock cycle
    SWITCH1 <= '1' after 0 ns,
               '0' after 40 ns;
    Ps2Clk <= 'Z';
    Ps2Dat <= 'Z';
    wait until Ps2Clk'event and Ps2Clk='0';
    wait until Ps2Clk'event and Ps2Clk/='0';
    recvkbd(data);
    wait for 1 ms;
    sendkbd(X"FA");
    wait for 2 ms;
    sendkbd(X"A5");
    wait;

  end process WaveGen_Proc;

  

end Behavioral;
