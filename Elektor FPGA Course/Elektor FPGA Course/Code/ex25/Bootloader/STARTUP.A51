IDATALEN        EQU 100H
;
;XDATASTART      EQU 6800H
;XDATALEN        EQU 1700H
XDATASTART      EQU 0000H
XDATALEN        EQU 0000H
;XDATALEN        EQU 2000H
;
PDATASTART      EQU 0H
PDATALEN        EQU 0H
;
IBPSTACK        EQU 0
IBPSTACKTOP     EQU 0FFH+1
XBPSTACK        EQU 0
XBPSTACKTOP     EQU 0FFFFH+1
PBPSTACK        EQU 0
PBPSTACKTOP     EQU 0FFFFH+1
;
PPAGEENABLE     EQU 0
PPAGE           EQU 0
;
sevseg_data0 EQU 0C1H
sevseg_data1 EQU 0C2H
BANK_SEL     EQU 0F9H;
BANK_EN      EQU 0F8H;
SRAMEN       EQU BANK_EN.6;
ETHDIS       EQU BANK_EN.7;

extrn bit (ram_write)
extrn bit (boot_enable)

rom_base equ 08000h
count equ 0E000h
;
                NAME ?C_STARTUP

?C_C51STARTUP   SEGMENT CODE
?STACK          SEGMENT IDATA

                RSEG ?STACK
                DS 1

                EXTRN CODE (?C_START)
                PUBLIC ?C_STARTUP

                CSEG AT 0E000h
?C_STARTUP:     LJMP STARTUP1

                RSEG ?C_C51STARTUP

STARTUP1:

IF IDATALEN <> 0  ;
                MOV R0,#IDATALEN-1
                CLR A
IDATALOOP:      MOV @R0,A
                DJNZ R0,IDATALOOP

ENDIF

IF XDATALEN <> 0
                MOV DPTR,#XDATASTART
                MOV R7,#LOW (XDATALEN)
IF (LOW (XDATALEN)) <> 0

                MOV R6,#(HIGH XDATALEN) +1
ELSE
                MOV R6,#HIGH (XDATALEN)
ENDIF
                CLR A
XDATALOOP:      MOVX @DPTR,A
                INC DPTR
                DJNZ R7,XDATALOOP
                DJNZ R6,XDATALOOP
ENDIF

IF PDATALEN <> 0
                MOV R0,#PDATASTART
                MOV R7,LOW (PDATALEN)
                CLR A
PDATALOOP:      MOVX @R0,A
                INC R0
                DJNZ R7,PDATALOOP
ENDIF

IF IBPSTACK <> 0
EXTRN DATA (?C_IBP)

                MOV ?C_IBP,#LOW IBPSTACKTOP
ENDIF

IF XBPSTACK <> 0
EXTRN DATA (?C_XBP)

                MOV ?C_XBP,#HIGH XBPSTACKTOP
                MOV ?C_XBP+1,#LOW XBPSTACKTOP
ENDIF

IF PBPSTACK <> 0
EXTRN DATA (?C_PBP)
                MOV ?C_PBP,#LOW PBPSTACKTOP
ENDIF

IF PPAGEENABLE <> 0
                MOV P2,#PPAGE
ENDIF
                MOV SP,#?STACK-1

                LCALL ?C_START
		cjne r7,#1,copy
		jb ram_write,m1	; P1.7==1 => RAMWRITE
		; Copy Flash content into SRAM

copy:		setb ETHDIS	
		mov dptr,#rom_base
		mov r7,#HIGH(count)
		mov r6,#LOW(count)
cpyloop: 	clr SRAMEN
		movx a,@dptr	; read from FLASH
		setb SRAMEN	; write to CODE SRAM
		movx @dptr,a
		inc dptr		
		djnz r6,cpyloop
		orl dph,#80h
		djnz r7,cpyloop
		clr ETHDIS		

m1:
		mov dptr,#0	; check if there is a valid programm inside ROM
		clr a		; => have to start with a LJMP !
		movc a,@a+dptr
		cjne a,#02h,error2
m2:		setb P3.1	;enable "normal" P1 behaviour
		LJMP 0
error2:         mov P1,#055h
		sjmp $

		ret
		
                END


