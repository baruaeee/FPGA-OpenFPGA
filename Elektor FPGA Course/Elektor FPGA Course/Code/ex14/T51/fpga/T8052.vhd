--
-- 8052 compatible microcontroller, with internal RAM & ROM
--
-- Version : 0300
--
-- Copyright (c) 2001-2002 Daniel Wallner (jesus@opencores.org)
--           (c) 2004-2005 Andreas Voggeneder (andreas.voggeneder@fh-hagenberg.at)
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
--  http://www.opencores.org/cvsweb.shtml/t51/
--
-- Limitations :
--
-- File history :
--

library IEEE;
use IEEE.std_logic_1164.all;
use work.T51_Pack.all;

entity T8052 is
    generic(
        simenv      : integer := 0);
    port(
        Clk         : in  std_logic;
        Rst_n       : in  std_logic;
        P0_in       : in  std_logic_vector(7 downto 0);
        P1_in       : in  std_logic_vector(7 downto 0);
        P2_in       : in  std_logic_vector(7 downto 0);
        P3_in       : in  std_logic_vector(7 downto 0);
        P0_out      : out std_logic_vector(7 downto 0);
        P1_out      : out std_logic_vector(7 downto 0);
        P2_out      : out std_logic_vector(7 downto 0);
        P3_out      : out std_logic_vector(7 downto 0);
        INT0        : in  std_logic;
        INT1        : in  std_logic;
        T0          : in  std_logic;
        T1          : in  std_logic;
        T2          : in  std_logic;
        T2EX        : in  std_logic;
        RXD         : in  std_logic;
        RXD_IsO     : out std_logic;
        RXD_O       : out std_logic;
        TXD         : out std_logic;
-- External XRAM Wishbone:
        XRAM_WE_O   : out std_logic;
        XRAM_STB_O  : out std_logic;
        XRAM_CYC_O  : out std_logic;
        XRAM_ACK_I  : in  std_logic;
        XRAM_DAT_O  : out std_logic_vector(7 downto 0);
        XRAM_ADR_O  : out std_logic_vector(15 downto 0);
        XRAM_DAT_I  : in  std_logic_vector(7 downto 0)
    );
end T8052;

