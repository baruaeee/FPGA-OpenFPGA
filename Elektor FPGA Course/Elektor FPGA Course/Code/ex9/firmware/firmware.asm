;--------------------------------------------------------
; File Created by SDCC : FreeWare ANSI-C Compiler
; Version 2.5.0 #1020 (May  8 2005)
; This file generated Mon May 08 16:15:29 2006
;--------------------------------------------------------
	.module firmware
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _main
	.globl _print_voltage
	.globl _convert_ad_to_volt
	.globl _P3
	.globl _P2
	.globl _P1
	.globl _P0
	.globl _print_voltage_PARM_3
	.globl _print_voltage_PARM_2
	.globl _strbuf
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (DATA)
_P0	=	0x0080
_P1	=	0x0090
_P2	=	0x00a0
_P3	=	0x00b0
;--------------------------------------------------------
; special function bits 
;--------------------------------------------------------
	.area RSEG    (DATA)
;--------------------------------------------------------
; overlayable register banks 
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
	.area	OSEG    (OVR,DATA)
_print_voltage_sloc0_1_0::
	.ds 1
_print_voltage_sloc1_1_0::
	.ds 2
;--------------------------------------------------------
; Stack segment in internal ram 
;--------------------------------------------------------
	.area	SSEG	(DATA)
__start__stack:
	.ds	1

;--------------------------------------------------------
; indirectly addressable internal ram data
;--------------------------------------------------------
	.area ISEG    (DATA)
;--------------------------------------------------------
; bit data
;--------------------------------------------------------
	.area BSEG    (BIT)
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	.area PSEG    (PAG,XDATA)
;--------------------------------------------------------
; external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
_strbuf::
	.ds 32
_convert_ad_to_volt_ad_result_1_1::
	.ds 2
_convert_ad_to_volt_weights_1_1::
	.ds 16
_convert_ad_to_volt_result_1_1::
	.ds 2
_print_voltage_PARM_2::
	.ds 2
_print_voltage_PARM_3::
	.ds 1
_print_voltage_str_1_1::
	.ds 3
_print_voltage_nibble_1_1::
	.ds 16
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
	.area CSEG    (CODE)
	.area GSINIT0 (CODE)
	.area GSINIT1 (CODE)
	.area GSINIT2 (CODE)
	.area GSINIT3 (CODE)
	.area GSINIT4 (CODE)
	.area GSINIT5 (CODE)
;--------------------------------------------------------
; interrupt vector 
;--------------------------------------------------------
	.area CSEG    (CODE)
__interrupt_vect:
	ljmp	__sdcc_gsinit_startup
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area CSEG    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
	.globl __sdcc_gsinit_startup
	.globl __sdcc_program_startup
	.globl __start__stack
	.globl __mcs51_genXINIT
	.globl __mcs51_genXRAMCLEAR
	.globl __mcs51_genRAMCLEAR
	.area GSFINAL (CODE)
	ljmp	__sdcc_program_startup
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area CSEG    (CODE)
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
__sdcc_program_startup:
	lcall	_main
;	return from main will lock up
	sjmp .
;------------------------------------------------------------
;Allocation info for local variables in function 'convert_ad_to_volt'
;------------------------------------------------------------
;ad_result                 Allocated with name '_convert_ad_to_volt_ad_result_1_1'
;weights                   Allocated with name '_convert_ad_to_volt_weights_1_1'
;result                    Allocated with name '_convert_ad_to_volt_result_1_1'
;------------------------------------------------------------
;firmware.c:14: unsigned int convert_ad_to_volt (unsigned int ad_result)
;	-----------------------------------------
;	 function convert_ad_to_volt
;	-----------------------------------------
_convert_ad_to_volt:
	ar2 = 0x02
	ar3 = 0x03
	ar4 = 0x04
	ar5 = 0x05
	ar6 = 0x06
	ar7 = 0x07
	ar0 = 0x00
	ar1 = 0x01
;     genReceive
	mov	r2,dph
	mov	a,dpl
	mov	dptr,#_convert_ad_to_volt_ad_result_1_1
	movx	@dptr,a
	inc	dptr
	mov	a,r2
	movx	@dptr,a
;firmware.c:16: const unsigned int weights[8] = {25000,12500,6250,3125,1563,781,390,195};		// Weights of the databits in A/D conversion in 0,1 mV units
;     genPointerSet
;     genFarPointerSet
	mov	dptr,#_convert_ad_to_volt_weights_1_1
	mov	a,#0xA8
	movx	@dptr,a
	inc	dptr
	mov	a,#0x61
	movx	@dptr,a
;     genPointerSet
;     genFarPointerSet
	mov	dptr,#(_convert_ad_to_volt_weights_1_1 + 0x0002)
	mov	a,#0xD4
	movx	@dptr,a
	inc	dptr
	mov	a,#0x30
	movx	@dptr,a
;     genPointerSet
;     genFarPointerSet
	mov	dptr,#(_convert_ad_to_volt_weights_1_1 + 0x0004)
	mov	a,#0x6A
	movx	@dptr,a
	inc	dptr
	mov	a,#0x18
	movx	@dptr,a
;     genPointerSet
;     genFarPointerSet
	mov	dptr,#(_convert_ad_to_volt_weights_1_1 + 0x0006)
	mov	a,#0x35
	movx	@dptr,a
	inc	dptr
	mov	a,#0x0C
	movx	@dptr,a
