;--------------------------------------------------------
; File Created by SDCC : FreeWare ANSI-C Compiler
; Version 2.5.0 #1020 (May  8 2005)
; This file generated Mon May 08 16:15:30 2006
;--------------------------------------------------------
	.module i2c
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _I2C_get
	.globl _I2C_send
	.globl _I2C_delay
	.globl _I2C_init
	.globl _P0
	.globl _prev_P0
	.globl _I2C_start
	.globl _I2C_stop
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (DATA)
_P0	=	0x0080
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
	.area OSEG    (OVR,DATA)
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
_prev_P0::
	.ds 1
_I2C_send_dat_1_1::
	.ds 1
_I2C_send_ack_1_1::
	.ds 1
_I2C_get_ack_1_1::
	.ds 1
_I2C_get_dat_1_1::
	.ds 1
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
; global & static initialisations
;--------------------------------------------------------
	.area CSEG    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area CSEG    (CODE)
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'I2C_init'
;------------------------------------------------------------
;------------------------------------------------------------
;i2c.c:20: void I2C_init (void)
;	-----------------------------------------
;	 function I2C_init
;	-----------------------------------------
_I2C_init:
	ar2 = 0x02
	ar3 = 0x03
	ar4 = 0x04
	ar5 = 0x05
	ar6 = 0x06
	ar7 = 0x07
	ar0 = 0x00
	ar1 = 0x01
;i2c.c:22: prev_P0=0xff;			// set the port P0 to a know state
;     genAssign
	mov	dptr,#_prev_P0
	mov	a,#0xFF
	movx	@dptr,a
;i2c.c:23: P0=prev_P0;
;     genAssign
	mov	_P0,#0xFF
;i2c.c:24: I2C_start();			// reset the I2C-bus.
;     genCall
	lcall	_I2C_start
;i2c.c:25: I2C_stop();
;     genCall
;	Peephole 253.b	replaced lcall/ret with ljmp
	ljmp	_I2C_stop
;------------------------------------------------------------
;Allocation info for local variables in function 'I2C_delay'
;------------------------------------------------------------
;x                         Allocated with name '_I2C_delay_x_1_1'
;------------------------------------------------------------
;i2c.c:28: void I2C_delay(void)
;	-----------------------------------------
;	 function I2C_delay
;	-----------------------------------------
_I2C_delay:
;i2c.c:31: for (x=0;x<50;x++){};
;     genAssign
	mov	r2,#0x32
	mov	r3,#0x00
00103$:
;     genDjnz
;     genMinus
;     genMinusDec
	dec	r2
	cjne	r2,#0xff,00108$
	dec	r3
00108$:
;     genIfx
	mov	a,r2
	orl	a,r3
;     genIfxJump
;	Peephole 109	removed ljmp by inverse jump logic
	jnz	00103$
00109$:
00104$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'I2C_start'
;------------------------------------------------------------
;------------------------------------------------------------
;i2c.c:34: void I2C_start(void)
;	-----------------------------------------
;	 function I2C_start
;	-----------------------------------------
_I2C_start:
;i2c.c:36: SDA_HIGH		
;     genAssign
;     genOr
;	Peephole 248.a	optimized or to xdata
	mov	dptr,#_prev_P0
	movx	a,@dptr
	mov	r2,a
	orl	a,#0x01
	movx	@dptr,a
;     genAssign
	mov	dptr,#_prev_P0
	movx	a,@dptr
	mov	_P0,a
;     genCall
	lcall	_I2C_delay
;i2c.c:37: SCL_HIGH
;     genAssign
;     genOr
;	Peephole 248.a	optimized or to xdata
	mov	dptr,#_prev_P0
	movx	a,@dptr
	mov	r2,a
	orl	a,#0x02
	movx	@dptr,a
;     genAssign
	mov	dptr,#_prev_P0
	movx	a,@dptr
	mov	_P0,a
00101$:
;     genAnd
	mov	a,#0x80
	anl	a,_P0
;     genCmpEq
;	Peephole 112.b	changed ljmp to sjmp
;	Peephole 115.b	jump optimization
	mov	r2,a
	jz	00101$
00108$:
;     genCall
	lcall	_I2C_delay
;i2c.c:38: SDA_LOW
;     genAssign
;     genAnd
;	Peephole 248.b	optimized and to xdata
	mov	dptr,#_prev_P0
	movx	a,@dptr
	mov	r2,a
	anl	a,#0xFE
	movx	@dptr,a
