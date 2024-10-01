--
-- 8051 compatible microcontroller core
--
-- Version : 0300
--
-- Copyright (c) 2001-2002 Daniel Wallner (jesus@opencores.org)
--           (c) 2004-2005 Andreas Voggeneder (andreas.voggeneder@fh-hagenberg.ac.at)
--
-- All rights reserved
--
-- Redistribution and use in source and synthezised forms, with or without
-- modification, are permitted provided that the following conditions are met:
--
-- Redistributions of source code must retain the above copyright notice,
-- this list of conditions and the following disclaimer.
--
-- Redistributions in synthesized form must reproduce the above copyright
-- notice, this list of conditions and the following disclaimer in the
-- documentation and/or other materials provided with the distribution.
--
-- Neither the name of the author nor the names of other contributors may
-- be used to endorse or promote products derived from this software without
-- specific prior written permission.
--
-- THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
-- AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO,
-- THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR
-- PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE AUTHOR OR CONTRIBUTORS BE
-- LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
-- CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF
-- SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
-- INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN
-- CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)
-- ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
-- POSSIBILITY OF SUCH DAMAGE.
--
-- Please report bugs to the author, but before you do so, please
-- make sure that this is not a derivative work and that
-- you have the latest version of this file.
--
-- The latest version of this file can be found at:
--	http://www.opencores.org/cvsweb.shtml/t51/
--
-- Limitations :
--	Uses two RAMs instead of DP-RAM as not all synthesis tools support DP-RAM inferring
--
-- File history :
--

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity T51_RAM_Altera is
	generic(
		RAMAddressWidth : integer := 8
	);
	port (
		Clk			: in std_logic;
		Rst_n		: in std_logic;
		ARE			: in std_logic;
		Wr			: in std_logic;
		DIn			: in std_logic_vector(7 downto 0);
		Int_AddrA	: in std_logic_vector(RAMAddressWidth-1 downto 0);
		Int_AddrA_r	: out std_logic_vector(RAMAddressWidth-1 downto 0);
		Int_AddrB	: in std_logic_vector(RAMAddressWidth-1 downto 0);
		Mem_A		: out std_logic_vector(7 downto 0);
		Mem_B		: out std_logic_vector(7 downto 0)
	);
end T51_RAM_Altera;

architecture rtl of T51_RAM_Altera is
  COMPONENT iram_cyclone IS
	PORT
	(
		data		: IN STD_LOGIC_VECTOR (7 DOWNTO 0);
		wraddress		: IN STD_LOGIC_VECTOR (7 DOWNTO 0);
		rdaddress_a		: IN STD_LOGIC_VECTOR (7 DOWNTO 0);
		rdaddress_b		: IN STD_LOGIC_VECTOR (7 DOWNTO 0);
		wren		: IN STD_LOGIC  := '1';
		rden_a		: IN STD_LOGIC  := '1';
		rden_b		: IN STD_LOGIC  := '1';
		clock		: IN STD_LOGIC ;
		qa		: OUT STD_LOGIC_VECTOR (7 DOWNTO 0);
		qb		: OUT STD_LOGIC_VECTOR (7 DOWNTO 0)
	);
END COMPONENT;

  signal Int_AddrA_i    : std_logic_vector(RAMAddressWidth-1 downto 0);
  signal Int_AddrB_i    : std_logic_vector(RAMAddressWidth-1 downto 0);
	signal Int_AddrA_r_i	: std_logic_vector(RAMAddressWidth-1 downto 0);
	signal wren_mux_a,wren_mux_b : std_logic;
	signal wrdata_r,MemA,MemB      : std_logic_vector(7 downto 0);

begin
  
  process(Int_AddrA,Int_AddrB) begin
-- pragma translate_off
			if not is_x(Int_AddrA) then
-- pragma translate_on
        Int_AddrA_i <= Int_AddrA;
-- pragma translate_off
      else
        Int_AddrA_i <= (others =>'1');
      end if;
-- pragma translate_on
-- pragma translate_off
			if not is_x(Int_AddrB) then
-- pragma translate_on
        Int_AddrB_i <= Int_AddrB;
-- pragma translate_off
      else
        Int_AddrB_i <= (others =>'1');
      end if;
-- pragma translate_on

  end process;

	Int_AddrA_r <= Int_AddrA_r_i;
	Mem_A <= MemA when wren_mux_a='0' else
	         wrdata_r;
  Mem_B <= MemB when wren_mux_b='0' else
	         wrdata_r;

	process (Rst_n, Clk)
	begin
		if Rst_n = '0' then
			Int_AddrA_r_i <= (others => '0');
			wren_mux_a    <= '0';
			wren_mux_b    <= '0';
		elsif Clk'event and Clk = '1' then
			Int_AddrA_r_i <= Int_AddrA_i;
			wrdata_r <= DIn;
			wren_mux_a <= '0';
			if (Wr='1' and Int_AddrA_i=Int_AddrA_r_i) then
			  wren_mux_a <= '1';
			end if;
			wren_mux_b <= '0';
			if (Wr='1' and Int_AddrB_i=Int_AddrA_r_i) then
			  wren_mux_b <= '1';
			end if;
		end if;
	end process;



--  Addr <= Int_AddrA when Wr='0' else Int_AddrA_r_i;

  IRAM : iram_cyclone
  port map (
    clock		  => Clk,
    data		  => DIn,
    wraddress => Int_AddrA_r_i,
    wren		  => Wr,
    rdaddress_a => Int_AddrA_i,
    qa		    => MemA,
    rdaddress_b => Int_AddrB_i,
    rden_a		=> ARE,
    rden_b		=> ARE,
    qb		    => MemB
  );

end;
