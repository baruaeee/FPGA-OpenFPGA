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
-- Copyright (c) 2003 by Andreas Voggeneder
--------------------------------------------------------------------------------

-- Ram Usage:
-- (2* 2560)*16 + 4096*8 = 10 + 8 = 18 Blocks

architecture rtl of Graphiccard is
  constant RamAddressWidth_c  : natural := 12;
  constant RamDataWidth_c     : natural := 8;
  constant ParamWidth_c       : natural := 8;
  constant Stages             : natural := 10;  -- Anzahl der Zaehlerstufen. Default 10
  constant dVGATextMem_Size_c : natural := CPU_Adr_i'length;
  
  subtype dataOut_t is std_logic_vector(RamDataWidth_c-1 downto 0);
  type vramOutVectorB_t is array (2 downto 0) of dataOut_t ;
  
  
  signal q, Spalte          : unsigned(Stages-1 downto 0);
  signal qen                : std_ulogic;
  signal Col                : std_ulogic_vector(2 downto 0);
  signal Zeile              : unsigned(Stages-1 downto 0);
  signal HSYNC, VSYNC, VidEn: std_ulogic;
  signal Rot, Gruen, Blau   : std_ulogic_vector(1 downto 0);
  signal address_CG         : std_ulogic_vector(11 downto 0);
  signal data_in, data_out  : std_ulogic_vector(RamDataWidth_c-1 downto 0);
  signal CursorCnt          : unsigned(5 downto 0);
  signal cgDataOut          : std_logic_vector(7 downto 0);
--  signal enableCG           : std_ulogic_vector((NrCGBausteine_c)-1 downto 0);  -- Der jeweils richtige Baustein wird über diesen Vektor angesprochen
--  signal SelectCGData       : std_ulogic;
  signal write_ra, write_rb : std_ulogic;
  signal reset              : std_ulogic;
  signal bit_nr             : std_ulogic_vector(2 downto 0);
  signal pixel              : std_ulogic;
--  signal tmp                : std_ulogic_vector(2 downto 0);

-- Videoram Signale
  type   state_t is (IDLE, READVRAM);
  signal state_s, nextState_s       : state_t;
  signal PipeEn                     : std_ulogic;
  signal ValidLine                  : std_ulogic;
--  signal enableVRAMA                : std_ulogic_vector(NrVRAMBausteine_c-1 downto 0);
--  signal enableVRAMB                : std_ulogic_vector(RegEn_c-1 downto 0);
  signal enableVRAMB                : std_ulogic_vector(2 downto 0);
