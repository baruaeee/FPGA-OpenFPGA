-- -----------------------------------------------
-- Title:    Toplevel Entity of 8052 CPU
-- file:     T8052_Toplevel.vhd
-- language: VHDL 93
-- author:       HSSE / Andreas Voggeneder
-- comments:
-- history:
--   05.2006 creation
-- -----------------------------------------------


library IEEE;
library Work;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

-- Hardware Schnittstelle für 8051
entity T8052_Toplevel is
  generic(
        -- excludes FPGA specific blocks (DLL, RAM_ALTERA)
        -- when set to 1 (speeds up simulation)
        -- HAVE TO SET to 0 for synthesis !
        simenv      : integer := 0);
	port
	(
    		SWITCH1 :  IN  STD_LOGIC;
    		SWITCH2 :  IN  STD_LOGIC;
    		SWITCH3 :  IN  STD_LOGIC;
    		SWITCH4 :  IN  STD_LOGIC;
    		clk50MHz :  IN  STD_LOGIC;
    		DIPSWITCH :  IN  STD_LOGIC_VECTOR(7 downto 0);
    		DIG_A :  OUT  STD_LOGIC;
    		DIG_B :  OUT  STD_LOGIC;
    		DIG_C :  OUT  STD_LOGIC;
    		DIG_D :  OUT  STD_LOGIC;
    		DIG_E :  OUT  STD_LOGIC;
    		DIG_F :  OUT  STD_LOGIC;
    		DIG_G :  OUT  STD_LOGIC;
    		DIG_1 :  OUT  STD_LOGIC;
    		DIG_2 :  OUT  STD_LOGIC;
    		DIG_3 :  OUT  STD_LOGIC;
    		DIG_4 :  OUT  STD_LOGIC;
    		LED :  OUT  STD_LOGIC_VECTOR(7 downto 1)
       );
end entity T8052_Toplevel;

architecture RTL of T8052_Toplevel is

component t8052
  generic(
        simenv      : integer := 0);
	PORT(Clk : IN STD_LOGIC;
		 Rst_n : IN STD_LOGIC;
		 INT0 : IN STD_LOGIC;
		 INT1 : IN STD_LOGIC;
		 T0 : IN STD_LOGIC;
		 T1 : IN STD_LOGIC;
		 T2 : IN STD_LOGIC;
		 T2EX : IN STD_LOGIC;
		 RXD : IN STD_LOGIC;
		 XRAM_ACK_I : IN STD_LOGIC;
		 P0_in : IN STD_LOGIC_VECTOR(7 downto 0);
		 P1_in : IN STD_LOGIC_VECTOR(7 downto 0);
		 P2_in : IN STD_LOGIC_VECTOR(7 downto 0);
		 P3_in : IN STD_LOGIC_VECTOR(7 downto 0);
		 XRAM_DAT_I : IN STD_LOGIC_VECTOR(7 downto 0);
		 RXD_IsO : OUT STD_LOGIC;
		 RXD_O : OUT STD_LOGIC;
		 TXD : OUT STD_LOGIC;
		 XRAM_WE_O : OUT STD_LOGIC;
		 XRAM_STB_O : OUT STD_LOGIC;
		 XRAM_CYC_O : OUT STD_LOGIC;
		 P0_out : OUT STD_LOGIC_VECTOR(7 downto 0);
		 P1_out : OUT STD_LOGIC_VECTOR(7 downto 0);
		 P2_out : OUT STD_LOGIC_VECTOR(7 downto 0);
		 P3_out : OUT STD_LOGIC_VECTOR(7 downto 0);
		 XRAM_ADR_O : OUT STD_LOGIC_VECTOR(15 downto 0);
		 XRAM_DAT_O : OUT STD_LOGIC_VECTOR(7 downto 0)
	);
end component;

component wish_io
	PORT(CLK : IN STD_LOGIC;
		 RESET : IN STD_LOGIC;
		 WE_IN : IN STD_LOGIC;
		 STB_IN : IN STD_LOGIC;
		 CYC_IN : IN STD_LOGIC;
		 DAT_IN : IN STD_LOGIC_VECTOR(7 downto 0);
		 INPUT : IN STD_LOGIC_VECTOR(7 downto 0);
		 ACK_O : OUT STD_LOGIC;
		 DAT_O : OUT STD_LOGIC_VECTOR(7 downto 0);
		 OUTPUT : OUT STD_LOGIC_VECTOR(7 downto 0)
	);
end component;

