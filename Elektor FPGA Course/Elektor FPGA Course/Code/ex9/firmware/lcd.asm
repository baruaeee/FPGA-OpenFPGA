;--------------------------------------------------------
; File Created by SDCC : FreeWare ANSI-C Compiler
; Version 2.5.0 #1020 (May  8 2005)
; This file generated Mon May 08 16:15:30 2006
;--------------------------------------------------------
	.module lcd
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _LCD_write_line
	.globl _LCD_write_cmd
	.globl _LCD_wait_ready
	.globl _LCD_write_dat
	.globl _LCD_wait
	.globl _LCD_write_line_PARM_2
	.globl _LCD_ctl_reg
	.globl _LCD_init
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (DATA)
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
_LCD_ctl_reg::
	.ds 1
_LCD_write_dat_dat_1_1::
	.ds 1
_LCD_wait_ready_dat_1_1::
	.ds 1
_LCD_write_cmd_dat_1_1::
	.ds 1
_LCD_write_line_PARM_2::
	.ds 1
_LCD_write_line_str_1_1::
	.ds 3
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
;Allocation info for local variables in function 'LCD_wait'
;------------------------------------------------------------
;x                         Allocated with name '_LCD_wait_x_1_1'
;------------------------------------------------------------
;lcd.c:14: void LCD_wait(void)
;	-----------------------------------------
;	 function LCD_wait
;	-----------------------------------------
_LCD_wait:
	ar2 = 0x02
	ar3 = 0x03
	ar4 = 0x04
	ar5 = 0x05
	ar6 = 0x06
	ar7 = 0x07
	ar0 = 0x00
	ar1 = 0x01
;lcd.c:18: while (x>0) {x--;}
;     genAssign
	mov	r2,#0xFE
	mov	r3,#0xFF
00101$:
;     genIfx
	mov	a,r2
	orl	a,r3
;     genIfxJump
;	Peephole 110	removed ljmp by inverse jump logic
	jz	00104$
00108$:
;     genMinus
;     genMinusDec
;	tail decrement optimized
	dec	r2
	cjne	r2,#0xff,00101$
	dec	r3
;	Peephole 112.b	changed ljmp to sjmp
	sjmp	00101$
00104$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'LCD_write_dat'
;------------------------------------------------------------
;dat                       Allocated with name '_LCD_write_dat_dat_1_1'
;------------------------------------------------------------
;lcd.c:21: void LCD_write_dat (unsigned char dat)
;	-----------------------------------------
;	 function LCD_write_dat
;	-----------------------------------------
_LCD_write_dat:
;     genReceive
	mov	a,dpl
	mov	dptr,#_LCD_write_dat_dat_1_1
	movx	@dptr,a
;lcd.c:23: I2C_start();
;     genCall
	lcall	_I2C_start
;lcd.c:24: I2C_send (LCD_I2C_DAT_ADR);		// select IC8 to write to LCD-data
;     genCall
	mov	dpl,#0x42
	lcall	_I2C_send
;lcd.c:25: I2C_send (dat);				// put data on LCD-data lines
;     genAssign
	mov	dptr,#_LCD_write_dat_dat_1_1
	movx	a,@dptr
;     genCall
;	Peephole 244.c	loading dpl from a instead of r2
	mov	r2,a
	mov	dpl,a
	lcall	_I2C_send
;lcd.c:26: I2C_stop  ();
;     genCall
	lcall	_I2C_stop
;lcd.c:27: I2C_start();
;     genCall
	lcall	_I2C_start
;lcd.c:28: I2C_send (LCD_I2C_CTL_ADR);		// select IC6 to write to control lines
;     genCall
	mov	dpl,#0x40
	lcall	_I2C_send
;lcd.c:29: LCD_ctl_reg |= LCD_RS;		// Registerselect '1' : select data
;     genAssign
;     genOr
;	Peephole 248.a	optimized or to xdata
	mov	dptr,#_LCD_ctl_reg
	movx	a,@dptr
	mov	r2,a
	orl	a,#0x20
	movx	@dptr,a
