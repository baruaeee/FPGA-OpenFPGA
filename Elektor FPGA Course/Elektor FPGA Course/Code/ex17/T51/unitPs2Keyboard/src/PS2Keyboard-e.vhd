--------------------------------------------------------------------------------
-- Project     : Sandbox AVR Library
-- Module      : PS/2 Keyboard
-- File        : PS2Keyboard-e.vhd
-- Description : Entity for attaching a PS/2 Keyboard to AVR Databus.
--------------------------------------------------------------------------------
-- Author       : Andreas Voggeneder
-- Organisation : FH-Hagenberg
-- Department   : Hardware/Software Systems Engineering
-- Language     : VHDL'87
--------------------------------------------------------------------------------
-- Copyright (c) 2003 by Andreas Voggeneder
--------------------------------------------------------------------------------

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity PS2Keyboard is
  port(
    clr_n_i      : in  std_logic;
    clk_i        : in  std_logic;
    --------------------------
    -- PS/2 Keyboard signals
    --------------------------
    -- PS/2 clock line. Bidirectional (resolved!) for Inhibit bus state on
    -- PS/2 bus. In all other cases an input would be sufficient.
    Ps2Clk_io    : inout std_logic;
    -- PS/2 data line. Bidirectional for reading and writing data.
    Ps2Dat_io    : inout std_logic;
    ----------------------------------
    -- Synchronized SFR Data Bus (8051)
    ----------------------------------
    SFR_Data_i	   : in  std_logic_vector(7 downto 0);
	SFR_Data_o	   : out std_logic_vector(7 downto 0);
	data_sel_i     : in  std_logic; 
    data_wr_i	     : in  std_logic;
    ctrl_stat_sel_i: in  std_logic; 
    ctrl_stat_wr_i : in  std_logic;
    Irq_o          : out std_logic
  );
end PS2Keyboard;