;     genAssign
	mov	dptr,#_prev_P0
	movx	a,@dptr
	mov	_P0,a
;     genCall
	lcall	_I2C_delay
;i2c.c:39: SCL_LOW
;     genAssign
;     genAnd
;	Peephole 248.b	optimized and to xdata
	mov	dptr,#_prev_P0
	movx	a,@dptr
	mov	r2,a
	anl	a,#0xFD
	movx	@dptr,a
;     genAssign
	mov	dptr,#_prev_P0
	movx	a,@dptr
	mov	_P0,a
;     genCall
;	Peephole 253.b	replaced lcall/ret with ljmp
	ljmp	_I2C_delay
;------------------------------------------------------------
;Allocation info for local variables in function 'I2C_stop'
;------------------------------------------------------------
;------------------------------------------------------------
;i2c.c:42: void I2C_stop (void)			// Assumes SCL and SDA are low at entry
;	-----------------------------------------
;	 function I2C_stop
;	-----------------------------------------
_I2C_stop:
;i2c.c:44: SCL_LOW
;     genAssign
;     genAnd
;	Peephole 248.b	optimized and to xdata
	mov	dptr,#_prev_P0
	movx	a,@dptr
	mov	r2,a
	anl	a,#0xFD
	movx	@dptr,a
;     genAssign
	mov	dptr,#_prev_P0
	movx	a,@dptr
	mov	_P0,a
;     genCall
	lcall	_I2C_delay
;i2c.c:45: SDA_LOW
;     genAssign
;     genAnd
;	Peephole 248.b	optimized and to xdata
	mov	dptr,#_prev_P0
	movx	a,@dptr
	mov	r2,a
	anl	a,#0xFE
	movx	@dptr,a
;     genAssign
	mov	dptr,#_prev_P0
	movx	a,@dptr
	mov	_P0,a
;     genCall
	lcall	_I2C_delay
;i2c.c:46: SCL_HIGH
;     genAssign
;     genOr
;	Peephole 248.a	optimized or to xdata
	mov	dptr,#_prev_P0
	movx	a,@dptr
	mov	r2,a
	orl	a,#0x02
	movx	@dptr,a
;     genAssign
	mov	dptr,#_prev_P0
	movx	a,@dptr
	mov	_P0,a
00101$:
;     genAnd
	mov	a,#0x80
	anl	a,_P0
;     genCmpEq
;	Peephole 112.b	changed ljmp to sjmp
;	Peephole 115.b	jump optimization
	mov	r2,a
	jz	00101$
00108$:
;     genCall
	lcall	_I2C_delay
;i2c.c:47: SDA_HIGH
;     genAssign
;     genOr
;	Peephole 248.a	optimized or to xdata
	mov	dptr,#_prev_P0
	movx	a,@dptr
	mov	r2,a
	orl	a,#0x01
	movx	@dptr,a
;     genAssign
	mov	dptr,#_prev_P0
	movx	a,@dptr
	mov	_P0,a
;     genCall
;	Peephole 253.b	replaced lcall/ret with ljmp
	ljmp	_I2C_delay
;------------------------------------------------------------
;Allocation info for local variables in function 'I2C_send'
;------------------------------------------------------------
;dat                       Allocated with name '_I2C_send_dat_1_1'
;x                         Allocated with name '_I2C_send_x_1_1'
;ack                       Allocated with name '_I2C_send_ack_1_1'
;------------------------------------------------------------
;i2c.c:50: unsigned char I2C_send ( unsigned char dat)
;	-----------------------------------------
;	 function I2C_send
;	-----------------------------------------
_I2C_send:
;     genReceive
	mov	a,dpl
	mov	dptr,#_I2C_send_dat_1_1
	movx	@dptr,a
;i2c.c:53: for (x=0;x<8;x++)
;     genAssign
	mov	r2,#0x00
00113$:
;     genCmpLt
;     genCmp
	cjne	r2,#0x08,00127$
00127$:
;     genIfxJump
	jc	00128$
	ljmp	00116$
00128$:
;i2c.c:55: if (dat & 0x80) SDA_HIGH else SDA_LOW
;     genAssign
	mov	dptr,#_I2C_send_dat_1_1
	movx	a,@dptr
;     genAnd
;	Peephole 105	removed redundant mov
	mov	r3,a
;     genIfxJump
;	Peephole 111	removed ljmp by inverse jump logic
	jnb	acc.7,00102$