;lcd.c:30: I2C_send (LCD_ctl_reg);
;     genAssign
	mov	dptr,#_LCD_ctl_reg
	movx	a,@dptr
;     genCall
;	Peephole 244.c	loading dpl from a instead of r2
	mov	r2,a
	mov	dpl,a
	lcall	_I2C_send
;lcd.c:31: LCD_ctl_reg &= ~LCD_R_Wn;	// R/Wn '0' : write
;     genAssign
;     genAnd
;	Peephole 248.b	optimized and to xdata
	mov	dptr,#_LCD_ctl_reg
	movx	a,@dptr
	mov	r2,a
	anl	a,#0xBF
	movx	@dptr,a
;lcd.c:32: I2C_send (LCD_ctl_reg);
;     genAssign
	mov	dptr,#_LCD_ctl_reg
	movx	a,@dptr
;     genCall
;	Peephole 244.c	loading dpl from a instead of r2
	mov	r2,a
	mov	dpl,a
	lcall	_I2C_send
;lcd.c:33: LCD_ctl_reg |= LCD_E;		// Enable '1' : validate cycle
;     genAssign
;     genOr
;	Peephole 248.a	optimized or to xdata
	mov	dptr,#_LCD_ctl_reg
	movx	a,@dptr
	mov	r2,a
	orl	a,#0x80
	movx	@dptr,a
;lcd.c:34: I2C_send (LCD_ctl_reg);
;     genAssign
	mov	dptr,#_LCD_ctl_reg
	movx	a,@dptr
;     genCall
;	Peephole 244.c	loading dpl from a instead of r2
	mov	r2,a
	mov	dpl,a
	lcall	_I2C_send
;lcd.c:35: LCD_ctl_reg &= ~LCD_E;		// Enable '0' : end of cycle
;     genAssign
;     genAnd
;	Peephole 248.b	optimized and to xdata
	mov	dptr,#_LCD_ctl_reg
	movx	a,@dptr
	mov	r2,a
	anl	a,#0x7F
	movx	@dptr,a
;lcd.c:36: I2C_send (LCD_ctl_reg);
;     genAssign
	mov	dptr,#_LCD_ctl_reg
	movx	a,@dptr
;     genCall
;	Peephole 244.c	loading dpl from a instead of r2
	mov	r2,a
	mov	dpl,a
	lcall	_I2C_send
;lcd.c:37: I2C_stop();
;     genCall
;	Peephole 253.b	replaced lcall/ret with ljmp
	ljmp	_I2C_stop
;------------------------------------------------------------
;Allocation info for local variables in function 'LCD_wait_ready'
;------------------------------------------------------------
;dat                       Allocated with name '_LCD_wait_ready_dat_1_1'
;------------------------------------------------------------
;lcd.c:41: void LCD_wait_ready(void)
;	-----------------------------------------
;	 function LCD_wait_ready
;	-----------------------------------------
_LCD_wait_ready:
;lcd.c:44: dat = 0x80;
;     genAssign
	mov	dptr,#_LCD_wait_ready_dat_1_1
	mov	a,#0x80
	movx	@dptr,a
;lcd.c:45: while ((dat &0x80)!=0)
00101$:
;     genAssign
	mov	dptr,#_LCD_wait_ready_dat_1_1
	movx	a,@dptr
	mov	r2,a
;     genAnd
	anl	ar2,#0x80
;     genCmpEq
	cjne	r2,#0x00,00108$
;	Peephole 251.a	replaced ljmp to ret with ret
	ret
00108$:
;lcd.c:48: I2C_start();
;     genCall
	lcall	_I2C_start
;lcd.c:49: I2C_send (LCD_I2C_DAT_ADR);		// select IC8 to write to LCD-data
;     genCall
	mov	dpl,#0x42
	lcall	_I2C_send
;lcd.c:50: I2C_send (0xff);		// set all outputs to high (and input)
;     genCall
	mov	dpl,#0xFF
	lcall	_I2C_send
;lcd.c:51: I2C_stop  ();
;     genCall
	lcall	_I2C_stop