;     genPointerSet
;     genFarPointerSet
	mov	dptr,#(_convert_ad_to_volt_weights_1_1 + 0x0008)
	mov	a,#0x1B
	movx	@dptr,a
	inc	dptr
	mov	a,#0x06
	movx	@dptr,a
;     genPointerSet
;     genFarPointerSet
	mov	dptr,#(_convert_ad_to_volt_weights_1_1 + 0x000a)
	mov	a,#0x0D
	movx	@dptr,a
	inc	dptr
	mov	a,#0x03
	movx	@dptr,a
;     genPointerSet
;     genFarPointerSet
	mov	dptr,#(_convert_ad_to_volt_weights_1_1 + 0x000c)
	mov	a,#0x86
	movx	@dptr,a
	inc	dptr
	mov	a,#0x01
	movx	@dptr,a
;     genPointerSet
;     genFarPointerSet
	mov	dptr,#(_convert_ad_to_volt_weights_1_1 + 0x000e)
	mov	a,#0xC3
	movx	@dptr,a
	inc	dptr
;	Peephole 181	changed mov to clr
;firmware.c:18: result=0;
;     genAssign
;	Peephole 219	removed redundant clear
	clr	a
	movx	@dptr,a
	mov	dptr,#_convert_ad_to_volt_result_1_1
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;firmware.c:19: if (ad_result & 0x80) result +=weights[0];
;     genAssign
	mov	dptr,#_convert_ad_to_volt_ad_result_1_1
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
;     genAnd
	mov	a,r2
;     genIfxJump
;	Peephole 111	removed ljmp by inverse jump logic
	jnb	acc.7,00102$
00127$:
;     genPointerGet
;     genFarPointerGet
	mov	dptr,#_convert_ad_to_volt_weights_1_1
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
;     genAssign
	mov	dptr,#_convert_ad_to_volt_result_1_1
	mov	a,r2
	movx	@dptr,a
	inc	dptr
	mov	a,r3
	movx	@dptr,a
00102$:
;firmware.c:20: if (ad_result & 0x40) result +=weights[1];
;     genAssign
	mov	dptr,#_convert_ad_to_volt_ad_result_1_1
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
;     genAnd
	mov	a,r2
;     genIfxJump
;	Peephole 111	removed ljmp by inverse jump logic
	jnb	acc.6,00104$
00128$:
;     genPointerGet
;     genFarPointerGet
	mov	dptr,#(_convert_ad_to_volt_weights_1_1 + 0x0002)
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
;     genAssign
	mov	dptr,#_convert_ad_to_volt_result_1_1
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
;     genPlus
	mov	dptr,#_convert_ad_to_volt_result_1_1
;	Peephole 236.g	used r2 instead of ar2
	mov	a,r2
;	Peephole 236.a	used r4 instead of ar4
	add	a,r4
	movx	@dptr,a
;	Peephole 236.g	used r3 instead of ar3
	mov	a,r3
;	Peephole 236.b	used r5 instead of ar5
	addc	a,r5
	inc	dptr
	movx	@dptr,a
00104$:
;firmware.c:21: if (ad_result & 0x20) result +=weights[2];
;     genAssign
	mov	dptr,#_convert_ad_to_volt_ad_result_1_1
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
;     genAnd
	mov	a,r2
;     genIfxJump
;	Peephole 111	removed ljmp by inverse jump logic
	jnb	acc.5,00106$
00129$:
;     genPointerGet
;     genFarPointerGet
	mov	dptr,#(_convert_ad_to_volt_weights_1_1 + 0x0004)
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
;     genAssign
	mov	dptr,#_convert_ad_to_volt_result_1_1
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
;     genPlus
	mov	dptr,#_convert_ad_to_volt_result_1_1
;	Peephole 236.g	used r2 instead of ar2
	mov	a,r2
;	Peephole 236.a	used r4 instead of ar4
	add	a,r4
	movx	@dptr,a
;	Peephole 236.g	used r3 instead of ar3
	mov	a,r3
;	Peephole 236.b	used r5 instead of ar5
	addc	a,r5
	inc	dptr
	movx	@dptr,a
00106$:
;firmware.c:22: if (ad_result & 0x10) result +=weights[3];
;     genAssign
	mov	dptr,#_convert_ad_to_volt_ad_result_1_1
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
;     genAnd
	mov	a,r2
;     genIfxJump
;	Peephole 111	removed ljmp by inverse jump logic
	jnb	acc.4,00108$
00130$:
;     genPointerGet
;     genFarPointerGet
	mov	dptr,#(_convert_ad_to_volt_weights_1_1 + 0x0006)
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
;     genAssign
	mov	dptr,#_convert_ad_to_volt_result_1_1
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
;     genPlus
	mov	dptr,#_convert_ad_to_volt_result_1_1
;	Peephole 236.g	used r2 instead of ar2
	mov	a,r2
;	Peephole 236.a	used r4 instead of ar4
	add	a,r4
	movx	@dptr,a
;	Peephole 236.g	used r3 instead of ar3
	mov	a,r3
;	Peephole 236.b	used r5 instead of ar5
	addc	a,r5
	inc	dptr
	movx	@dptr,a