--  signal enableParamA               : std_ulogic_vector(NrParamBausteine_c-1 downto 0);
  signal addressVRAMA, lineStart    : std_ulogic_vector(RamAddressWidth_c-1 downto 0);
  signal addressVRAMB               : std_ulogic_vector(CPU_Adr_i'range);
  signal addressCGRAMB              : std_ulogic_vector (11 downto 0);
  signal datainVRAMA                : std_ulogic_vector(15 downto 0);
  signal datainVRAMB                : std_ulogic_vector(15 downto 0);
  signal dataoutVRAMA, dataoutVRAMB : std_ulogic_vector(RamDataWidth_c-1 downto 0);
  signal dataoutParamA              : std_ulogic_vector(ParamWidth_c-1 downto 0);

--  signal VRAMDataA                  : vramOutVectorA_t;
  signal VRAMDataA                  : std_logic_vector(RamDataWidth_c-1 downto 0);
--  signal ParamDataA                 : paramOutVectorA_t;
  signal ParamDataA                 : std_logic_vector(7 downto 0);
  signal VRAMDataB                  : vramOutVectorB_t;
--  signal VRAMDataB                  : std_logic_vector(RamDataWidth_c-1 downto 0);
  signal enVRAMRd                   : std_ulogic;
  signal chr                        : std_ulogic_vector(RamDataWidth_c-1 downto 0);
  signal param                      : std_ulogic_vector(ParamWidth_c-1 downto 0);
  signal fg_colorValue,bg_colorValue                 : std_ulogic_vector(5 downto 0);
  signal wrCGRam                    : std_ulogic;
  -- Register
  signal RegsCS                     : std_ulogic_vector(7 downto 0);
  signal Status, StatusReg          : std_ulogic_vector(2 downto 0);
  signal CtrlReg                    : std_ulogic_vector(5 downto 0);
  signal CursCol                    : std_ulogic_vector(6 downto 0);
  signal CursLine                   : std_ulogic_vector(5 downto 0);
  signal firstCol, cols             : std_ulogic_vector(6 downto 0);  -- 0 ... 79
  signal firstLine, lines           : std_ulogic_vector(4 downto 0);  -- 0 ... 30
  signal IrqToggle                  : std_ulogic_vector(1 downto 0);
  signal IsCursor,IsCursorReg       : std_ulogic;
  signal write_param                : std_ulogic;
  signal CPU_DataOut_s              : std_ulogic_vector(7 downto 0);
  
--  signal tmp : std_logic_vector(7 downto 0);
  signal debug     : natural;

  component vidmem
  	PORT
  	(
  		address_a		: IN STD_LOGIC_VECTOR (11 DOWNTO 0);
  		address_b		: IN STD_LOGIC_VECTOR (11 DOWNTO 0);
  		byteena_a		: IN STD_LOGIC_VECTOR (1 DOWNTO 0) :=  (OTHERS => '1');
  		byteena_b		: IN STD_LOGIC_VECTOR (1 DOWNTO 0) :=  (OTHERS => '1');
  		clock		: IN STD_LOGIC ;
  		data_a		: IN STD_LOGIC_VECTOR (15 DOWNTO 0);
  		data_b		: IN STD_LOGIC_VECTOR (15 DOWNTO 0);
  		wren_a		: IN STD_LOGIC  := '1';
  		wren_b		: IN STD_LOGIC  := '1';
  		q_a		: OUT STD_LOGIC_VECTOR (15 DOWNTO 0);
  		q_b		: OUT STD_LOGIC_VECTOR (15 DOWNTO 0)
  	);
  end component;
  
  component CGRAM
  	PORT
  	(
  		address_a		: IN STD_LOGIC_VECTOR (11 DOWNTO 0);
  		address_b		: IN STD_LOGIC_VECTOR (11 DOWNTO 0);
  		clock_a		: IN STD_LOGIC ;
  		clock_b		: IN STD_LOGIC ;
  		data_a		: IN STD_LOGIC_VECTOR (7 DOWNTO 0);
  		data_b		: IN STD_LOGIC_VECTOR (7 DOWNTO 0);
  		enable_a		: IN STD_LOGIC  := '1';
  		enable_b		: IN STD_LOGIC  := '1';
  		wren_a		: IN STD_LOGIC  := '1';
  		wren_b		: IN STD_LOGIC  := '1';
  		q_a		: OUT STD_LOGIC_VECTOR (7 DOWNTO 0);
  		q_b		: OUT STD_LOGIC_VECTOR (7 DOWNTO 0)
  	);
  end component;
  
  
begin
  -- Aktiver Videobereich (640 x 480)
  -- Zeile 32 - 512
  -- Spalten 180 - 820, 1 Clk pro Pixel

--  VidEn <= '1' when q >= to_unsigned((180/2)+90, Stages) and q < to_unsigned(910-90, Stages)
----           and Zeile >= to_unsigned(32, Stages) and Zeile < to_unsigned(512, Stages)
--            and ValidLine = '1' and CtrlReg(1)='1'
--           else '0';
           
  process(q, firstCol, cols, ValidLine, CtrlReg(1))
    variable st, en : integer;
  begin
    st               := to_integer(unsigned(firstCol&"100"));
    en               := to_integer((unsigned(firstCol)+unsigned(cols))&"100");
    VidEn <= '0';
    if q >= st and q < en and ValidLine = '1' and CtrlReg(1)='1' then
      VidEn <= '1';
    end if;
  end process;
  
--  ValidLine <= '1' when Zeile >= to_unsigned(32+88, Stages) and Zeile < to_unsigned(336+88, Stages) else
--               '0';         
  process (Zeile, lines, firstLine)
    variable l : integer;
  begin
    l         := to_integer(zeile(zeile'left downto 4));
    ValidLine <= '0';
    if l >= unsigned(firstLine) and l < ((unsigned("0"&firstLine))+unsigned(lines)) then
      ValidLine <= '1';
    end if;
  end process;

  process (ValidLine, Zeile, Spalte, firstLine, CtrlReg, CursLine, CursCol, CursorCnt(CursorCnt'high) )
    variable l,c : integer;
  begin
    l   := to_integer(zeile(zeile'left downto 4) - unsigned(firstLine));
    c   := to_integer(Spalte(Spalte'left downto 3)) ;
    IsCursor <= '0';
    if ValidLine='1' and CtrlReg(0)='1' and l=to_integer(unsigned(CursLine)) and c=to_integer(unsigned(CursCol)) then
        IsCursor <= CursorCnt(CursorCnt'high);
    end if;
  end process;
  
  -- Pixeltakt 25 MHz wenn CtrlReg(2)='1' sonst 48 MHz
--  qen <= clk2 when CtrlReg(2)='1' and q >= to_unsigned((180/2)+90-1, Stages) and q < to_unsigned(910-90, Stages) else 
  qen <= '1';

  -- Spalte (0 ... 640) berechnen
  -- ist nur gültig wenn VidEn='1' !

  process(q, firstCol, cols, ValidLine)
    variable st, en : integer;
    variable tmp    : unsigned(Stages-1 downto 0);
  begin
    st               := to_integer(unsigned(firstCol&"100"))-3;
    en               := to_integer((unsigned(firstCol)+unsigned(cols))&"100")-3;
--    tmp := q-to_unsigned((180/2)+90-3, Stages);
    tmp              := q-st;
    Col              <= std_ulogic_vector(tmp(2 downto 0));
    PipeEn           <= '0';
    if q >= st and q < en and ValidLine = '1' then
      PipeEn <= '1';
    end if;
    Spalte <= q - to_integer(unsigned(firstCol&"100"))+1;
  end process;

  vid : process(clk_i, clr_n_i)
  begin
    if clr_n_i = '0' then
      HSYNC <= '1';                     -- Reset Condition
      Zeile <= (others => '0');
      VSYNC <= '1';
      q     <= (others => '0');
      IrqToggle <= (others => '0');
      CursorCnt <= (others => '0');
--      clk2      <= '0';
      Rot       <= (others => '0');
      Gruen     <= (others => '0');
      Blau      <= (others => '0');
    elsif clk_i'event and clk_i = '1' then
--      clk2 <= not clk2;
      
      if (qen and CtrlReg(1))='1' then
        q <= q+1;
      end if;
      if qen='1' then
        if q = to_unsigned(800 - 1, Stages) then
          q     <= (others => '0');
          HSYNC <= '0';
          Zeile <= Zeile + 1;
          if Zeile = to_unsigned(521, Stages) then
            VSYNC <= '0';
            if VSYNC='1' then
              CursorCnt <= CursorCnt + 1;
      --        if CtrlReg(1)='1' then
              IrqToggle(0) <= not IrqToggle(0);
      --        end if;
            end if;
          elsif Zeile = to_unsigned(523, Stages) then
            Zeile <= (others => '0');
            VSYNC <= '1';
          end if;
        elsif q = to_unsigned(96, Stages) then
          HSYNC <= '1';
      --    if CtrlReg(0)='1' then
          IrqToggle(1) <= not IrqToggle(1);
      --    end if;
        end if;
      end if;
      
      if pixel='1' then
        Rot(0)   <= fg_colorValue(4);
        Rot(1)   <= fg_colorValue(5);
        Gruen(0) <= fg_colorValue(2);
        Gruen(1) <= fg_colorValue(3);
        Blau(0)  <= fg_colorValue(0);
        Blau(1)  <= fg_colorValue(1);
      else
        Rot(0)   <= bg_colorValue(4);
        Rot(1)   <= bg_colorValue(5);
        Gruen(0) <= bg_colorValue(2);
        Gruen(1) <= bg_colorValue(3);
        Blau(0)  <= bg_colorValue(0);
        Blau(1)  <= bg_colorValue(1);
      end if;
	    
    end if;
  end process vid;



  VgaRd0_o   <= Rot(1);
  VgaRd1_o   <= Rot(0);
  VgaGr0_o   <= Gruen(1);
  VgaGr1_o   <= Gruen(0);
  VgaBl0_o   <= Blau(1);
  VgaBl1_o   <= Blau(0);
  VgaHsync_o <= HSYNC;
  VgaVsync_o <= VSYNC;

------------------------------------------------------------------------------
-- Video- Text RAM
------------------------------------------------------------------------------
--80x30, 8 bits pro Zeichen 

  datainVRAMA   <= (others => '0');
  datainVRAMB   <= CPU_DataIn_i & CPU_DataIn_i;
  addressVRAMB  <= CPU_Adr_i;
  -- each 32 byte line in CG-RAM is mirrored => balance it
  addressCGRAMB <= CPU_Adr_i(addressCGRAMB'range);
  CPU_DataOut_s  <= "00000"&StatusReg when RegsCS(7)='1' else
                   "00"&CtrlReg      when RegsCS(0)='1' else
                   "00"&CursLine     when RegsCS(1)='1' else
                   "0"&CursCol       when RegsCS(2)='1' else
                   "000"&firstLine   when RegsCS(3) = '1' else
                   "0"&firstCol      when RegsCS(4) = '1' else
                   "000"&lines       when RegsCS(5) = '1' else
                   "0"&cols          when RegsCS(6) = '1' else
--                   "00"&bgcol   when RegsCS(7) = '1' else
                   dataoutVRAMB;
  
  write_rb <= CPU_Wr_i and enableVRAMB(0);

RAM : vidmem 
	PORT map
	(
	  clock	      => clk_i,
		data_a		  => std_logic_vector(datainVRAMA),
		wren_a		  => write_ra,
		byteena_a   => "11",
		address_a	  => std_logic_vector(addressVRAMA((RamAddressWidth_c-1) downto 0)),
		data_b		  => std_logic_vector(datainVRAMB),
		address_b	  => std_logic_vector(addressVRAMB((RamAddressWidth_c-1) downto 0)),
		wren_b		  => CPU_Wr_i,
		byteena_b(0)=> write_rb,
		byteena_b(1)=> write_param,
		q_a(7 downto 0)  => VRAMDataA,
		q_a(15 downto 8) => ParamDataA,
		q_b(7 downto 0)  => VRAMDataB(0),
		q_b(15 downto 8) => VRAMDataB(2)
	);

  enVRAMRd <= PipeEn;

  dataoutVRAMA <= std_ulogic_vector(VRAMDataA); 

  -- VRAM Port B MUX
  CSVRAMB : process (addressVRAMB, CPU_Rd_i, CPU_Wr_i, CPU_CS_i, CtrlReg)
    variable max : natural := 10;  
    variable i   : natural;
  begin  -- process getenA
    i:= to_integer(unsigned(addressVRAMB(dVGATextMem_Size_c-1 downto dVGATextMem_Size_c-4)));
    enableVRAMB <= (others =>'0');
    if ((CPU_Rd_i or CPU_Wr_i) = '1' and i < max and CPU_CS_i = '1') then
      if i<7 then
        case CtrlReg(5 downto 4) is
          when "00"   => enableVRAMB(0) <= '1';
          when "01"   => enableVRAMB(2) <= '1';
          when "10"   => enableVRAMB(1) <= '1';
          when others => null;
        end case;
      end if;
    end if;
  end process CSVRAMB;

-- Data- Out Mux PortB
  MUXB : process(VRAMDataB, addressVRAMB, CtrlReg) is
    variable max : natural := 10;
    variable i   : natural;
    variable rden : std_ulogic_vector(2 downto 0);
  begin
    i:= to_integer(unsigned(addressVRAMB(dVGATextMem_Size_c-1 downto dVGATextMem_Size_c-4)));
    rden := (others =>'0');
    if i < max then
      if i<7 then
        case CtrlReg(5 downto 4) is
          when "00"   => rden(0) := '1';
          when "01"   => rden(2) := '1';
          when "10"   => rden(1) := '1';
          when others => null;
        end case;
--        rden(0) := '1';
--      elsif i=7 then
--        rden(1) := '1';
--      else
--        rden(2) := '1';
      end if;
    end if;
    debug <= i;

    dataoutVRAMB<= (others => '-');
    for i in rden'range loop
      if rden(i)='1' then
        dataoutVRAMB <= std_ulogic_vector(VRAMDataB(i));
      end if;
    end loop;
  end process MUXB;

--  dataoutVRAMB <= std_ulogic_vector(VRAMDataB);

------------------------------------------------------------------------------
-- Character Generator RAM
------------------------------------------------------------------------------
  data_in  <= (others => '0');
  write_ra <= '0';

  bit_nr     <= not(std_ulogic_vector(unsigned(Spalte(2 downto 0))-1));
  
--  tmp <= "00"&CtrlReg(2);
  address_CG <= chr(7 downto 0)&std_ulogic_vector(Zeile(3 downto 0));

  pixel <= (data_out(to_integer(unsigned(bit_nr))) xor 
           IsCursorReg) and VidEn;
          
--  pixel <= (data_out(to_integer(unsigned(bit_nr))) xor invertChr) and VidEn;

  reset <= not clr_n_i;

  data_out<= std_ulogic_vector(cgDataOut);

  -- delay the data- Out Mux controlsignal for one extra clock cycle
  process(clk_i, clr_n_i)
    function lookup(color : in std_ulogic_vector(3 downto 0)) return std_ulogic_vector is
      variable tmp : std_ulogic_vector(5 downto 0);
    begin
      if color(3 downto 0) /= "1000" then
        tmp(5) := color(2);
        tmp(4) := color(2) and color(3);
        tmp(3) := color(1);
        tmp(2) := color(1) and color(3);
        tmp(1) := color(0);
        tmp(0) := color(0) and color(3);
      else
        tmp := "010101";         -- light gray
      end if;  
      return tmp;
    end;
  begin
    if clr_n_i = '0' then
--      SelectCGData <= '0';
      fg_colorValue   <= (others => '0');
      bg_colorValue   <= (others => '0'); 
--      half         <= '0';
--      pixel <= '0';
      IsCursorReg <= '0';
    elsif clk_i'event and clk_i = '1' then
      if qen='1' then
        IsCursorReg <= IsCursor;
--        SelectCGData <= address_CG((NrCGEnableBits_c+RamAddressWidth_c)-1);         
        fg_colorValue <= lookup(param(3 downto 0));
        bg_colorValue <= lookup(param(7 downto 4));
      end if;
    end if;
  end process;


  -- Character Generator for 16x8 Font
  -- ASCII Codes 0x20 ... 0xFF,
  -- ASCII Codes 0x00 ... 0x1f available for user defined fonts
  -- Adress = ASC(Ch)*16
  
  -- Writes to CG- Ram are only allowed when bit 3 of ControlReg is '1'
  wrCGRam<= CPU_Wr_i and CtrlReg(3) and enableVRAMB(1);
  CG : CGRAM 
	PORT MAP
	(
    clock_a   => clk_i,
    enable_a	=> qen,
    data_a		=> std_logic_vector(data_in),
    wren_a		=> write_ra,
    address_a	=> std_logic_vector(address_CG(11 downto 0)),
    clock_b   => clk_i,
    enable_b	=> '1',
    data_b		=> std_logic_vector(datainVRAMB(7 downto 0)),
    address_b	=> std_logic_vector(addressCGRAMB),
    wren_b		=> wrCGRam,
    q_a		    => cgDataOut,
    q_b		    => VRAMDataB(1)
  );



  
  fsm_reg : process(clk_i, clr_n_i)
  begin
    if clr_n_i = '0' then
      state_s <= IDLE;
    elsif clk_i'event and clk_i = '1' then
      if qen='1' then
        state_s <= nextState_s;
      end if;
    end if;
  end process;

  -- Combinatoric process for FSM
  fsm_comp : process(PipeEn, Col, state_s, qen)
  begin
    nextState_s <= state_s;  -- Defaultwert f. nex_state ist current State (verhindern von Latches)
    case state_s is
      when IDLE => if PipeEn = '1' and Col = "000" then
                     nextState_s <= READVRAM;
                   end if;
      when READVRAM => nextState_s <= IDLE;
      when others   => nextState_s <= IDLE;
    end case;
  end process;

  process(clk_i, clr_n_i)
  begin
    if clr_n_i = '0' then
      addressVRAMA <= (others => '0');
      lineStart    <= (others => '0');
      chr          <= (others => '0');
      param        <= (others => '0');
    elsif clk_i'event and clk_i = '1' then
      if PipeEn = '1' then
        case state_s is
          when IDLE =>

          when READVRAM =>
              if qen='1' then
                chr          <= dataoutVRAMA;
                param        <= dataoutParamA;
                addressVRAMA <= std_ulogic_vector((unsigned(addressVRAMA)+1));
              end if;
          when others => null;
        end case;
      elsif VSYNC = '0' then
        addressVRAMA <= (others => '0');
        lineStart    <= (others => '0');
      else
--        chr <= (others => '0');
        if zeile(3 downto 0) = "1111" then
          lineStart <= addressVRAMA;
        else
          addressVRAMA <= lineStart;
        end if;
      end if;
    end if;
  end process;

------------------------------------------------------------------------------
-- Parameter RAM 8 bit per Character
------------------------------------------------------------------------------

  write_param <= CPU_Wr_i and enableVRAMB(2);
 
--  dataoutParamA <= std_ulogic_vector(ParamDataA(7 downto 4)) when addressVRAMA(0)='1' else
--                   std_ulogic_vector(ParamDataA(3 downto 0));
  dataoutParamA <= std_ulogic_vector(ParamDataA);
  
  -- Interne CS- Signale für Steuerregister
  process (addressVRAMB,CPU_CS_i)
    variable x   : natural;
    variable i   : natural;
    variable tmp : unsigned(15 downto 0);
  begin
    tmp:= X"AA00";
    x := to_integer(unsigned(addressVRAMB(dVGATextMem_Size_c-1 downto 8)));
    i := to_integer(unsigned(addressVRAMB(2 downto 0)));
    RegsCS <= (others => '0');
    if x=tmp(dVGATextMem_Size_c-1 downto 8) and CPU_CS_i = '1' then
      RegsCS(i) <= '1';
    end if;
  end process;


  Status(0)<= not HSYNC;
  Status(1)<= not VSYNC;
  Status(2)<= PipeEn;

  StatusReg <= Status;
  
  -- Prozess zum schreiben der Register im FPGA 
  Regs : process(clk_i, clr_n_i)
  begin
    if clr_n_i = '0' then
--      StatusReg <= (others =>'0');
      CtrlReg   <= (others =>'0');
      CursLine  <= (others =>'0');
      CursCol   <= (others =>'0');
      firstCol  <= std_ulogic_vector(to_unsigned(18, firstCol'length));
      firstLine <= std_ulogic_vector(to_unsigned(2, firstLine'length));
      cols      <= std_ulogic_vector(to_unsigned(80, cols'length));
      lines     <= std_ulogic_vector(to_unsigned(30, lines'length));
      CPU_DataOut_o <= (others =>'0');
    elsif clk_i'event and clk_i = '1' then
--      if RegsCS(0) = '0' then
--        StatusReg <= Status;            -- Hold Statusregister constant during an read access
--      end if;
      if CPU_Wr_i = '1' then
        if RegsCS(0) = '1' then
          CtrlReg <= CPU_DataIn_i(CtrlReg'range);
        elsif RegsCS(1) = '1' then
          CursLine <= CPU_DataIn_i(CursLine'range);
        elsif RegsCS(2) = '1' then
          CursCol <= CPU_DataIn_i(CursCol'range);    
        elsif RegsCS(3) = '1' then
          firstLine <= CPU_DataIn_i(firstLine'range);
        elsif RegsCS(4) = '1' then
          firstCol <= CPU_DataIn_i(firstCol'range);
        elsif RegsCS(5) = '1' then
          lines <= CPU_DataIn_i(lines'range);
        elsif RegsCS(6) = '1' then
          cols <= CPU_DataIn_i(cols'range);
        end if;
      end if;
      if CPU_Rd_i = '1' then
        CPU_DataOut_o <= CPU_DataOut_s;
      end if;
    end if;
  end process Regs;
  
  CPU_Irq_o <= IrqToggle;
end rtl;