architecture rtl of T8052 is

    component rom_cyclone IS
      PORT
      (
          address : IN STD_LOGIC_VECTOR (12 DOWNTO 0);
          clock       : IN STD_LOGIC ;
          data        : IN STD_LOGIC_VECTOR (7 DOWNTO 0);
          wren        : IN STD_LOGIC ;
          q           : OUT STD_LOGIC_VECTOR (7 DOWNTO 0)
      );
    end component;
    
    component xram_cyclone IS
      PORT
      (
          address     : IN STD_LOGIC_VECTOR (11 DOWNTO 0);
          clock       : IN STD_LOGIC ;
          data        : IN STD_LOGIC_VECTOR (7 DOWNTO 0);
          wren        : IN STD_LOGIC ;
          q           : OUT STD_LOGIC_VECTOR (7 DOWNTO 0)
      );
    end component;
    
    constant ext_mux_in_num : integer := 8;
    type ext_mux_din_type is array(0 to ext_mux_in_num-1) of std_logic_vector(7 downto 0);
    subtype ext_mux_en_type  is std_logic_vector(0 to ext_mux_in_num-1);

    signal  Ready               : std_logic;
    signal  ROM_Addr            : std_logic_vector(15 downto 0);
    signal  ROM_Data            : std_logic_vector(7 downto 0);
    signal  RAM_Addr,RAM_Addr_r : std_logic_vector(15 downto 0);
    signal  XRAM_Addr           : std_logic_vector(15 downto 0);
    signal  RAM_RData           : std_logic_vector(7 downto 0);
    signal  RAM_WData           : std_logic_vector(7 downto 0);
    signal  RAM_Rd              : std_logic;
    signal  RAM_Wr              : std_logic;
    signal  IO_Rd               : std_logic;
    signal  IO_Wr               : std_logic;
    signal  IO_Addr             : std_logic_vector(6 downto 0);
    signal  IO_Addr_r           : std_logic_vector(6 downto 0);
    signal  IO_WData            : std_logic_vector(7 downto 0);
    signal  IO_RData            : std_logic_vector(7 downto 0);
    signal  IO_RData_arr        : ext_mux_din_type;
    signal  IO_RData_en         : ext_mux_en_type;

    signal  P0_Sel      : std_logic;
    signal  P1_Sel      : std_logic;
    signal  P2_Sel      : std_logic;
    signal  P3_Sel      : std_logic;
    signal  TMOD_Sel    : std_logic;
    signal  TL0_Sel     : std_logic;
    signal  TL1_Sel     : std_logic;
    signal  TH0_Sel     : std_logic;
    signal  TH1_Sel     : std_logic;
    signal  T2CON_Sel   : std_logic;
    signal  RCAP2L_Sel  : std_logic;
    signal  RCAP2H_Sel  : std_logic;
    signal  TL2_Sel     : std_logic;
    signal  TH2_Sel     : std_logic;
    signal  SCON_Sel    : std_logic;
    signal  SBUF_Sel    : std_logic;

    signal  P0_Wr       : std_logic;
    signal  P1_Wr       : std_logic;
    signal  P2_Wr       : std_logic;
    signal  P3_Wr       : std_logic;
    signal  TMOD_Wr     : std_logic;
    signal  TL0_Wr      : std_logic;
    signal  TL1_Wr      : std_logic;
    signal  TH0_Wr      : std_logic;
    signal  TH1_Wr      : std_logic;
    signal  T2CON_Wr    : std_logic;
    signal  RCAP2L_Wr   : std_logic;
    signal  RCAP2H_Wr   : std_logic;
    signal  TL2_Wr      : std_logic;
    signal  TH2_Wr      : std_logic;
    signal  SCON_Wr     : std_logic;
    signal  SBUF_Wr     : std_logic;

    signal  UseR2       : std_logic;
    signal  UseT2       : std_logic;
    signal  UART_Clk    : std_logic;
    signal  R0          : std_logic;
    signal  R1          : std_logic;
    signal  SMOD        : std_logic;

    signal  Int_Trig    : std_logic_vector(6 downto 0);
    signal  Int_Acc     : std_logic_vector(6 downto 0);

    signal  RI          : std_logic;
    signal  TI          : std_logic;
    signal  OF0         : std_logic;
    signal  OF1         : std_logic;
    signal  OF2         : std_logic;
    
    signal FLASH_DOUT       : std_logic_vector(7 downto 0);
    signal ram_access       : std_logic;
    signal RAM_Dout         : std_logic_vector(7 downto 0);
    signal RamWE            : std_logic;
    signal ram_en           : std_logic;
    signal RAM_Cycle        : std_logic;

    signal XRAM_WE          : std_logic;
    signal XRAM_WData       : std_logic_vector(7 downto 0);

    signal mux_sel          : std_logic;
    signal mux_sel_r        : std_logic;
    signal ext_ram_en       : std_logic;

begin

    Ready <= '0' when (XRAM_ACK_I='0' and (ext_ram_en and ram_access)='1') else
             '1';
             
    XRAM_Addr  <= RAM_Addr_r;
    
    ext_ram_en <= '0' when XRAM_Addr(15 downto 12)="0000"  else 
                  '1';

    XRAM_ADR_O <= XRAM_Addr(15 downto 0); -- Registered address
    XRAM_DAT_O <= RAM_WData;
    XRAM_CYC_O <= ext_ram_en and ram_access;
    XRAM_STB_O <= ext_ram_en and ram_access;
    XRAM_WE_O  <= RAM_Wr;

    process (Rst_n,clk)
    begin
      if Rst_n='0' then
        IO_Addr_r    <= (others =>'0');
        RAM_Addr_r   <= (others =>'0');
        mux_sel_r    <= '0';
      elsif clk'event and clk = '1' then
        IO_Addr_r <= IO_Addr;
        if Ready ='1' then
          RAM_Addr_r  <= RAM_Addr;
        end if;
        mux_sel_r <= mux_sel;
      end if;
    end process;
 
    RamWE   <= RAM_Wr and ram_en; --and RAM_Cycle;
  
  
    RAM_RData <= RAM_Dout    when mux_sel_r = '0' else
                 XRAM_DAT_I;
  
    ROM_Data  <= FLASH_DOUT;


    mux_sel <=  ext_ram_en;

    ram_access <= '1' when (RAM_Rd or RAM_Wr)='1' else --and Ram_cycle='1' else
                  '0';

    Altera_rom : rom_cyclone
    port map(
      clock   => clk,
      address => ROM_Addr(12 downto 0),
      data    => RAM_WData,
      q       => FLASH_DOUT,
      wren    => '0'
    );

    Altera_ram : xram_cyclone
        port map(
            clock   => clk,
            wren    => XRAM_WE,
            address => XRAM_Addr(11 downto 0),
            data    => XRAM_WData,
            q       => RAM_Dout);


    ram_en <= '1' when XRAM_Addr(15 downto 12)="0000" else 
              '0';

    XRAM_WE    <= RamWE ;
    XRAM_WData <= RAM_WData;