00108$:
;firmware.c:23: if (ad_result & 0x08) result +=weights[4];
;     genAssign
	mov	dptr,#_convert_ad_to_volt_ad_result_1_1
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
;     genAnd
	mov	a,r2
;     genIfxJump
;	Peephole 111	removed ljmp by inverse jump logic
	jnb	acc.3,00110$
00131$:
;     genPointerGet
;     genFarPointerGet
	mov	dptr,#(_convert_ad_to_volt_weights_1_1 + 0x0008)
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
;     genAssign
	mov	dptr,#_convert_ad_to_volt_result_1_1
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
;     genPlus
	mov	dptr,#_convert_ad_to_volt_result_1_1
;	Peephole 236.g	used r2 instead of ar2
	mov	a,r2
;	Peephole 236.a	used r4 instead of ar4
	add	a,r4
	movx	@dptr,a
;	Peephole 236.g	used r3 instead of ar3
	mov	a,r3
;	Peephole 236.b	used r5 instead of ar5
	addc	a,r5
	inc	dptr
	movx	@dptr,a
00110$:
;firmware.c:24: if (ad_result & 0x04) result +=weights[5];
;     genAssign
	mov	dptr,#_convert_ad_to_volt_ad_result_1_1
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
;     genAnd
	mov	a,r2
;     genIfxJump
;	Peephole 111	removed ljmp by inverse jump logic
	jnb	acc.2,00112$
00132$:
;     genPointerGet
;     genFarPointerGet
	mov	dptr,#(_convert_ad_to_volt_weights_1_1 + 0x000a)
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
;     genAssign
	mov	dptr,#_convert_ad_to_volt_result_1_1
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
;     genPlus
	mov	dptr,#_convert_ad_to_volt_result_1_1
;	Peephole 236.g	used r2 instead of ar2
	mov	a,r2
;	Peephole 236.a	used r4 instead of ar4
	add	a,r4
	movx	@dptr,a
;	Peephole 236.g	used r3 instead of ar3
	mov	a,r3
;	Peephole 236.b	used r5 instead of ar5
	addc	a,r5
	inc	dptr
	movx	@dptr,a
00112$:
;firmware.c:25: if (ad_result & 0x02) result +=weights[6];
;     genAssign
	mov	dptr,#_convert_ad_to_volt_ad_result_1_1
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
;     genAnd
	mov	a,r2
;     genIfxJump
;	Peephole 111	removed ljmp by inverse jump logic
	jnb	acc.1,00114$
00133$:
;     genPointerGet
;     genFarPointerGet
	mov	dptr,#(_convert_ad_to_volt_weights_1_1 + 0x000c)
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
;     genAssign
	mov	dptr,#_convert_ad_to_volt_result_1_1
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
;     genPlus
	mov	dptr,#_convert_ad_to_volt_result_1_1
;	Peephole 236.g	used r2 instead of ar2
	mov	a,r2
;	Peephole 236.a	used r4 instead of ar4
	add	a,r4
	movx	@dptr,a
;	Peephole 236.g	used r3 instead of ar3
	mov	a,r3
;	Peephole 236.b	used r5 instead of ar5
	addc	a,r5
	inc	dptr
	movx	@dptr,a
00114$:
;firmware.c:26: if (ad_result & 0x01) result +=weights[7];
;     genAssign
	mov	dptr,#_convert_ad_to_volt_ad_result_1_1
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
;     genAnd
	mov	a,r2
;     genIfxJump
;	Peephole 111	removed ljmp by inverse jump logic
	jnb	acc.0,00116$
00134$:
;     genPointerGet
;     genFarPointerGet
	mov	dptr,#(_convert_ad_to_volt_weights_1_1 + 0x000e)
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
;     genAssign
	mov	dptr,#_convert_ad_to_volt_result_1_1
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
;     genPlus
	mov	dptr,#_convert_ad_to_volt_result_1_1
;	Peephole 236.g	used r2 instead of ar2
	mov	a,r2
;	Peephole 236.a	used r4 instead of ar4
	add	a,r4
	movx	@dptr,a
;	Peephole 236.g	used r3 instead of ar3
	mov	a,r3
;	Peephole 236.b	used r5 instead of ar5
	addc	a,r5
	inc	dptr
	movx	@dptr,a
00116$:
;firmware.c:27: return (result);
;     genAssign
	mov	dptr,#_convert_ad_to_volt_result_1_1
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
;     genRet
;	Peephole 235	loading dph directly from a(ccumulator), r3 not set
	mov	dpl,r2
	mov	dph,a
00117$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'print_voltage'
;------------------------------------------------------------
;dat                       Allocated with name '_print_voltage_PARM_2'
;position                  Allocated with name '_print_voltage_PARM_3'
;str                       Allocated with name '_print_voltage_str_1_1'
;nibble                    Allocated with name '_print_voltage_nibble_1_1'
;count                     Allocated with name '_print_voltage_count_1_1'
;sloc0                     Allocated with name '_print_voltage_sloc0_1_0'
;sloc1                     Allocated with name '_print_voltage_sloc1_1_0'
;------------------------------------------------------------
;firmware.c:30: void print_voltage(char* str,unsigned int dat,unsigned char position)
;	-----------------------------------------
;	 function print_voltage
;	-----------------------------------------
_print_voltage:
;     genReceive
	mov	r2,b
	mov	r3,dph
	mov	a,dpl
	mov	dptr,#_print_voltage_str_1_1
	movx	@dptr,a
	inc	dptr
	mov	a,r3
	movx	@dptr,a
	inc	dptr
	mov	a,r2
	movx	@dptr,a
