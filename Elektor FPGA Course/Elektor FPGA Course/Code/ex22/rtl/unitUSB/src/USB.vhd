-- -----------------------------------------------
-- Title:    Wrapper for OpenCores USB Core
-- file:     USB.vhd
-- language: VHDL 93
-- author:       HSSE / Andreas Voggeneder
-- comments:
-- history: 
--   11.2005 creation
-- -----------------------------------------------


library IEEE;
library Work;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

LIBRARY altera_mf;
USE altera_mf.altera_mf_components.all;

entity USB is
  port (
    CLK_i     : in std_logic;
--    CLK48_i   : in std_logic;
    Reset_n_i : in std_logic;

    ------------------------------
    -- USB PHY Interface
    ------------------------------
    tx_dp       : out std_logic; 
    tx_dn       : out std_logic; 
    tx_oe       : out std_logic;
--    rx_d        : in  std_logic;
    rx_dp       : in  std_logic; 
    rx_dn       : in  std_logic;
     
    ------------------------------
    -- Wishbone Bus (8051)
    ------------------------------
    address_i   : in  std_logic_vector(15 downto 0);
    data_i      : in  std_logic_vector(7 downto 0);
    data_o      : out std_logic_vector(7 downto 0);
    we_i        : in  std_logic;
    strobe_i    : in  std_logic;
    ack_o       : out std_logic;
    Irq_o       : out std_logic
    );
end USB;

architecture rtl of USB is
  -- 10 M4K Blocks
  component usbHostSlave is
    port (
        clk_i                 : in  std_logic;
        rst_i                 : in  std_logic;
        address_i             : in  std_logic_vector(7 downto 0);
        data_i                : in  std_logic_vector(7 downto 0);
        data_o                : out std_logic_vector(7 downto 0);
        we_i                  : in  std_logic;
        strobe_i              : in  std_logic;
        ack_o                 : out std_logic;
        usbClk                : in  std_logic;
        hostSOFSentIntOut     : out std_logic;
        hostConnEventIntOut   : out std_logic;
        hostResumeIntOut      : out std_logic;
        hostTransDoneIntOut   : out std_logic;
        slaveNAKSentIntOut    : out std_logic;
        slaveSOFRxedIntOut    : out std_logic;
        slaveResetEventIntOut : out std_logic;
        slaveResumeIntOut     : out std_logic;
        slaveTransDoneIntOut  : out std_logic;
        USBWireDataIn         : in  std_logic_vector(1 downto 0);
        USBWireDataInTick     : out std_logic;
        USBWireDataOut        : out std_logic_vector(1 downto 0);
        USBWireDataOutTick    : out std_logic;
        USBWireCtrlOut        : out std_logic;
        USBFullSpeed          : out std_logic
    );
  end component;
  

   
  signal Reset_inv             : std_logic;
--  signal wb_dat_is,wb_dat_os                  : std_ulogic_vector(7 downto 0);
  signal wb_stb_s,wb_ack_os    : std_logic;
  signal hostSOFSentIntOut     : std_logic;                   
  signal hostConnEventIntOut   : std_logic;                   
  signal hostResumeIntOut      : std_logic;                   
  signal hostTransDoneIntOut   : std_logic;                   
  signal slaveNAKSentIntOut    : std_logic;                   
  signal slaveSOFRxedIntOut    : std_logic;                   
  signal slaveResetEventIntOut : std_logic;                   
  signal slaveResumeIntOut     : std_logic;                   
  signal slaveTransDoneIntOut  : std_logic;                   
  signal USBWireDataIn         : std_logic_vector(1 downto 0);
  signal USBWireDataInTick     : std_logic;                   
  signal USBWireDataOut        : std_logic_vector(1 downto 0);
  signal USBWireDataOutTick    : std_logic;                   
  signal USBWireCtrlOut        : std_logic;                   
  signal USBFullSpeed          : std_logic;                    
--  signal CtrlReg               : std_logic_vector(4 downto 0);
--  signal wd_dat_s              : std_logic_vector(7 downto 0);
--  signal Wait_s                : std_logic;
--  signal rw_s          : std_logic;
--  signal rw_delayed_s,rw_delayed1_s         : std_logic;
--  signal wr_int,rd_int         : std_logic;
--  signal CPUDataOut_s          : std_logic_vector(7 downto 0);
  
--  signal CPUAdr_r     :  std_logic_vector(7 downto 0);
--  signal Enable_r     :  std_logic_vector(1 downto 0);
--  signal CPUDataIn_r  :  std_logic_vector(7 downto 0);
--  signal CPURd_r      :  std_logic;
--  signal CPUWr_r      :  std_logic;
--  signal CPUWr_rr,CPURd_rr :  std_logic_vector(1 downto 0);
begin
  
  Reset_inv <= not Reset_n_i;
  