---------------------------------------------------------------------------------------------

    core51 : T51
      generic map(
        DualBus         => 1,
        RAMAddressWidth => 8,
        SecondDPTR      => 0,
        tristate        => 0,
        simenv          => simenv)
      port map(
        Clk           => clk,
        Rst_n         => Rst_n,
        Ready         => Ready,
        ROM_Addr      => ROM_Addr,
        ROM_Data      => ROM_Data,
        RAM_Addr      => RAM_Addr,
        RAM_RData     => RAM_RData,
        RAM_WData     => RAM_WData,
        RAM_Rd        => RAM_Rd,
        RAM_Wr        => RAM_Wr,
        RAM_Cycle     => RAM_Cycle,
        Int_Trig      => Int_Trig,
        Int_Acc       => Int_Acc,
        SFR_Rd_RMW    => IO_Rd,
        SFR_Wr        => IO_Wr,
        SFR_Addr      => IO_Addr,
        SFR_WData     => IO_WData,
        SFR_RData_in  => IO_RData,
        IRAM_Wr       => open,
        IRAM_Addr     => open,
        IRAM_WData    => open
        );

    glue51 : T51_Glue
      generic map(
        tristate   => 0)
      port map(
        Clk        => clk,
        Rst_n      => Rst_n,
        INT0       => INT0,
        INT1       => INT1,
        RI         => RI,
        TI         => TI,
        OF0        => OF0,
        OF1        => OF1,
        OF2        => OF2,
        IO_Wr      => IO_Wr,
        IO_Addr    => IO_Addr,
        IO_Addr_r  => IO_Addr_r,
        IO_WData   => IO_WData,
        IO_RData   => IO_RData_arr(0),
        Selected   => IO_RData_en(0),
        Int_Acc    => Int_Acc,
        R0         => R0,
        R1         => R1,
        SMOD       => SMOD,
        P0_Sel     => P0_Sel,
        P1_Sel     => P1_Sel,
        P2_Sel     => P2_Sel,
        P3_Sel     => P3_Sel,
        TMOD_Sel   => TMOD_Sel,
        TL0_Sel    => TL0_Sel,
        TL1_Sel    => TL1_Sel,
        TH0_Sel    => TH0_Sel,
        TH1_Sel    => TH1_Sel,
        T2CON_Sel  => T2CON_Sel,
        RCAP2L_Sel => RCAP2L_Sel,
        RCAP2H_Sel => RCAP2H_Sel,
        TL2_Sel    => TL2_Sel,
        TH2_Sel    => TH2_Sel,
        SCON_Sel   => SCON_Sel,
        SBUF_Sel   => SBUF_Sel,
        P0_Wr      => P0_Wr,
        P1_Wr      => P1_Wr,
        P2_Wr      => P2_Wr,
        P3_Wr      => P3_Wr,
        TMOD_Wr    => TMOD_Wr,
        TL0_Wr     => TL0_Wr,
        TL1_Wr     => TL1_Wr,
        TH0_Wr     => TH0_Wr,
        TH1_Wr     => TH1_Wr,
        T2CON_Wr   => T2CON_Wr,
        RCAP2L_Wr  => RCAP2L_Wr,
        RCAP2H_Wr  => RCAP2H_Wr,
        TL2_Wr     => TL2_Wr,
        TH2_Wr     => TH2_Wr,
        SCON_Wr    => SCON_Wr,
        SBUF_Wr    => SBUF_Wr,
        Int_Trig   => Int_Trig
        );

    tp0 : T51_Port
      generic map(
        tristate   => 0)
      port map(
        Clk        => clk,
        Rst_n      => Rst_n,
        Sel        => P0_Sel,
        Rd_RMW     => IO_Rd,
        Wr         => P0_Wr,
        Data_In    => IO_WData,
        Data_Out   => IO_RData_arr(1),
        IOPort_in  => P0_in,
        IOPort_out => P0_out);

     IO_RData_en(1) <= P0_Sel;


    tp1 : T51_Port
      generic map(
        tristate   => 0)
      port map(
        Clk        => clk,
        Rst_n      => Rst_n,
        Sel        => P1_Sel,
        Rd_RMW     => IO_Rd,
        Wr         => P1_Wr,
        Data_In    => IO_WData,
        Data_Out   => IO_RData_arr(2),
        IOPort_in  => P1_in,
        IOPort_out => P1_out);

    IO_RData_en(2) <= P1_Sel;

    tp2 : T51_Port
      generic map(
        tristate   => 0)
      port map(
        Clk        => clk,
        Rst_n      => Rst_n,
        Sel        => P2_Sel,
        Rd_RMW     => IO_Rd,
        Wr         => P2_Wr,
        Data_In    => IO_WData,
        Data_Out   => IO_RData_arr(3),
        IOPort_in  => P2_in,
        IOPort_out => P2_out);

    IO_RData_en(3) <= P2_Sel;

    tp3 : T51_Port
      generic map(
        tristate   => 0)
      port map(
        Clk        => clk,
        Rst_n      => Rst_n,
        Sel        => P3_Sel,
        Rd_RMW     => IO_Rd,
        Wr         => P3_Wr,
        Data_In    => IO_WData,
        Data_Out   => IO_RData_arr(4),
        IOPort_in  => P3_in,
        IOPort_out => P3_out);
    IO_RData_en(4) <= P3_Sel;

    tc01 : T51_TC01
      generic map(
        FastCount => 0,
        tristate  => 0)
      port map(
        Clk      => clk,
        Rst_n    => Rst_n,
        T0       => T0,
        T1       => T1,
        INT0     => INT0,
        INT1     => INT1,
        M_Sel    => TMOD_Sel,
        H0_Sel   => TH0_Sel,
        L0_Sel   => TL0_Sel,
        H1_Sel   => TH1_Sel,
        L1_Sel   => TL1_Sel,
        R0       => R0,
        R1       => R1,
        M_Wr     => TMOD_Wr,
        H0_Wr    => TH0_Wr,
        L0_Wr    => TL0_Wr,
        H1_Wr    => TH1_Wr,
        L1_Wr    => TL1_Wr,
        Data_In  => IO_WData,
        Data_Out => IO_RData_arr(5),
        OF0      => OF0,
        OF1      => OF1);

    IO_RData_en(5) <= TMOD_Sel or TH0_Sel or TL0_Sel or TH1_Sel or TL1_Sel;

    tc2 : T51_TC2
      generic map(
        FastCount => 0,
        tristate  => 0)
      port map(
        Clk      => clk,
        Rst_n    => Rst_n,
        T2       => T2,
        T2EX     => T2EX,
        C_Sel    => T2CON_Sel,
        CH_Sel   => RCAP2H_Sel,
        CL_Sel   => RCAP2L_Sel,
        H_Sel    => TH2_Sel,
        L_Sel    => TL2_Sel,
        C_Wr     => T2CON_Wr,
        CH_Wr    => RCAP2H_Wr,
        CL_Wr    => RCAP2L_Wr,
        H_Wr     => TH2_Wr,
        L_Wr     => TL2_Wr,
        Data_In  => IO_WData,
        Data_Out => IO_RData_arr(6),
        UseR2    => UseR2,
        UseT2    => UseT2,
        UART_Clk => UART_Clk,
        F        => OF2);

    IO_RData_en(6) <= T2CON_Sel or RCAP2H_Sel or RCAP2L_Sel or TH2_Sel or TL2_Sel;


    uart : T51_UART
      generic map(
        FastCount => 0,
        tristate  => 0)
      port map(
        Clk      => clk,
        Rst_n    => Rst_n,
        UseR2    => UseR2,
        UseT2    => UseT2,
        BaudC2   => UART_Clk,
        BaudC1   => OF1,
        SC_Sel   => SCON_Sel,
        SB_Sel   => SBUF_Sel,
        SC_Wr    => SCON_Wr,
        SB_Wr    => SBUF_Wr,
        SMOD     => SMOD,
        Data_In  => IO_WData,
        Data_Out => IO_RData_arr(7),
        RXD      => RXD,
        RXD_IsO  => RXD_IsO,
        RXD_O    => RXD_O,
        TXD      => TXD,
        RI       => RI,
        TI       => TI);

    IO_RData_en(7) <= SCON_Sel or SBUF_Sel;
    
--    IO_RData_en(8) <= '1' when (sevseg_con_sel or SevSeg_En_Sel)='1' or sevseg_data_sel/="0000" else
--                      '0';
--    IO_RData_en(8) <='0';
--    IO_RData_en(9) <= ps2_ctrl_stat_sel or ps2_data_sel; 
--    IO_RData_en(9) <= '0';

--    ps2_int0       <= not ps2_irq;

    process(IO_RData_en,IO_RData_arr)
    begin
      IO_RData <= IO_RData_arr(0);
      for i in 1 to ext_mux_in_num-1 loop 
        if IO_RData_en(i)='1' then
          IO_RData <= IO_RData_arr(i);
        end if;
      end loop;
    end process;

end;