;firmware.c:32: const char nibble[16] = {'0','1','2','3','4','5','6','7','8','9','a','b','c','d','e','f'};
;     genPointerSet
;     genFarPointerSet
	mov	dptr,#_print_voltage_nibble_1_1
	mov	a,#0x30
	movx	@dptr,a
;     genPointerSet
;     genFarPointerSet
	mov	dptr,#(_print_voltage_nibble_1_1 + 0x0001)
	mov	a,#0x31
	movx	@dptr,a
;     genPointerSet
;     genFarPointerSet
	mov	dptr,#(_print_voltage_nibble_1_1 + 0x0002)
	mov	a,#0x32
	movx	@dptr,a
;     genPointerSet
;     genFarPointerSet
	mov	dptr,#(_print_voltage_nibble_1_1 + 0x0003)
	mov	a,#0x33
	movx	@dptr,a
;     genPointerSet
;     genFarPointerSet
	mov	dptr,#(_print_voltage_nibble_1_1 + 0x0004)
	mov	a,#0x34
	movx	@dptr,a
;     genPointerSet
;     genFarPointerSet
	mov	dptr,#(_print_voltage_nibble_1_1 + 0x0005)
	mov	a,#0x35
	movx	@dptr,a
;     genPointerSet
;     genFarPointerSet
	mov	dptr,#(_print_voltage_nibble_1_1 + 0x0006)
	mov	a,#0x36
	movx	@dptr,a
;     genPointerSet
;     genFarPointerSet
	mov	dptr,#(_print_voltage_nibble_1_1 + 0x0007)
	mov	a,#0x37
	movx	@dptr,a
;     genPointerSet
;     genFarPointerSet
	mov	dptr,#(_print_voltage_nibble_1_1 + 0x0008)
	mov	a,#0x38
	movx	@dptr,a
;     genPointerSet
;     genFarPointerSet
	mov	dptr,#(_print_voltage_nibble_1_1 + 0x0009)
	mov	a,#0x39
	movx	@dptr,a
;     genPointerSet
;     genFarPointerSet
	mov	dptr,#(_print_voltage_nibble_1_1 + 0x000a)
	mov	a,#0x61
	movx	@dptr,a
;     genPointerSet
;     genFarPointerSet
	mov	dptr,#(_print_voltage_nibble_1_1 + 0x000b)
	mov	a,#0x62
	movx	@dptr,a
;     genPointerSet
;     genFarPointerSet
	mov	dptr,#(_print_voltage_nibble_1_1 + 0x000c)
	mov	a,#0x63
	movx	@dptr,a
;     genPointerSet
;     genFarPointerSet
	mov	dptr,#(_print_voltage_nibble_1_1 + 0x000d)
	mov	a,#0x64
	movx	@dptr,a
;     genPointerSet
;     genFarPointerSet
	mov	dptr,#(_print_voltage_nibble_1_1 + 0x000e)
	mov	a,#0x65
	movx	@dptr,a
;     genPointerSet
;     genFarPointerSet
	mov	dptr,#(_print_voltage_nibble_1_1 + 0x000f)
	mov	a,#0x66
	movx	@dptr,a
;firmware.c:35: while (dat>=10000) {count++; dat=dat-10000;}		// extract the 1Volt-units
;     genAssign
	mov	r2,#0x00
	mov	r3,#0x00
;     genAssign
	mov	dptr,#_print_voltage_PARM_2
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
00101$:
;     genCmpLt
;     genCmp
	clr	c
	mov	a,r4
	subb	a,#0x10
	mov	a,r5
	subb	a,#0x27
;     genIfxJump
;	Peephole 112.b	changed ljmp to sjmp
;	Peephole 160	removed sjmp by inverse jump logic
	jc	00103$
00118$:
;     genPlus
;     genPlusIncr
	inc	r2
	cjne	r2,#0x00,00119$
	inc	r3
00119$:
;     genMinus
	mov	a,r4
	add	a,#0xf0
	mov	r4,a
	mov	a,r5
	addc	a,#0xd8
	mov	r5,a
;	Peephole 112.b	changed ljmp to sjmp
	sjmp	00101$
00103$:
;firmware.c:36: str [position]=nibble[count];
;     genIpush
	push	ar4
	push	ar5
;     genAssign
	mov	dptr,#_print_voltage_str_1_1
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	inc	dptr
	movx	a,@dptr
	mov	r0,a
;     genAssign
	mov	dptr,#_print_voltage_PARM_3
	movx	a,@dptr
	mov	_print_voltage_sloc0_1_0,a
;     genPlus
	mov	a,_print_voltage_sloc0_1_0
;	Peephole 236.a	used r6 instead of ar6
	add	a,r6
	mov	r4,a
;	Peephole 181	changed mov to clr
	clr	a
;	Peephole 236.b	used r7 instead of ar7
	addc	a,r7
	mov	r5,a
	mov	ar1,r0