;lcd.c:53: I2C_start();
;     genCall
	lcall	_I2C_start
;lcd.c:54: I2C_send (LCD_I2C_CTL_ADR);		// select IC6 to write to control lines
;     genCall
	mov	dpl,#0x40
	lcall	_I2C_send
;lcd.c:55: LCD_ctl_reg &= ~LCD_RS;			// RS '0' : Control register
;     genAssign
;     genAnd
;	Peephole 248.b	optimized and to xdata
	mov	dptr,#_LCD_ctl_reg
	movx	a,@dptr
	mov	r2,a
	anl	a,#0xDF
	movx	@dptr,a
;lcd.c:56: I2C_send (LCD_ctl_reg);
;     genAssign
	mov	dptr,#_LCD_ctl_reg
	movx	a,@dptr
;     genCall
;	Peephole 244.c	loading dpl from a instead of r2
	mov	r2,a
	mov	dpl,a
	lcall	_I2C_send
;lcd.c:57: LCD_ctl_reg |= LCD_R_Wn;		// R/Wn '1' : read
;     genAssign
;     genOr
;	Peephole 248.a	optimized or to xdata
	mov	dptr,#_LCD_ctl_reg
	movx	a,@dptr
	mov	r2,a
	orl	a,#0x40
	movx	@dptr,a
;lcd.c:58: I2C_send (LCD_ctl_reg);			// select control register to read
;     genAssign
	mov	dptr,#_LCD_ctl_reg
	movx	a,@dptr
;     genCall
;	Peephole 244.c	loading dpl from a instead of r2
	mov	r2,a
	mov	dpl,a
	lcall	_I2C_send
;lcd.c:59: LCD_ctl_reg |= LCD_E;			// Enable '1' : validate cycle
;     genAssign
;     genOr
;	Peephole 248.a	optimized or to xdata
	mov	dptr,#_LCD_ctl_reg
	movx	a,@dptr
	mov	r2,a
	orl	a,#0x80
	movx	@dptr,a
;lcd.c:60: I2C_send (LCD_ctl_reg);
;     genAssign
	mov	dptr,#_LCD_ctl_reg
	movx	a,@dptr
;     genCall
;	Peephole 244.c	loading dpl from a instead of r2
	mov	r2,a
	mov	dpl,a
	lcall	_I2C_send
;lcd.c:61: I2C_stop();
;     genCall
	lcall	_I2C_stop
;lcd.c:63: I2C_start();
;     genCall
	lcall	_I2C_start
;lcd.c:64: I2C_send (LCD_I2C_DAT_ADR+1);	// select IC8 to read from LCD-data
;     genCall
	mov	dpl,#0x43
	lcall	_I2C_send
;lcd.c:65: dat=I2C_get(1);					// read status
;     genCall
	mov	dpl,#0x01
	lcall	_I2C_get
	mov	a,dpl
;     genAssign
	mov	dptr,#_LCD_wait_ready_dat_1_1
	movx	@dptr,a
;lcd.c:66: I2C_stop();
;     genCall
	lcall	_I2C_stop
;lcd.c:68: I2C_start();
;     genCall
	lcall	_I2C_start
;lcd.c:69: I2C_send (LCD_I2C_CTL_ADR);		// select IC6 to write to control lines
;     genCall
	mov	dpl,#0x40
	lcall	_I2C_send
;lcd.c:70: LCD_ctl_reg &= ~LCD_E;			// Enable '0' : end of cycle
;     genAssign
;     genAnd
;	Peephole 248.b	optimized and to xdata
	mov	dptr,#_LCD_ctl_reg
	movx	a,@dptr
	mov	r2,a
	anl	a,#0x7F
	movx	@dptr,a
;lcd.c:71: I2C_send (LCD_ctl_reg);
;     genAssign
	mov	dptr,#_LCD_ctl_reg
	movx	a,@dptr
;     genCall
;	Peephole 244.c	loading dpl from a instead of r2
	mov	r2,a
	mov	dpl,a
	lcall	_I2C_send
;lcd.c:72: I2C_stop();
;     genCall
	lcall	_I2C_stop
	ljmp	00101$