component altpll0
	PORT(inclk0 : IN STD_LOGIC;
		 c0 : OUT STD_LOGIC;
		 locked : OUT STD_LOGIC
	);
end component;

component wishbone_decoder
	PORT(CYC_I : IN STD_LOGIC;
		 STB_I : IN STD_LOGIC;
		 WE_I : IN STD_LOGIC;
		 S1_ACK_I : IN STD_LOGIC;
		 S2_ACK_I : IN STD_LOGIC;
		 ADR_I : IN STD_LOGIC_VECTOR(15 downto 0);
		 DAT_I_MASTER : IN STD_LOGIC_VECTOR(7 downto 0);
		 S1_DAT_I : IN STD_LOGIC_VECTOR(7 downto 0);
		 S2_DAT_I : IN STD_LOGIC_VECTOR(7 downto 0);
		 ACK_O : OUT STD_LOGIC;
		 S1_CYC_O : OUT STD_LOGIC;
		 S1_STB_O : OUT STD_LOGIC;
		 S1_WE_O : OUT STD_LOGIC;
		 S2_CYC_O : OUT STD_LOGIC;
		 S2_STB_O : OUT STD_LOGIC;
		 S2_WE_O : OUT STD_LOGIC;
		 S1_ENABLE : OUT STD_LOGIC;
		 S2_ENABLE : OUT STD_LOGIC;
		 DAT_O_MASTER : OUT STD_LOGIC_VECTOR(7 downto 0);
		 S1_DAT_O : OUT STD_LOGIC_VECTOR(7 downto 0);
		 S2_DAT_O : OUT STD_LOGIC_VECTOR(7 downto 0)
	);
end component;

  signal	ACK :  STD_LOGIC;
  signal	ADR :  STD_LOGIC_VECTOR(15 downto 0);
  signal	CLK :  STD_LOGIC;
  signal	CYC :  STD_LOGIC;
  signal	DAT_M_S :  STD_LOGIC_VECTOR(7 downto 0);
  signal	DAT_S_M :  STD_LOGIC_VECTOR(7 downto 0);
  signal	GND :  STD_LOGIC;
  signal	LED_ALTERA_SYNTHESIZED :  STD_LOGIC_VECTOR(7 downto 0);
  signal	P0 :  STD_LOGIC_VECTOR(7 downto 0);
  signal	P1 :  STD_LOGIC_VECTOR(7 downto 0);
  signal	P2 :  STD_LOGIC_VECTOR(7 downto 0);
  signal	P3 :  STD_LOGIC_VECTOR(7 downto 0);
  signal	RESET :  STD_LOGIC;
  signal	RESET_IN :  STD_LOGIC;
  signal	Rst_n :  STD_LOGIC;
  signal	S1_ACK :  STD_LOGIC;
  signal	S1_CYC :  STD_LOGIC;
  signal	S1_DAT_M_S :  STD_LOGIC_VECTOR(7 downto 0);
  signal	S1_DAT_S_M :  STD_LOGIC_VECTOR(7 downto 0);
  signal	S1_SEL :  STD_LOGIC;
  signal	S1_STB :  STD_LOGIC;
  signal	S1_WE :  STD_LOGIC;
  signal	S2_ACK :  STD_LOGIC;
  signal	S2_CYC :  STD_LOGIC;
  signal	S2_DAT_M_S :  STD_LOGIC_VECTOR(7 downto 0);
  signal	S2_DAT_S_M :  STD_LOGIC_VECTOR(7 downto 0);
  signal	S2_SEL :  STD_LOGIC;
  signal	S2_STB :  STD_LOGIC;
  signal	S2_WE :  STD_LOGIC;
  signal	SEG :  STD_LOGIC_VECTOR(7 downto 0);
  signal	STB :  STD_LOGIC;
  signal	SWITCH0 :  STD_LOGIC;
  signal	SWITCH5 :  STD_LOGIC;
  signal	SWITCH6 :  STD_LOGIC;
  signal	SWITCH7 :  STD_LOGIC;
  signal	WE :  STD_LOGIC;
  signal	SYNTHESIZED_WIRE_0 :  STD_LOGIC;
  signal	SYNTHESIZED_WIRE_1 :  STD_LOGIC;
  signal	SYNTHESIZED_WIRE_2 :  STD_LOGIC;
  
  signal	GDFX_TEMP_SIGNAL_0 :  STD_LOGIC_VECTOR(7 downto 0);