;     genPlus
;	Peephole 236.g	used r2 instead of ar2
	mov	a,r2
	add	a,#_print_voltage_nibble_1_1
	mov	dpl,a
;	Peephole 236.g	used r3 instead of ar3
	mov	a,r3
	addc	a,#(_print_voltage_nibble_1_1 >> 8)
	mov	dph,a
;     genPointerGet
;     genFarPointerGet
	movx	a,@dptr
;     genPointerSet
;     genGenPointerSet
;	Peephole 191	removed redundant mov
	mov	r2,a
	mov	dpl,r4
	mov	dph,r5
	mov	b,r1
	lcall	__gptrput
;firmware.c:37: str [position+1]='.';
;     genCast
	mov	_print_voltage_sloc1_1_0,_print_voltage_sloc0_1_0
	mov	(_print_voltage_sloc1_1_0 + 1),#0x00
;     genPlus
;     genPlusIncr
	mov	a,#0x01
	add	a,_print_voltage_sloc1_1_0
	mov	r2,a
;	Peephole 181	changed mov to clr
	clr	a
	addc	a,(_print_voltage_sloc1_1_0 + 1)
	mov	r3,a
;     genPlus
;	Peephole 236.g	used r2 instead of ar2
	mov	a,r2
;	Peephole 236.a	used r6 instead of ar6
	add	a,r6
	mov	r6,a
;	Peephole 236.g	used r3 instead of ar3
	mov	a,r3
;	Peephole 236.b	used r7 instead of ar7
	addc	a,r7
	mov	r7,a
;     genPointerSet
;     genGenPointerSet
	mov	dpl,r6
	mov	dph,r7
	mov	b,r0
	mov	a,#0x2E
	lcall	__gptrput
;firmware.c:43: str [position+3]=nibble[count];
;     genIpop
	pop	ar5
	pop	ar4
;firmware.c:39: while (dat>=1000) {count++; dat=dat-1000;}			// extract the 0.1Volt-units
;     genAssign
	mov	r2,#0x00
	mov	r3,#0x00
;     genAssign
00104$:
;     genCmpLt
;     genCmp
	clr	c
	mov	a,r4
	subb	a,#0xE8
	mov	a,r5
	subb	a,#0x03
;     genIfxJump
;	Peephole 112.b	changed ljmp to sjmp
;	Peephole 160	removed sjmp by inverse jump logic
	jc	00106$
00120$:
;     genPlus
;     genPlusIncr
	inc	r2
	cjne	r2,#0x00,00121$
	inc	r3
00121$:
;     genMinus
	mov	a,r4
	add	a,#0x18
	mov	r4,a
	mov	a,r5
	addc	a,#0xfc
	mov	r5,a
;	Peephole 112.b	changed ljmp to sjmp
	sjmp	00104$
00106$:
;firmware.c:40: str [position+2]=nibble[count];
;     genIpush
	push	ar4
	push	ar5
;     genPlus
;     genPlusIncr
	mov	a,#0x02
	add	a,_print_voltage_sloc1_1_0
	mov	r6,a
;	Peephole 181	changed mov to clr
	clr	a
	addc	a,(_print_voltage_sloc1_1_0 + 1)
	mov	r7,a
;     genAssign
	mov	dptr,#_print_voltage_str_1_1
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
;     genPlus
;	Peephole 236.g	used r6 instead of ar6
	mov	a,r6
;	Peephole 236.a	used r0 instead of ar0
	add	a,r0
	mov	r6,a
;	Peephole 236.g	used r7 instead of ar7
	mov	a,r7
;	Peephole 236.b	used r1 instead of ar1
	addc	a,r1
	mov	r7,a
	mov	ar5,r4
;     genPlus
;	Peephole 236.g	used r2 instead of ar2
	mov	a,r2
	add	a,#_print_voltage_nibble_1_1
	mov	dpl,a
;	Peephole 236.g	used r3 instead of ar3
	mov	a,r3
	addc	a,#(_print_voltage_nibble_1_1 >> 8)
	mov	dph,a
;     genPointerGet
;     genFarPointerGet
	movx	a,@dptr
;     genPointerSet
;     genGenPointerSet
;	Peephole 191	removed redundant mov
	mov	r2,a
	mov	dpl,r6
	mov	dph,r7
	mov	b,r5
	lcall	__gptrput
;firmware.c:43: str [position+3]=nibble[count];
;     genIpop
	pop	ar5
	pop	ar4
;firmware.c:42: while (dat>=100) {count++; dat=dat-100;}		// extract the 0.01Volt-units
;     genAssign
	mov	r2,#0x00
	mov	r3,#0x00
;     genAssign
00107$:
;     genCmpLt
;     genCmp
	clr	c
	mov	a,r4
	subb	a,#0x64
	mov	a,r5
	subb	a,#0x00
;     genIfxJump
;	Peephole 112.b	changed ljmp to sjmp
;	Peephole 160	removed sjmp by inverse jump logic
	jc	00109$
00122$:
;     genPlus
;     genPlusIncr
	inc	r2
	cjne	r2,#0x00,00123$
	inc	r3
00123$:
;     genMinus
	mov	a,r4
	add	a,#0x9c
	mov	r4,a
	mov	a,r5
	addc	a,#0xff
	mov	r5,a
;	Peephole 112.b	changed ljmp to sjmp
	sjmp	00107$