00129$:
;     genAssign
;     genOr
;	Peephole 248.a	optimized or to xdata
	mov	dptr,#_prev_P0
	movx	a,@dptr
	mov	r3,a
	orl	a,#0x01
	movx	@dptr,a
;     genAssign
	mov	dptr,#_prev_P0
	movx	a,@dptr
	mov	_P0,a
;     genCall
	push	ar2
	lcall	_I2C_delay
	pop	ar2
;	Peephole 112.b	changed ljmp to sjmp
	sjmp	00103$
00102$:
;     genAssign
;     genAnd
;	Peephole 248.b	optimized and to xdata
	mov	dptr,#_prev_P0
	movx	a,@dptr
	mov	r3,a
	anl	a,#0xFE
	movx	@dptr,a
;     genAssign
	mov	dptr,#_prev_P0
	movx	a,@dptr
	mov	_P0,a
;     genCall
	push	ar2
	lcall	_I2C_delay
	pop	ar2
00103$:
;i2c.c:56: SCL_HIGH
;     genAssign
;     genOr
;	Peephole 248.a	optimized or to xdata
	mov	dptr,#_prev_P0
	movx	a,@dptr
	mov	r3,a
	orl	a,#0x02
	movx	@dptr,a
;     genAssign
	mov	dptr,#_prev_P0
	movx	a,@dptr
	mov	_P0,a
00104$:
;     genAnd
	mov	a,#0x80
	anl	a,_P0
;     genCmpEq
;	Peephole 112.b	changed ljmp to sjmp
;	Peephole 115.b	jump optimization
	mov	r3,a
	jz	00104$
00130$:
;     genCall
	push	ar2
	lcall	_I2C_delay
	pop	ar2
;i2c.c:57: SCL_LOW
;     genAssign
;     genAnd
;	Peephole 248.b	optimized and to xdata
	mov	dptr,#_prev_P0
	movx	a,@dptr
	mov	r3,a
	anl	a,#0xFD
	movx	@dptr,a
;     genAssign
	mov	dptr,#_prev_P0
	movx	a,@dptr
	mov	_P0,a
;     genCall
	push	ar2
	lcall	_I2C_delay
	pop	ar2
;i2c.c:58: dat = dat <<1;
;     genAssign
	mov	dptr,#_I2C_send_dat_1_1
	movx	a,@dptr
;     genLeftShift
;     genLeftShiftLiteral
;     genlshOne
;	Peephole 105	removed redundant mov
;     genAssign
;	Peephole 100	removed redundant mov
;	Peephole 204	removed redundant mov
	add	a,acc
	mov	r3,a
	mov	dptr,#_I2C_send_dat_1_1
	movx	@dptr,a
;i2c.c:53: for (x=0;x<8;x++)
;     genPlus
;     genPlusIncr
	inc	r2
	ljmp	00113$
00116$:
;i2c.c:60: SDA_HIGH
;     genAssign
;     genOr
;	Peephole 248.a	optimized or to xdata
	mov	dptr,#_prev_P0
	movx	a,@dptr
	mov	r2,a
	orl	a,#0x01
	movx	@dptr,a
;     genAssign
	mov	dptr,#_prev_P0
	movx	a,@dptr
	mov	_P0,a
;     genCall
	lcall	_I2C_delay
;i2c.c:61: SCL_HIGH
;     genAssign
;     genOr
;	Peephole 248.a	optimized or to xdata
	mov	dptr,#_prev_P0
	movx	a,@dptr
	mov	r2,a
	orl	a,#0x02
	movx	@dptr,a
;     genAssign
	mov	dptr,#_prev_P0
	movx	a,@dptr
	mov	_P0,a
00107$:
;     genAnd
	mov	a,#0x80
	anl	a,_P0
;     genCmpEq
;	Peephole 112.b	changed ljmp to sjmp
;	Peephole 115.b	jump optimization
	mov	r2,a
	jz	00107$
00131$:
;     genCall
	lcall	_I2C_delay
;i2c.c:62: ack = P0;			// read the input SDA
;     genAssign
	mov	dptr,#_I2C_send_ack_1_1
	mov	a,_P0
	movx	@dptr,a
;i2c.c:63: SCL_LOW
;     genAssign
;     genAnd
;	Peephole 248.b	optimized and to xdata
	mov	dptr,#_prev_P0
	movx	a,@dptr
	mov	r2,a
	anl	a,#0xFD
	movx	@dptr,a
;     genAssign
	mov	dptr,#_prev_P0
	movx	a,@dptr
	mov	_P0,a