--  process(Reset_n_i,CLK48_i)
--  begin
--    if Reset_n_i='0' then
--      CPUWr_rr <= (others =>'0');
--      CPURd_rr <= (others =>'0');
--    elsif CLK48_i'event and CLK48_i='1' then
--      CPUWr_rr(0) <= CPUWr_r;
--      CPURd_rr(0) <= CPURd_r;
--      CPUWr_rr(1) <= CPUWr_rr(0);
--      CPURd_rr(1) <= CPURd_rr(0);
--    end if;
--  end process;
--  
--  process(Reset_n_i,CLK_i)
--  begin
--    if Reset_n_i='0' then
----      rw_delayed1_s <= '0';
--      CPUAdr_r     <= (others =>'0');
--      Enable_r     <= (others =>'0');
--      CPUDataIn_r  <= (others =>'0');
--      CPURd_r      <= '0';
--      CPUWr_r      <= '0';
--    elsif clk_i'event and clk_i='1' then
--      CPUAdr_r     <= CPUAdr_i;
--      Enable_r     <= Enable_i;
--      CPUDataIn_r  <= CPUDataIn_i;
--      CPURd_r      <= CPURd_i;
--      CPUWr_r      <= CPUWr_i;
--    end if;
--  end process;
  
--  wr_int <= CPUWr_rr(0) and not CPUWr_rr(1);
--  rd_int <= CPURd_rr(0) and not CPURd_rr(1);
  
  usb1 : usbHostSlave
      port map (
        clk_i                 => CLK_i,
        rst_i                 => Reset_inv,
        data_i                => data_i,
        data_o                => data_o,
        address_i             => address_i(7 downto 0),
        we_i                  => we_i,
        strobe_i              => wb_stb_s,
        ack_o                 => wb_ack_os,
        usbClk                => CLK_i,             
        hostSOFSentIntOut     => hostSOFSentIntOut,    
        hostConnEventIntOut   => hostConnEventIntOut,
        hostResumeIntOut      => hostResumeIntOut,
        hostTransDoneIntOut   => hostTransDoneIntOut,
        slaveNAKSentIntOut    => slaveNAKSentIntOut,
        slaveSOFRxedIntOut    => slaveSOFRxedIntOut,
        slaveResetEventIntOut => slaveResetEventIntOut,
        slaveResumeIntOut     => slaveResumeIntOut,
        slaveTransDoneIntOut  => slaveTransDoneIntOut,
        USBWireDataIn         => USBWireDataIn,
        USBWireDataInTick     => USBWireDataInTick ,
        USBWireDataOut        => USBWireDataOut,
        USBWireDataOutTick    => USBWireDataOutTick,
        USBWireCtrlOut        => USBWireCtrlOut,
        USBFullSpeed          => USBFullSpeed

        );

 
  tx_dp       <= USBWireDataOut(1);
  tx_dn       <= USBWireDataOut(0);
  tx_oe       <= not USBWireCtrlOut;
  USBWireDataIn(1) <= rx_dp;
  USBWireDataIn(0) <= rx_dn;
--  Enable_s         <= '1' when address_i(15 downto 8)=X"FF" else
--                      '0';
  wb_stb_s         <= strobe_i; -- and Enable_s;
                      
  ack_o            <= wb_ack_os; -- when Enable_s='1' else
--                      '1'; 


--  CPUDataOut_o <= wd_dat_s when Enable_i(0)='1' else
--                  "000"&CtrlReg when Enable_i(1)='1' else
--                  (others => '-');
  
--  wb_adr_s <= "01"&bd_adr_s when ctl_acc='1' else
--              CPUAdr_i(wb_adr_s'range);
  
--  wb_stb_s <= Enable_i(0) and (CPURd_i or CPUWr_i);
-- 
--  Regs : process(clk_i, Reset_n_i)
--  begin
--    if Reset_n_i = '0' then
--      CtrlReg   <= (others => '0');
--      CPUDataOut_s<= (others => '0');
--    elsif clk_i'event and clk_i = '1' then
--      if (Enable_i(1) and CPUWr_i) = '1' then
--        if CPUAdr_i(0) = '0' then
--          CtrlReg <= CPUDataIn_i(CtrlReg'range);
--        end if;
--      end if;
--      if Enable_i(0)='1' then
--        CPUDataOut_s <= wd_dat_s;
--      elsif Enable_i(1)='1' then
--        CPUDataOut_s <= "000"&CtrlReg;
--      end if;
--    end if;
--  end process Regs;
 
  process(CLK_i)
  begin
    if CLK_i'event and CLK_i='1' then
      Irq_o <=  hostSOFSentIntOut or hostConnEventIntOut or
                hostResumeIntOut or hostTransDoneIntOut or
                slaveSOFRxedIntOut or slaveResetEventIntOut or
                slaveResumeIntOut or slaveTransDoneIntOut or
                slaveNAKSentIntOut;
    end if;
  end process;
  
--  Wait_s <= '1' when (Enable_i(0)='1' and 
--                      ((CPUWr_i and not CPUWr_r) or (CPURd_i and not CPURd_r))='1') or
--                     (wb_stb_s and not wb_ack_os)='1' 
--                     else
--            '0';
--  Wait_s <= '1' when (wb_stb_s and not wb_ack_os)='1' 
--                     else
--            '0';
--  CPUWait_o <= Wait_s;
  
end rtl;