00109$:
;firmware.c:43: str [position+3]=nibble[count];
;     genPlus
;     genPlusIncr
	mov	a,#0x03
	add	a,_print_voltage_sloc1_1_0
	mov	r4,a
;	Peephole 181	changed mov to clr
	clr	a
	addc	a,(_print_voltage_sloc1_1_0 + 1)
	mov	r5,a
;     genAssign
	mov	dptr,#_print_voltage_str_1_1
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	inc	dptr
	movx	a,@dptr
	mov	r0,a
;     genPlus
;	Peephole 236.g	used r4 instead of ar4
	mov	a,r4
;	Peephole 236.a	used r6 instead of ar6
	add	a,r6
	mov	r6,a
;	Peephole 236.g	used r5 instead of ar5
	mov	a,r5
;	Peephole 236.b	used r7 instead of ar7
	addc	a,r7
	mov	r7,a
;     genPlus
;	Peephole 236.g	used r2 instead of ar2
	mov	a,r2
	add	a,#_print_voltage_nibble_1_1
	mov	dpl,a
;	Peephole 236.g	used r3 instead of ar3
	mov	a,r3
	addc	a,#(_print_voltage_nibble_1_1 >> 8)
	mov	dph,a
;     genPointerGet
;     genFarPointerGet
	movx	a,@dptr
;     genPointerSet
;     genGenPointerSet
;	Peephole 191	removed redundant mov
	mov	r2,a
	mov	dpl,r6
	mov	dph,r7
	mov	b,r0
;	Peephole 253.b	replaced lcall/ret with ljmp
	ljmp	__gptrput
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;ad0                       Allocated with name '_main_ad0_1_1'
;ad1                       Allocated with name '_main_ad1_1_1'
;ad2                       Allocated with name '_main_ad2_1_1'
;ad3                       Allocated with name '_main_ad3_1_1'
;count                     Allocated with name '_main_count_1_1'
;count2                    Allocated with name '_main_count2_1_1'
;------------------------------------------------------------
;firmware.c:47: void main (void)
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
;firmware.c:52: P1=0x00;	// Disable the LED's
;     genAssign
	mov	_P1,#0x00
;firmware.c:54: I2C_init();
;     genCall
	lcall	_I2C_init
;firmware.c:55: for (count=0;count<20;count++)
;     genAssign
	mov	r2,#0x00
	mov	r3,#0x00
00107$:
;     genCmpLt
;     genCmp
	clr	c
	mov	a,r2
	subb	a,#0x14
	mov	a,r3
	subb	a,#0x00
;     genIfxJump
;	Peephole 108	removed ljmp by inverse jump logic
	jnc	00110$
00140$:
;firmware.c:56: for (count2=0;count2<0x0ffe;count2++);
;     genAssign
	mov	r4,#0xFE
	mov	r5,#0x0F
00106$:
;     genDjnz
;     genMinus
;     genMinusDec
	dec	r4
	cjne	r4,#0xff,00141$
	dec	r5
00141$:
;     genIfx
	mov	a,r4
	orl	a,r5
;     genIfxJump
;	Peephole 109	removed ljmp by inverse jump logic
	jnz	00106$
00142$:
;firmware.c:55: for (count=0;count<20;count++)
;     genPlus
;     genPlusIncr
;	tail increment optimized
	inc	r2
	cjne	r2,#0x00,00107$
	inc	r3
;	Peephole 112.b	changed ljmp to sjmp
	sjmp	00107$
00110$:
;firmware.c:57: I2C_init();
;     genCall
	lcall	_I2C_init
;firmware.c:58: LCD_init();
;     genCall
	lcall	_LCD_init
;firmware.c:59: LCD_write_line (" ex9: 4-channel",0);
;     genAssign
	mov	dptr,#_LCD_write_line_PARM_2
;	Peephole 181	changed mov to clr
	clr	a
	movx	@dptr,a
;     genCall
;	Peephole 182.a	used 16 bit load of DPTR
	mov	dptr,#__str_0
	mov	b,#0x02
	lcall	_LCD_write_line
;firmware.c:60: LCD_write_line (" A/D-conversion",1);
;     genAssign
	mov	dptr,#_LCD_write_line_PARM_2
	mov	a,#0x01
	movx	@dptr,a
;     genCall
;	Peephole 182.a	used 16 bit load of DPTR
	mov	dptr,#__str_1
	mov	b,#0x02
	lcall	_LCD_write_line
;firmware.c:64: for (count=0;count<2000;count++)
;     genAssign
	mov	r2,#0x00
	mov	r3,#0x00
00114$:
;     genCmpLt
;     genCmp
	clr	c
	mov	a,r2
	subb	a,#0xD0
	mov	a,r3
	subb	a,#0x07
;     genIfxJump
;	Peephole 108	removed ljmp by inverse jump logic
	jnc	00102$
00143$:
;firmware.c:65: for (count2=0;count2<0x0ffe;count2++);
;     genAssign
	mov	r4,#0xFE
	mov	r5,#0x0F
00113$:
;     genDjnz
;     genMinus
;     genMinusDec
	dec	r4
	cjne	r4,#0xff,00144$
	dec	r5
00144$:
;     genIfx
	mov	a,r4
	orl	a,r5