00104$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'LCD_write_cmd'
;------------------------------------------------------------
;dat                       Allocated with name '_LCD_write_cmd_dat_1_1'
;------------------------------------------------------------
;lcd.c:76: void LCD_write_cmd (unsigned char dat)
;	-----------------------------------------
;	 function LCD_write_cmd
;	-----------------------------------------
_LCD_write_cmd:
;     genReceive
	mov	a,dpl
	mov	dptr,#_LCD_write_cmd_dat_1_1
	movx	@dptr,a
;lcd.c:78: I2C_start();
;     genCall
	lcall	_I2C_start
;lcd.c:79: I2C_send (LCD_I2C_DAT_ADR);		// select IC8 to write to LCD-data
;     genCall
	mov	dpl,#0x42
	lcall	_I2C_send
;lcd.c:80: I2C_send (dat);			// put data on LCD-data lines
;     genAssign
	mov	dptr,#_LCD_write_cmd_dat_1_1
	movx	a,@dptr
;     genCall
;	Peephole 244.c	loading dpl from a instead of r2
	mov	r2,a
	mov	dpl,a
	lcall	_I2C_send
;lcd.c:81: I2C_stop  ();
;     genCall
	lcall	_I2C_stop
;lcd.c:82: I2C_start();
;     genCall
	lcall	_I2C_start
;lcd.c:83: I2C_send (LCD_I2C_CTL_ADR);		// select IC6 to write to control lines
;     genCall
	mov	dpl,#0x40
	lcall	_I2C_send
;lcd.c:84: LCD_ctl_reg &= ~LCD_RS;			// RS '0' : Control register
;     genAssign
;     genAnd
;	Peephole 248.b	optimized and to xdata
	mov	dptr,#_LCD_ctl_reg
	movx	a,@dptr
	mov	r2,a
	anl	a,#0xDF
	movx	@dptr,a
;lcd.c:85: I2C_send (LCD_ctl_reg);
;     genAssign
	mov	dptr,#_LCD_ctl_reg
	movx	a,@dptr
;     genCall
;	Peephole 244.c	loading dpl from a instead of r2
	mov	r2,a
	mov	dpl,a
	lcall	_I2C_send
;lcd.c:86: LCD_ctl_reg &= ~LCD_R_Wn;		// R/Wn '0' : write
;     genAssign
;     genAnd
;	Peephole 248.b	optimized and to xdata
	mov	dptr,#_LCD_ctl_reg
	movx	a,@dptr
	mov	r2,a
	anl	a,#0xBF
	movx	@dptr,a
;lcd.c:87: I2C_send (LCD_ctl_reg);
;     genAssign
	mov	dptr,#_LCD_ctl_reg
	movx	a,@dptr
;     genCall
;	Peephole 244.c	loading dpl from a instead of r2
	mov	r2,a
	mov	dpl,a
	lcall	_I2C_send
;lcd.c:88: I2C_send (LCD_ctl_reg);
;     genAssign
	mov	dptr,#_LCD_ctl_reg
	movx	a,@dptr
;     genCall
;	Peephole 244.c	loading dpl from a instead of r2
	mov	r2,a
	mov	dpl,a
	lcall	_I2C_send
;lcd.c:89: LCD_ctl_reg |= LCD_E;		// Enable '1' : validate cycle
;     genAssign
;     genOr
;	Peephole 248.a	optimized or to xdata
	mov	dptr,#_LCD_ctl_reg
	movx	a,@dptr
	mov	r2,a
	orl	a,#0x80
	movx	@dptr,a
;lcd.c:90: I2C_send (LCD_ctl_reg);
;     genAssign
	mov	dptr,#_LCD_ctl_reg
	movx	a,@dptr
;     genCall
;	Peephole 244.c	loading dpl from a instead of r2
	mov	r2,a
	mov	dpl,a
	lcall	_I2C_send
