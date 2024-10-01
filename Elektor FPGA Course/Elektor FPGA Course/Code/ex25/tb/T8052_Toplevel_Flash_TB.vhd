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

  -- component ports
  signal SWITCH1   : std_logic;
  signal SCL,SDA   : std_logic;
  signal Ps2Clk    : std_logic;
  signal Ps2Dat    : std_logic;
  signal mtx_clk_os : std_logic;
  signal mtxd_is    : std_logic_vector(3 downto 0);
  signal mtxen_is   : std_logic;
  signal mtxerr_is  : std_logic;
  signal mrx_clk_os : std_logic;
  signal mrxd_os    : std_logic_vector(3 downto 0);
  signal mrxdv_os   : std_logic;
  signal mrxerr_os  : std_logic;
  signal mcoll_o    : std_logic;
  signal mcrs_o     : std_logic;
  signal mdc_is     : std_logic;
  signal md_ios     : std_logic;
  signal phy_log_s : std_logic_vector(31 downto 0);
  
  signal SRAM2_nCS    : std_logic;
  signal SRAM2_ADR    : std_logic_vector(17 downto 0);
  signal SRAM2_DB     : std_logic_vector(7 downto 0);
  signal SRAM2_nWR    : std_logic;
  signal SRAM2_nOE    : std_logic;
  signal SRAM2_nBE    : std_logic_vector(1 downto 0);
  signal SRAM1_nCS    : std_logic;
  signal SRAM1_ADR    : std_logic_vector(17 downto 0);
  signal SRAM1_DB     : std_logic_vector(15 downto 0);
  signal SRAM1_nWR    : std_logic;
  signal SRAM1_nOE    : std_logic;
  signal SRAM1_nBE    : std_logic_vector(1 downto 0);
  signal SRAM1_nCEBE  : std_logic_vector(1 downto 0);
  signal FLASH_nCE   : std_logic;
  signal FLASH_nWR   : std_logic;
  signal FLASH_nOE   : std_logic;
  signal Rst_n       : std_logic;


  -- clock
  signal Clk : std_logic := '1';

begin  -- Behavioral

  SCL <= 'H';
  SDA <= 'H';
  Ps2Clk <= 'H';
  Ps2Dat <= 'H';
  -- component instantiation
  DUT: entity work.T8052_Toplevel
    generic map(
      simenv    => 1)  -- do not simulate DLL (too slow)
    port map (
      clk_50MHz => Clk,
      SWITCH1   => SWITCH1,
      LED       => open,
      SWITCH3   => '1',
      DIPSW     => "00000000",
      Txd232    => open,
      RxD232    => '1',
      SCL       => SCL,
      SDA       => SDA,
      Ps2Clk_io => Ps2Clk,
      Ps2Dat_io => Ps2Dat,
      ETH_Reset_o   => open,
      mtx_clk_pad_i => mtx_clk_os,
      mtxd_pad_o    => mtxd_is,
      mtxen_pad_o   => mtxen_is,
      mtxerr_pad_o  => mtxerr_is,
      -- RX
      mrx_clk_pad_i => mrx_clk_os,
      mrxd_pad_i    => mrxd_os,
      mrxdv_pad_i   => mrxdv_os,
      mrxerr_pad_i  => mrxerr_os,
      mcoll_pad_i   => mcoll_o,
      mcrs_pad_i    => mcrs_o,
      -- MIIM       =>
      mdc_o         => mdc_is,
      md_io         => md_ios,
      SRAM1_nCS  => SRAM1_nCS,
      SRAM1_ADR  => SRAM1_ADR,
      SRAM1_DB   => SRAM1_DB,
      SRAM1_nWR  => SRAM1_nWR,
      SRAM1_nOE  => SRAM1_nOE,
      SRAM1_nBE  => SRAM1_nBE,
      SRAM2_nCS  => SRAM2_nCS,
      SRAM2_ADR  => SRAM2_ADR,
      SRAM2_DB   => SRAM2_DB(7 downto 0),
      SRAM2_nWR  => SRAM2_nWR,
      SRAM2_nOE  => SRAM2_nOE,
      SRAM2_nBE  => SRAM2_nBE,
      FLASH_nCE  => FLASH_nCE,
      FLASH_nWR  => FLASH_nWR,
      FLASH_nOE  => FLASH_nOE
      );

		phy: entity work.eth_phy
    port map(
      -- COMMON
      m_rst_n_i  => Rst_n,

      -- MAC TX
      mtx_clk_o  => mtx_clk_os,
      mtxd_i     => mtxd_is,
      mtxen_i    => mtxen_is,
      mtxerr_i   => mtxerr_is,

      -- MAC RX
      mrx_clk_o  => mrx_clk_os,
      mrxd_o     => mrxd_os,
      mrxdv_o    => mrxdv_os,
      mrxerr_o   => mrxerr_os,
      mcoll_o    => mcoll_o,
      mcrs_o     => mcrs_o,

      -- MIIM
      mdc_i      => mdc_is,
      md_io      => md_ios,

      -- SYSTEM
      phy_log    => phy_log_s
      );
	phy_log_s		<= (others =>'0');
	SRAM2_DB    <= (others =>'H');
	SRAM1_DB    <= (others =>'H');
--	SRAM_DB(15 downto 8) <= (others =>'Z');

--    SRAM : entity work.A128Kx8
--      port map(
--      CE_b => SRAM_nCS, 
--      WE_b => SRAM_nWR,
--      OE_n => SRAM_nOE,
--         A => SRAM_ADR(16 downto 0),
--        IO => SRAM_DB
--      );
   SRAM2 : entity work.SRAM      
     port map(                     
     nCE => SRAM2_nCS,             
     nWE => SRAM2_nWR,             
     nOE => SRAM2_nOE,            
     A   => SRAM2_ADR(15 downto 0),
     D   => SRAM2_DB(7 downto 0)               
     );
   
   SRAM1_nCEBE(0) <=  SRAM1_nCS or SRAM1_nBE(0);
   SRAM1_nCEBE(1) <=  SRAM1_nCS or SRAM1_nBE(1);
   
   SRAM1L : entity work.SRAM      
     port map(                     
     nCE => SRAM1_nCEBE(0),             
     nWE => SRAM1_nWR,             
     nOE => SRAM1_nOE,            
     A   => SRAM1_ADR(15 downto 0),
     D   => SRAM1_DB(7 downto 0)               
     );
  SRAM1H : entity work.SRAM      
     port map(                     
     nCE => SRAM1_nCEBE(1),             
     nWE => SRAM1_nWR,             
     nOE => SRAM1_nOE,            
     A   => SRAM1_ADR(15 downto 0),
     D   => SRAM1_DB(15 downto 8)               
     );     

  -- clock generation (25 MHz)
  Clk <= not Clk after 20 ns;

  -- waveform generation
  WaveGen_Proc: process
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
  begin
    -- activate Reset for 1 clock cycle
    SWITCH1 <= '1' after 0 ns,
               '0' after 40 ns;
    Ps2Clk <= 'Z';
    Ps2Dat <= 'Z';
    wait for 100 us;
    sendkbd(X"5a");
    wait;

  end process WaveGen_Proc;

 Rst_n <= '0','1' after 200 ns;

end Behavioral;