;     genIfxJump
;	Peephole 109	removed ljmp by inverse jump logic
	jnz	00113$
00145$:
;firmware.c:64: for (count=0;count<2000;count++)
;     genPlus
;     genPlusIncr
;	tail increment optimized
	inc	r2
	cjne	r2,#0x00,00114$
	inc	r3
;firmware.c:70: while (1)
;	Peephole 112.b	changed ljmp to sjmp
	sjmp	00114$
00102$:
;firmware.c:72: I2C_start();
;     genCall
	lcall	_I2C_start
;firmware.c:73: I2C_send (0x9e);			// Send adres for IC x Write operation
;     genCall
	mov	dpl,#0x9E
	lcall	_I2C_send
;firmware.c:74: I2C_send (0x44);			// Set Output active, Auto increment and Channel 0
;     genCall
	mov	dpl,#0x44
	lcall	_I2C_send
;firmware.c:75: I2C_send (0x80);
;     genCall
	mov	dpl,#0x80
	lcall	_I2C_send
;firmware.c:76: I2C_stop();
;     genCall
	lcall	_I2C_stop
;firmware.c:77: I2C_start();
;     genCall
	lcall	_I2C_start
;firmware.c:78: I2C_send (0x9f);			// Send adres for IC x Read operation
;     genCall
	mov	dpl,#0x9F
	lcall	_I2C_send
;firmware.c:79: I2C_get(1);					// Read last ADC conversion, and start A/D conversion on channel 0
;     genCall
	mov	dpl,#0x01
	lcall	_I2C_get
;firmware.c:80: ad0=I2C_get (1);			// Read ADC conversion on channel 0, and start A/D conversion on channel 1
;     genCall
	mov	dpl,#0x01
	lcall	_I2C_get
	mov	r2,dpl
;firmware.c:81: ad1=I2C_get (1);			// Read ADC conversion on channel 1, and start A/D conversion on channel 2
;     genCall
	mov	dpl,#0x01
	push	ar2
	lcall	_I2C_get
	mov	r3,dpl
	pop	ar2
;firmware.c:82: ad2=I2C_get (1);			// Read ADC conversion on channel 2, and start A/D conversion on channel 3
;     genCall
	mov	dpl,#0x01
	push	ar2
	push	ar3
	lcall	_I2C_get
	mov	r4,dpl
	pop	ar3
	pop	ar2
;firmware.c:83: ad3=I2C_get (0);			// Read ADC conversion on channel 3, and start A/D conversion on channel 0
;     genCall
	mov	dpl,#0x00
	push	ar2
	push	ar3
	push	ar4
	lcall	_I2C_get
	mov	r5,dpl
	pop	ar4
	pop	ar3
	pop	ar2
;firmware.c:84: I2C_stop();
;     genCall
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	lcall	_I2C_stop
	pop	ar5
	pop	ar4
	pop	ar3
	pop	ar2
;firmware.c:88: sprintf(strbuf,"1: .  V 2: .  V ");
;     genIpush
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	mov	a,#__str_2
	push	acc
	mov	a,#(__str_2 >> 8)
	push	acc
	mov	a,#0x02
	push	acc
;     genIpush
	mov	a,#_strbuf
	push	acc
	mov	a,#(_strbuf >> 8)
	push	acc
	mov	a,#0x01
	push	acc
;     genCall
	lcall	_sprintf
	mov	a,sp
	add	a,#0xfa
	mov	sp,a
	pop	ar5
	pop	ar4
	pop	ar3
	pop	ar2
;firmware.c:89: ad2=convert_ad_to_volt(ad2);
;     genCast
	mov	r6,#0x00
;     genCall
	mov	dpl,r4
	mov	dph,r6
	push	ar2
	push	ar3
	push	ar5
	lcall	_convert_ad_to_volt
	mov	r4,dpl
	mov	r6,dph
	pop	ar5
	pop	ar3
	pop	ar2
;     genCast
;firmware.c:90: ad3=convert_ad_to_volt(ad3);
;     genCast
	mov	r6,#0x00
;     genCall
	mov	dpl,r5
	mov	dph,r6
	push	ar2
	push	ar3
	push	ar4
	lcall	_convert_ad_to_volt
	mov	r5,dpl
	mov	r6,dph
	pop	ar4
	pop	ar3
	pop	ar2
;     genCast
;firmware.c:91: print_voltage (strbuf,convert_ad_to_volt(ad0),2);
;     genCast
	mov	r6,#0x00
;     genCall
	mov	dpl,r2
	mov	dph,r6
	push	ar3
	push	ar4
	push	ar5
	lcall	_convert_ad_to_volt
	mov	r2,dpl
	mov	r6,dph
	pop	ar5
	pop	ar4
	pop	ar3
;     genAssign
	mov	dptr,#_print_voltage_PARM_2
	mov	a,r2
	movx	@dptr,a
	inc	dptr
	mov	a,r6
	movx	@dptr,a
;     genAssign
	mov	dptr,#_print_voltage_PARM_3
	mov	a,#0x02
	movx	@dptr,a
;     genCall
;	Peephole 182.a	used 16 bit load of DPTR
	mov	dptr,#_strbuf
	mov	b,#0x01
	push	ar3
	push	ar4
	push	ar5
	lcall	_print_voltage
	pop	ar5
	pop	ar4
	pop	ar3