;     genCall
	lcall	_I2C_delay
;i2c.c:64: SDA_LOW
;     genAssign
;     genAnd
;	Peephole 248.b	optimized and to xdata
	mov	dptr,#_prev_P0
	movx	a,@dptr
	mov	r2,a
	anl	a,#0xFE
	movx	@dptr,a
;     genAssign
	mov	dptr,#_prev_P0
	movx	a,@dptr
	mov	_P0,a
;     genCall
	lcall	_I2C_delay
;i2c.c:65: if ((ack&0x40)==0) return 1; else return 0;  
;     genAssign
	mov	dptr,#_I2C_send_ack_1_1
	movx	a,@dptr
	mov	r2,a
;     genAnd
	anl	ar2,#0x40
;     genCmpEq
;	Peephole 112.b	changed ljmp to sjmp
;	Peephole 199	optimized misc jump sequence
	cjne	r2,#0x00,00111$
;00132$:
;	Peephole 200	removed redundant sjmp
00133$:
;     genRet
	mov	dpl,#0x01
;	Peephole 112.b	changed ljmp to sjmp
;     genRet
;	Peephole 237.a	removed sjmp to ret
	ret
00111$:
	mov	dpl,#0x00
00117$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'I2C_get'
;------------------------------------------------------------
;ack                       Allocated with name '_I2C_get_ack_1_1'
;dat                       Allocated with name '_I2C_get_dat_1_1'
;x                         Allocated with name '_I2C_get_x_1_1'
;------------------------------------------------------------
;i2c.c:68: unsigned char I2C_get (unsigned char ack)
;	-----------------------------------------
;	 function I2C_get
;	-----------------------------------------
_I2C_get:
;     genReceive
	mov	a,dpl
	mov	dptr,#_I2C_get_ack_1_1
	movx	@dptr,a
;i2c.c:71: SDA_HIGH							// SDA goes high (undriven)
;     genAssign
;     genOr
;	Peephole 248.a	optimized or to xdata
	mov	dptr,#_prev_P0
	movx	a,@dptr
	mov	r2,a
	orl	a,#0x01
	movx	@dptr,a
;     genAssign
	mov	dptr,#_prev_P0
	movx	a,@dptr
	mov	_P0,a
;     genCall
	lcall	_I2C_delay
;i2c.c:72: for (x=0;x<8;x++)
;     genAssign
	mov	r2,#0x00
00113$:
;     genCmpLt
;     genCmp
	cjne	r2,#0x08,00127$
00127$:
;     genIfxJump
;	Peephole 108	removed ljmp by inverse jump logic
	jnc	00116$
00128$:
;i2c.c:74: SCL_HIGH
;     genAssign
;     genOr
;	Peephole 248.a	optimized or to xdata
	mov	dptr,#_prev_P0
	movx	a,@dptr
	mov	r3,a
	orl	a,#0x02
	movx	@dptr,a
;     genAssign
	mov	dptr,#_prev_P0
	movx	a,@dptr
	mov	_P0,a
00101$:
;     genAnd
	mov	a,#0x80
	anl	a,_P0
;     genCmpEq
;	Peephole 112.b	changed ljmp to sjmp
;	Peephole 115.b	jump optimization
	mov	r3,a
	jz	00101$
00129$:
;     genCall
	push	ar2
	lcall	_I2C_delay
	pop	ar2
;i2c.c:75: if ((P0 & 0x40)==0x40) dat=(dat<<1)+1; else dat=dat<<1;
;     genAnd
	mov	a,#0x40
	anl	a,_P0
	mov	r3,a
;     genCmpEq
;	Peephole 112.b	changed ljmp to sjmp
;	Peephole 199	optimized misc jump sequence
	cjne	r3,#0x40,00105$
;00130$:
;	Peephole 200	removed redundant sjmp
00131$:
;     genAssign
	mov	dptr,#_I2C_get_dat_1_1
	movx	a,@dptr
;     genLeftShift
;     genLeftShiftLiteral
;     genlshOne
;	Peephole 105	removed redundant mov
;	Peephole 204	removed redundant mov
	add	a,acc
	mov	r3,a
;     genPlus
	mov	dptr,#_I2C_get_dat_1_1
;     genPlusIncr
	mov	a,#0x01
;	Peephole 236.a	used r3 instead of ar3
	add	a,r3
	movx	@dptr,a
;	Peephole 112.b	changed ljmp to sjmp
	sjmp	00106$
00105$:
;     genAssign
	mov	dptr,#_I2C_get_dat_1_1
	movx	a,@dptr