BEGIN 
    DIG_1 <= '1';
    DIG_2 <= '1';
    
    GDFX_TEMP_SIGNAL_0 <= (SWITCH7 & SWITCH6 & SWITCH5 & SWITCH4 & SWITCH3 & SWITCH2 & SWITCH1 & SWITCH0);
    
    
    u0 : t8052
    generic map(
          simenv => simenv)
    PORT MAP(Clk => CLK,
    		 Rst_n => Rst_n,
    		 INT0 => GND,
    		 INT1 => GND,
    		 T0 => GND,
    		 T1 => GND,
    		 T2 => GND,
    		 T2EX => GND,
    		 RXD => GND,
    		 XRAM_ACK_I => ACK,
    		 P0_in => P0,
    		 P1_in => P1,
    		 P2_in => P2,
    		 P3_in => P3,
    		 XRAM_DAT_I => DAT_S_M,
    		 XRAM_WE_O => WE,
    		 XRAM_STB_O => STB,
    		 XRAM_CYC_O => CYC,
    		 P0_out => P0,
    		 P1_out => P1,
    		 P2_out => P2,
    		 P3_out => P3,
    		 XRAM_ADR_O => ADR,
    		 XRAM_DAT_O => DAT_M_S);
    
    b2v_inst1 : wish_io
    PORT MAP(CLK => CLK,
    		 RESET => RESET,
    		 WE_IN => S1_WE,
    		 STB_IN => S1_STB,
    		 CYC_IN => S1_CYC,
    		 DAT_IN => S1_DAT_M_S,
    		 INPUT => DIPSWITCH,
    		 ACK_O => S1_ACK,
    		 DAT_O => S1_DAT_S_M,
    		 OUTPUT => LED_ALTERA_SYNTHESIZED);
    
    b2v_inst3 : wish_io
    PORT MAP(CLK => CLK,
    		 RESET => RESET,
    		 WE_IN => S2_WE,
    		 STB_IN => S2_STB,
    		 CYC_IN => S2_CYC,
    		 DAT_IN => S2_DAT_M_S,
    		 INPUT => GDFX_TEMP_SIGNAL_0,
    		 ACK_O => S2_ACK,
    		 DAT_O => S2_DAT_S_M,
    		 OUTPUT => SEG);
    
    use_dll: if simenv=0 generate
      b2v_inst4 : altpll0
      PORT MAP(inclk0 => clk50MHz,
      		 c0 => CLK,
      		 locked => SYNTHESIZED_WIRE_1);
      
      Rst_n <= NOT(RESET_IN OR SYNTHESIZED_WIRE_0);
      end generate;
  
  no_dll:if simenv/=0 generate
    clk      <= clk50MHz;
    Rst_n    <= not SWITCH1;
  end generate;
    
    SYNTHESIZED_WIRE_0 <= NOT(SYNTHESIZED_WIRE_1);
    
    
    RESET <= NOT(Rst_n);
    
    
    b2v_inst8 : wishbone_decoder
    PORT MAP(CYC_I => CYC,
    		 STB_I => STB,
    		 WE_I => WE,
    		 S1_ACK_I => S1_ACK,
    		 S2_ACK_I => S2_ACK,
    		 ADR_I => ADR,
    		 DAT_I_MASTER => DAT_M_S,
    		 S1_DAT_I => S1_DAT_S_M,
    		 S2_DAT_I => S2_DAT_S_M,
    		 ACK_O => ACK,
    		 S1_CYC_O => S1_CYC,
    		 S1_STB_O => S1_STB,
    		 S1_WE_O => S1_WE,
    		 S2_CYC_O => S2_CYC,
    		 S2_STB_O => S2_STB,
    		 S2_WE_O => S2_WE,
    		 S1_ENABLE => S1_SEL,
    		 S2_ENABLE => S2_SEL,
    		 DAT_O_MASTER => DAT_S_M,
    		 S1_DAT_O => S1_DAT_M_S,
    		 S2_DAT_O => S2_DAT_M_S);
    		 
    DIG_A <= SEG(6);
    RESET_IN <= SWITCH1;
    DIG_B <= SEG(5);
    DIG_C <= SEG(4);
    DIG_D <= SEG(3);
    DIG_E <= SEG(2);
    DIG_F <= SEG(1);
    DIG_G <= SEG(0);
    DIG_3 <= S2_SEL;
    DIG_4 <= S1_SEL;
    LED(7 downto 1) <= LED_ALTERA_SYNTHESIZED(7 downto 1);
    
    GND <= '0';
    SWITCH0 <= '0';
    SWITCH5 <= '0';
    SWITCH6 <= '0';
    SWITCH7 <= '0';


end RTL;





