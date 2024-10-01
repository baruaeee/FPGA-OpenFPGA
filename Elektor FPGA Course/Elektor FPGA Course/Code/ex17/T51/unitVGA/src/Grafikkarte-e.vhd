--------------------------------------------------------------------------------
-- Project     : ASCII Graphiccard 80x30 Characters
-- Module      : Grafikkarte
-- File        : Grafikkarte.vhd
-- Description : Generate the VGA- Timing and controls the videomemory.
--------------------------------------------------------------------------------
-- Author       : Andreas Voggeneder
-- Organisation : FH-Hagenberg
-- Department   : Hardware/Software Systems Engineering
-- Language     : VHDL'87
--------------------------------------------------------------------------------
-- Copyright (c) 2006 by Andreas Voggeneder
--------------------------------------------------------------------------------

library IEEE;

use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
LIBRARY altera_mf;
USE altera_mf.all;


entity Graphiccard is
  port(clr_n_i      : in  std_ulogic;
       clk_i        : in  std_ulogic;
       VgaRd0_o     : out std_ulogic;
       VgaRd1_o     : out std_ulogic;
       VgaGr0_o     : out std_ulogic;
       VgaGr1_o     : out std_ulogic;
       VgaBl0_o     : out std_ulogic;
       VgaBl1_o     : out std_ulogic;
       VgaHsync_o   : out std_ulogic;
       VgaVsync_o   : out std_ulogic;
       -------------------------------
       -- Synchronized Data Bus (8051)
       -------------------------------
       CPU_Adr_i     : in  std_ulogic_vector(13 downto 0);
       CPU_CS_i      : in  std_ulogic;
       CPU_DataIn_i  : in  std_ulogic_vector(7 downto 0);
       CPU_Rd_i      : in  std_ulogic;
       CPU_Wr_i      : in  std_ulogic;
       CPU_DataOut_o : out std_ulogic_vector(7 downto 0);
       CPU_Irq_o     : out std_ulogic_vector(1 downto 0)
       );
end Graphiccard;