;     genLeftShift
;     genLeftShiftLiteral
;     genlshOne
;	Peephole 105	removed redundant mov
;     genAssign
;	Peephole 100	removed redundant mov
;	Peephole 204	removed redundant mov
	add	a,acc
	mov	r3,a
	mov	dptr,#_I2C_get_dat_1_1
	movx	@dptr,a
00106$:
;i2c.c:76: SCL_LOW
;     genAssign
;     genAnd
;	Peephole 248.b	optimized and to xdata
	mov	dptr,#_prev_P0
	movx	a,@dptr
	mov	r3,a
	anl	a,#0xFD
	movx	@dptr,a
;     genAssign
	mov	dptr,#_prev_P0
	movx	a,@dptr
	mov	_P0,a
;     genCall
	push	ar2
	lcall	_I2C_delay
	pop	ar2
;i2c.c:72: for (x=0;x<8;x++)
;     genPlus
;     genPlusIncr
	inc	r2
;	Peephole 112.b	changed ljmp to sjmp
	sjmp	00113$
00116$:
;i2c.c:78: if (ack) 
;     genAssign
	mov	dptr,#_I2C_get_ack_1_1
	movx	a,@dptr
;     genIfx
;	Peephole 105	removed redundant mov
	mov	r2,a
;     genIfxJump
;	Peephole 110	removed ljmp by inverse jump logic
	jz	00108$
00132$:
;i2c.c:79: SDA_LOW							// if wanted, we will ACK the transmission
;     genAssign
;     genAnd
;	Peephole 248.b	optimized and to xdata
	mov	dptr,#_prev_P0
	movx	a,@dptr
	mov	r2,a
	anl	a,#0xFE
	movx	@dptr,a
;     genAssign
	mov	dptr,#_prev_P0
	movx	a,@dptr
	mov	_P0,a
;     genCall
	lcall	_I2C_delay
;	Peephole 112.b	changed ljmp to sjmp
	sjmp	00109$
00108$:
;i2c.c:81: SDA_HIGH						// else we just don't!!!
;     genAssign
;     genOr
;	Peephole 248.a	optimized or to xdata
	mov	dptr,#_prev_P0
	movx	a,@dptr
	mov	r2,a
	orl	a,#0x01
	movx	@dptr,a
;     genAssign
	mov	dptr,#_prev_P0
	movx	a,@dptr
	mov	_P0,a
;     genCall
	lcall	_I2C_delay
00109$:
;i2c.c:82: SCL_HIGH							// create a last clock-pulse
;     genAssign
;     genOr
;	Peephole 248.a	optimized or to xdata
	mov	dptr,#_prev_P0
	movx	a,@dptr
	mov	r2,a
	orl	a,#0x02
	movx	@dptr,a
;     genAssign
	mov	dptr,#_prev_P0
	movx	a,@dptr
	mov	_P0,a
00110$:
;     genAnd
	mov	a,#0x80
	anl	a,_P0
;     genCmpEq
;	Peephole 112.b	changed ljmp to sjmp
;	Peephole 115.b	jump optimization
	mov	r2,a
	jz	00110$
00133$:
;     genCall
	lcall	_I2C_delay
;i2c.c:83: SCL_LOW
;     genAssign
;     genAnd
;	Peephole 248.b	optimized and to xdata
	mov	dptr,#_prev_P0
	movx	a,@dptr
	mov	r2,a
	anl	a,#0xFD
	movx	@dptr,a
;     genAssign
	mov	dptr,#_prev_P0
	movx	a,@dptr
	mov	_P0,a
;     genCall
	lcall	_I2C_delay
;i2c.c:84: SDA_LOW							// exit the function with both signals in a low state
;     genAssign
;     genAnd
;	Peephole 248.b	optimized and to xdata
	mov	dptr,#_prev_P0
	movx	a,@dptr
	mov	r2,a
	anl	a,#0xFE
	movx	@dptr,a
;     genAssign
	mov	dptr,#_prev_P0
	movx	a,@dptr
	mov	_P0,a
;     genCall
	lcall	_I2C_delay
;i2c.c:85: return (dat);    
;     genAssign
	mov	dptr,#_I2C_get_dat_1_1
	movx	a,@dptr
;     genRet
;	Peephole 234	loading dpl directly from a(ccumulator), r2 not set
	mov	dpl,a
00117$:
	ret
	.area CSEG    (CODE)
	.area XINIT   (CODE)