;firmware.c:92: print_voltage (strbuf,convert_ad_to_volt(ad1),10);
;     genCast
	mov	r2,#0x00
;     genCall
	mov	dpl,r3
	mov	dph,r2
	push	ar4
	push	ar5
	lcall	_convert_ad_to_volt
	mov	r2,dpl
	mov	r3,dph
	pop	ar5
	pop	ar4
;     genAssign
	mov	dptr,#_print_voltage_PARM_2
	mov	a,r2
	movx	@dptr,a
	inc	dptr
	mov	a,r3
	movx	@dptr,a
;     genAssign
	mov	dptr,#_print_voltage_PARM_3
	mov	a,#0x0A
	movx	@dptr,a
;     genCall
;	Peephole 182.a	used 16 bit load of DPTR
	mov	dptr,#_strbuf
	mov	b,#0x01
	push	ar4
	push	ar5
	lcall	_print_voltage
	pop	ar5
	pop	ar4
;firmware.c:93: LCD_write_line (strbuf,0);
;     genAssign
	mov	dptr,#_LCD_write_line_PARM_2
;	Peephole 181	changed mov to clr
	clr	a
	movx	@dptr,a
;     genCall
;	Peephole 182.a	used 16 bit load of DPTR
	mov	dptr,#_strbuf
	mov	b,#0x01
	push	ar4
	push	ar5
	lcall	_LCD_write_line
	pop	ar5
	pop	ar4
;firmware.c:94: sprintf(strbuf,"3: .  V 4: .  V ");
;     genIpush
	push	ar4
	push	ar5
	mov	a,#__str_3
	push	acc
	mov	a,#(__str_3 >> 8)
	push	acc
	mov	a,#0x02
	push	acc
;     genIpush
	mov	a,#_strbuf
	push	acc
	mov	a,#(_strbuf >> 8)
	push	acc
	mov	a,#0x01
	push	acc
;     genCall
	lcall	_sprintf
	mov	a,sp
	add	a,#0xfa
	mov	sp,a
	pop	ar5
	pop	ar4
;firmware.c:95: print_voltage (strbuf,ad2,2);
;     genCast
	mov	dptr,#_print_voltage_PARM_2
	mov	a,r4
	movx	@dptr,a
	inc	dptr
;	Peephole 181	changed mov to clr
	clr	a
	movx	@dptr,a
;     genAssign
	mov	dptr,#_print_voltage_PARM_3
	mov	a,#0x02
	movx	@dptr,a
;     genCall
;	Peephole 182.a	used 16 bit load of DPTR
	mov	dptr,#_strbuf
	mov	b,#0x01
	push	ar5
	lcall	_print_voltage
	pop	ar5
;firmware.c:96: print_voltage (strbuf,ad3,10);
;     genCast
	mov	dptr,#_print_voltage_PARM_2
	mov	a,r5
	movx	@dptr,a
	inc	dptr
;	Peephole 181	changed mov to clr
	clr	a
	movx	@dptr,a
;     genAssign
	mov	dptr,#_print_voltage_PARM_3
	mov	a,#0x0A
	movx	@dptr,a
;     genCall
;	Peephole 182.a	used 16 bit load of DPTR
	mov	dptr,#_strbuf
	mov	b,#0x01
	lcall	_print_voltage
;firmware.c:97: LCD_write_line (strbuf,1);
;     genAssign
	mov	dptr,#_LCD_write_line_PARM_2
	mov	a,#0x01
	movx	@dptr,a
;     genCall
;	Peephole 182.a	used 16 bit load of DPTR
	mov	dptr,#_strbuf
	mov	b,#0x01
	lcall	_LCD_write_line
;firmware.c:101: for (count=0;count<10;count++)
;     genAssign
	mov	r2,#0x00
	mov	r3,#0x00
00121$:
;     genCmpLt
;     genCmp
	clr	c
	mov	a,r2
	subb	a,#0x0A
	mov	a,r3
	subb	a,#0x00
;     genIfxJump
	jc	00146$
	ljmp	00102$
00146$:
;firmware.c:102: for (count2=0;count2<0x0ffe;count2++);
;     genAssign
	mov	r4,#0xFE
	mov	r5,#0x0F
00120$:
;     genDjnz
;     genMinus
;     genMinusDec
	dec	r4
	cjne	r4,#0xff,00147$
	dec	r5
00147$:
;     genIfx
	mov	a,r4
	orl	a,r5
;     genIfxJump
;	Peephole 109	removed ljmp by inverse jump logic
	jnz	00120$
00148$:
;firmware.c:101: for (count=0;count<10;count++)
;     genPlus
;     genPlusIncr
;	tail increment optimized
	inc	r2
	cjne	r2,#0x00,00121$
	inc	r3
;	Peephole 112.b	changed ljmp to sjmp
	sjmp	00121$
00125$:
	ret
	.area CSEG    (CODE)
__str_0:
	.ascii " ex9: 4-channel"
	.db 0x00
__str_1:
	.ascii " A/D-conversion"
	.db 0x00
__str_2:
	.ascii "1: .  V 2: .  V "
	.db 0x00
__str_3:
	.ascii "3: .  V 4: .  V "
	.db 0x00
	.area XINIT   (CODE)