;lcd.c:91: LCD_ctl_reg &= ~LCD_E;		// Enable '0' : end of cycle
;     genAssign
;     genAnd
;	Peephole 248.b	optimized and to xdata
	mov	dptr,#_LCD_ctl_reg
	movx	a,@dptr
	mov	r2,a
	anl	a,#0x7F
	movx	@dptr,a
;lcd.c:92: I2C_send (LCD_ctl_reg);
;     genAssign
	mov	dptr,#_LCD_ctl_reg
	movx	a,@dptr
;     genCall
;	Peephole 244.c	loading dpl from a instead of r2
	mov	r2,a
	mov	dpl,a
	lcall	_I2C_send
;lcd.c:93: I2C_stop();
;     genCall
	lcall	_I2C_stop
;lcd.c:94: LCD_wait();		// Wait until command is executed
;     genCall
;	Peephole 253.b	replaced lcall/ret with ljmp
	ljmp	_LCD_wait
;------------------------------------------------------------
;Allocation info for local variables in function 'LCD_init'
;------------------------------------------------------------
;------------------------------------------------------------
;lcd.c:97: void LCD_init(void)
;	-----------------------------------------
;	 function LCD_init
;	-----------------------------------------
_LCD_init:
;lcd.c:102: LCD_write_cmd (0x38);	// 8-bit 1/16 Dutycycle 5x7 dots
;     genCall
	mov	dpl,#0x38
	lcall	_LCD_write_cmd
;lcd.c:103: LCD_wait_ready();
;     genCall
	lcall	_LCD_wait_ready
;lcd.c:104: LCD_write_cmd (0x38);	// 8-bit 1/16 Dutycycle 5x7 dots
;     genCall
	mov	dpl,#0x38
	lcall	_LCD_write_cmd
;lcd.c:105: LCD_wait_ready();
;     genCall
	lcall	_LCD_wait_ready
;lcd.c:108: LCD_write_cmd (0x0c);	
;     genCall
	mov	dpl,#0x0C
	lcall	_LCD_write_cmd
;lcd.c:109: LCD_wait_ready();
;     genCall
	lcall	_LCD_wait_ready
;lcd.c:110: LCD_write_cmd (0x02);	// Undo shift
;     genCall
	mov	dpl,#0x02
	lcall	_LCD_write_cmd
;lcd.c:111: LCD_wait_ready();
;     genCall
	lcall	_LCD_wait_ready
;lcd.c:112: LCD_write_cmd (0x06);	// Cursor shifts right
;     genCall
	mov	dpl,#0x06
	lcall	_LCD_write_cmd
;lcd.c:113: LCD_wait_ready();
;     genCall
	lcall	_LCD_wait_ready
;lcd.c:114: LCD_write_cmd (0x0c);	// Display ON, cursor ON, blink OFF
;     genCall
	mov	dpl,#0x0C
	lcall	_LCD_write_cmd
;lcd.c:115: LCD_wait_ready();
;     genCall
	lcall	_LCD_wait_ready
;lcd.c:116: LCD_write_cmd (0x40);	// CGRAM pointer 0
;     genCall
	mov	dpl,#0x40
	lcall	_LCD_write_cmd
;lcd.c:117: LCD_wait_ready();
;     genCall
	lcall	_LCD_wait_ready
;lcd.c:118: LCD_write_cmd (0x80);	// DDRAM pointer 0
;     genCall
	mov	dpl,#0x80
	lcall	_LCD_write_cmd
;lcd.c:119: LCD_wait_ready();
;     genCall
	lcall	_LCD_wait_ready
;lcd.c:120: LCD_write_cmd (0x01);
;     genCall
	mov	dpl,#0x01
	lcall	_LCD_write_cmd
;lcd.c:121: LCD_wait_ready();
;     genCall
	lcall	_LCD_wait_ready
;lcd.c:122: LCD_ctl_reg = 0x00;		// initialize control-lines
;     genAssign
	mov	dptr,#_LCD_ctl_reg
;	Peephole 181	changed mov to clr
	clr	a
	movx	@dptr,a
00101$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'LCD_write_line'
;------------------------------------------------------------
;line                      Allocated with name '_LCD_write_line_PARM_2'
;str                       Allocated with name '_LCD_write_line_str_1_1'
;nr                        Allocated with name '_LCD_write_line_nr_1_1'
;------------------------------------------------------------
;lcd.c:125: void LCD_write_line(char *str,unsigned char line)
;	-----------------------------------------
;	 function LCD_write_line
;	-----------------------------------------
_LCD_write_line:
;     genReceive
	mov	r2,b
	mov	r3,dph
	mov	a,dpl
	mov	dptr,#_LCD_write_line_str_1_1
	movx	@dptr,a
	inc	dptr
	mov	a,r3
	movx	@dptr,a
	inc	dptr
	mov	a,r2
	movx	@dptr,a
;lcd.c:128: if (line==0) LCD_write_cmd (0x80);	// DDRAM pointer 0   (first line)
;     genAssign
	mov	dptr,#_LCD_write_line_PARM_2
	movx	a,@dptr
;     genCmpEq
;	Peephole 115.b	jump optimization
	mov	r2,a
	jz	00120$
00119$:
;	Peephole 112.b	changed ljmp to sjmp
	sjmp	00102$
00120$:
;     genCall
	mov	dpl,#0x80
	lcall	_LCD_write_cmd
;	Peephole 112.b	changed ljmp to sjmp
	sjmp	00116$
00102$:
;lcd.c:129: else LCD_write_cmd (0xc0);			// DDRAM pointer x40 (line nr 1)
;     genCall
	mov	dpl,#0xC0
	lcall	_LCD_write_cmd
;lcd.c:130: while ((*str!=0)&&(nr<16)) {LCD_write_dat (*str++);nr++;} // write to the LCD-data register as
00116$:
;     genAssign
	mov	dptr,#_LCD_write_line_str_1_1
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
;     genAssign
	mov	r5,#0x00
00105$:
;     genPointerGet
;     genGenPointerGet
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
;     genCmpEq
;	Peephole 112.b	changed ljmp to sjmp
;	Peephole 115.b	jump optimization
	mov	r6,a
	jz	00118$
00121$:
;     genCmpLt
;     genCmp
	cjne	r5,#0x10,00122$
00122$:
;     genIfxJump
;	Peephole 108	removed ljmp by inverse jump logic
	jnc	00118$
00123$:
;     genAssign
;     genPlus
;     genPlusIncr
	inc	r2
	cjne	r2,#0x00,00124$
	inc	r3
00124$:
;     genAssign
	mov	dptr,#_LCD_write_line_str_1_1
	mov	a,r2
	movx	@dptr,a
	inc	dptr
	mov	a,r3
	movx	@dptr,a
	inc	dptr
	mov	a,r4
	movx	@dptr,a
;     genCall
	mov	dpl,r6
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	lcall	_LCD_write_dat
	pop	ar5
	pop	ar4
	pop	ar3
	pop	ar2
;     genPlus
;     genPlusIncr
	inc	r5
;lcd.c:132: while (nr++<16) {LCD_write_dat (' ');} // fill the rest of the line with ' '
;	Peephole 112.b	changed ljmp to sjmp
	sjmp	00105$
00118$:
;     genAssign
	mov	dptr,#_LCD_write_line_str_1_1
	mov	a,r2
	movx	@dptr,a
	inc	dptr
	mov	a,r3
	movx	@dptr,a
	inc	dptr
	mov	a,r4
	movx	@dptr,a
;     genAssign
	mov	ar2,r5
00108$:
;     genAssign
	mov	ar3,r2
;     genPlus
;     genPlusIncr
	inc	r2
;     genCmpLt
;     genCmp
	cjne	r3,#0x10,00125$
00125$:
;     genIfxJump
;	Peephole 108	removed ljmp by inverse jump logic
	jnc	00111$
00126$:
;     genCall
	mov	dpl,#0x20
	push	ar2
	lcall	_LCD_write_dat
	pop	ar2
;	Peephole 112.b	changed ljmp to sjmp
	sjmp	00108$
00111$:
	ret
	.area CSEG    (CODE)
	.area XINIT   (CODE)
