                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : FreeWare ANSI-C Compiler
                              3 ; Version 2.5.0 #1020 (May  8 2005)
                              4 ; This file generated Mon May 08 16:15:30 2006
                              5 ;--------------------------------------------------------
                              6 	.module lcd
                              7 	.optsdcc -mmcs51 --model-large
                              8 	
                              9 ;--------------------------------------------------------
                             10 ; Public variables in this module
                             11 ;--------------------------------------------------------
                             12 	.globl _LCD_write_line
                             13 	.globl _LCD_write_cmd
                             14 	.globl _LCD_wait_ready
                             15 	.globl _LCD_write_dat
                             16 	.globl _LCD_wait
                             17 	.globl _LCD_write_line_PARM_2
                             18 	.globl _LCD_ctl_reg
                             19 	.globl _LCD_init
                             20 ;--------------------------------------------------------
                             21 ; special function registers
                             22 ;--------------------------------------------------------
                             23 	.area RSEG    (DATA)
                             24 ;--------------------------------------------------------
                             25 ; special function bits 
                             26 ;--------------------------------------------------------
                             27 	.area RSEG    (DATA)
                             28 ;--------------------------------------------------------
                             29 ; overlayable register banks 
                             30 ;--------------------------------------------------------
                             31 	.area REG_BANK_0	(REL,OVR,DATA)
   0000                      32 	.ds 8
                             33 ;--------------------------------------------------------
                             34 ; internal ram data
                             35 ;--------------------------------------------------------
                             36 	.area DSEG    (DATA)
                             37 ;--------------------------------------------------------
                             38 ; overlayable items in internal ram 
                             39 ;--------------------------------------------------------
                             40 	.area OSEG    (OVR,DATA)
                             41 ;--------------------------------------------------------
                             42 ; indirectly addressable internal ram data
                             43 ;--------------------------------------------------------
                             44 	.area ISEG    (DATA)
                             45 ;--------------------------------------------------------
                             46 ; bit data
                             47 ;--------------------------------------------------------
                             48 	.area BSEG    (BIT)
                             49 ;--------------------------------------------------------
                             50 ; paged external ram data
                             51 ;--------------------------------------------------------
                             52 	.area PSEG    (PAG,XDATA)
                             53 ;--------------------------------------------------------
                             54 ; external ram data
                             55 ;--------------------------------------------------------
                             56 	.area XSEG    (XDATA)
   004F                      57 _LCD_ctl_reg::
   004F                      58 	.ds 1
   0050                      59 _LCD_write_dat_dat_1_1::
   0050                      60 	.ds 1
   0051                      61 _LCD_wait_ready_dat_1_1::
   0051                      62 	.ds 1
   0052                      63 _LCD_write_cmd_dat_1_1::
   0052                      64 	.ds 1
   0053                      65 _LCD_write_line_PARM_2::
   0053                      66 	.ds 1
   0054                      67 _LCD_write_line_str_1_1::
   0054                      68 	.ds 3
                             69 ;--------------------------------------------------------
                             70 ; external initialized ram data
                             71 ;--------------------------------------------------------
                             72 	.area XISEG   (XDATA)
                             73 	.area CSEG    (CODE)
                             74 	.area GSINIT0 (CODE)
                             75 	.area GSINIT1 (CODE)
                             76 	.area GSINIT2 (CODE)
                             77 	.area GSINIT3 (CODE)
                             78 	.area GSINIT4 (CODE)
                             79 	.area GSINIT5 (CODE)
                             80 ;--------------------------------------------------------
                             81 ; global & static initialisations
                             82 ;--------------------------------------------------------
                             83 	.area CSEG    (CODE)
                             84 	.area GSINIT  (CODE)
                             85 	.area GSFINAL (CODE)
                             86 	.area GSINIT  (CODE)
                             87 ;--------------------------------------------------------
                             88 ; Home
                             89 ;--------------------------------------------------------
                             90 	.area HOME    (CODE)
                             91 	.area CSEG    (CODE)
                             92 ;--------------------------------------------------------
                             93 ; code
                             94 ;--------------------------------------------------------
                             95 	.area CSEG    (CODE)
                             96 ;------------------------------------------------------------
                             97 ;Allocation info for local variables in function 'LCD_wait'
                             98 ;------------------------------------------------------------
                             99 ;x                         Allocated with name '_LCD_wait_x_1_1'
                            100 ;------------------------------------------------------------
                            101 ;lcd.c:14: void LCD_wait(void)
                            102 ;	-----------------------------------------
                            103 ;	 function LCD_wait
                            104 ;	-----------------------------------------
   0838                     105 _LCD_wait:
                    0002    106 	ar2 = 0x02
                    0003    107 	ar3 = 0x03
                    0004    108 	ar4 = 0x04
                    0005    109 	ar5 = 0x05
                    0006    110 	ar6 = 0x06
                    0007    111 	ar7 = 0x07
                    0000    112 	ar0 = 0x00
                    0001    113 	ar1 = 0x01
                            114 ;lcd.c:18: while (x>0) {x--;}
                            115 ;     genAssign
   0838 7A FE               116 	mov	r2,#0xFE
   083A 7B FF               117 	mov	r3,#0xFF
   083C                     118 00101$:
                            119 ;     genIfx
   083C EA                  120 	mov	a,r2
   083D 4B                  121 	orl	a,r3
                            122 ;     genIfxJump
                            123 ;	Peephole 110	removed ljmp by inverse jump logic
   083E 60 07               124 	jz	00104$
   0840                     125 00108$:
                            126 ;     genMinus
                            127 ;     genMinusDec
                            128 ;	tail decrement optimized
   0840 1A                  129 	dec	r2
   0841 BA FF F8            130 	cjne	r2,#0xff,00101$
   0844 1B                  131 	dec	r3
                            132 ;	Peephole 112.b	changed ljmp to sjmp
   0845 80 F5               133 	sjmp	00101$
   0847                     134 00104$:
   0847 22                  135 	ret
                            136 ;------------------------------------------------------------
                            137 ;Allocation info for local variables in function 'LCD_write_dat'
                            138 ;------------------------------------------------------------
                            139 ;dat                       Allocated with name '_LCD_write_dat_dat_1_1'
                            140 ;------------------------------------------------------------
                            141 ;lcd.c:21: void LCD_write_dat (unsigned char dat)
                            142 ;	-----------------------------------------
                            143 ;	 function LCD_write_dat
                            144 ;	-----------------------------------------
   0848                     145 _LCD_write_dat:
                            146 ;     genReceive
   0848 E5 82               147 	mov	a,dpl
   084A 90 00 50            148 	mov	dptr,#_LCD_write_dat_dat_1_1
   084D F0                  149 	movx	@dptr,a
                            150 ;lcd.c:23: I2C_start();
                            151 ;     genCall
   084E 12 05 D9            152 	lcall	_I2C_start
                            153 ;lcd.c:24: I2C_send (LCD_I2C_DAT_ADR);		// select IC8 to write to LCD-data
                            154 ;     genCall
   0851 75 82 42            155 	mov	dpl,#0x42
   0854 12 06 6F            156 	lcall	_I2C_send
                            157 ;lcd.c:25: I2C_send (dat);				// put data on LCD-data lines
                            158 ;     genAssign
   0857 90 00 50            159 	mov	dptr,#_LCD_write_dat_dat_1_1
   085A E0                  160 	movx	a,@dptr
                            161 ;     genCall
                            162 ;	Peephole 244.c	loading dpl from a instead of r2
   085B FA                  163 	mov	r2,a
   085C F5 82               164 	mov	dpl,a
   085E 12 06 6F            165 	lcall	_I2C_send
                            166 ;lcd.c:26: I2C_stop  ();
                            167 ;     genCall
   0861 12 06 24            168 	lcall	_I2C_stop
                            169 ;lcd.c:27: I2C_start();
                            170 ;     genCall
   0864 12 05 D9            171 	lcall	_I2C_start
                            172 ;lcd.c:28: I2C_send (LCD_I2C_CTL_ADR);		// select IC6 to write to control lines
                            173 ;     genCall
   0867 75 82 40            174 	mov	dpl,#0x40
   086A 12 06 6F            175 	lcall	_I2C_send
                            176 ;lcd.c:29: LCD_ctl_reg |= LCD_RS;		// Registerselect '1' : select data
                            177 ;     genAssign
                            178 ;     genOr
                            179 ;	Peephole 248.a	optimized or to xdata
   086D 90 00 4F            180 	mov	dptr,#_LCD_ctl_reg
   0870 E0                  181 	movx	a,@dptr
   0871 FA                  182 	mov	r2,a
   0872 44 20               183 	orl	a,#0x20
   0874 F0                  184 	movx	@dptr,a
                            185 ;lcd.c:30: I2C_send (LCD_ctl_reg);
                            186 ;     genAssign
   0875 90 00 4F            187 	mov	dptr,#_LCD_ctl_reg
   0878 E0                  188 	movx	a,@dptr
                            189 ;     genCall
                            190 ;	Peephole 244.c	loading dpl from a instead of r2
   0879 FA                  191 	mov	r2,a
   087A F5 82               192 	mov	dpl,a
   087C 12 06 6F            193 	lcall	_I2C_send
                            194 ;lcd.c:31: LCD_ctl_reg &= ~LCD_R_Wn;	// R/Wn '0' : write
                            195 ;     genAssign
                            196 ;     genAnd
                            197 ;	Peephole 248.b	optimized and to xdata
   087F 90 00 4F            198 	mov	dptr,#_LCD_ctl_reg
   0882 E0                  199 	movx	a,@dptr
   0883 FA                  200 	mov	r2,a
   0884 54 BF               201 	anl	a,#0xBF
   0886 F0                  202 	movx	@dptr,a
                            203 ;lcd.c:32: I2C_send (LCD_ctl_reg);
                            204 ;     genAssign
   0887 90 00 4F            205 	mov	dptr,#_LCD_ctl_reg
   088A E0                  206 	movx	a,@dptr
                            207 ;     genCall
                            208 ;	Peephole 244.c	loading dpl from a instead of r2
   088B FA                  209 	mov	r2,a
   088C F5 82               210 	mov	dpl,a
   088E 12 06 6F            211 	lcall	_I2C_send
                            212 ;lcd.c:33: LCD_ctl_reg |= LCD_E;		// Enable '1' : validate cycle
                            213 ;     genAssign
                            214 ;     genOr
                            215 ;	Peephole 248.a	optimized or to xdata
   0891 90 00 4F            216 	mov	dptr,#_LCD_ctl_reg
   0894 E0                  217 	movx	a,@dptr
   0895 FA                  218 	mov	r2,a
   0896 44 80               219 	orl	a,#0x80
   0898 F0                  220 	movx	@dptr,a
                            221 ;lcd.c:34: I2C_send (LCD_ctl_reg);
                            222 ;     genAssign
   0899 90 00 4F            223 	mov	dptr,#_LCD_ctl_reg
   089C E0                  224 	movx	a,@dptr
                            225 ;     genCall
                            226 ;	Peephole 244.c	loading dpl from a instead of r2
   089D FA                  227 	mov	r2,a
   089E F5 82               228 	mov	dpl,a
   08A0 12 06 6F            229 	lcall	_I2C_send
                            230 ;lcd.c:35: LCD_ctl_reg &= ~LCD_E;		// Enable '0' : end of cycle
                            231 ;     genAssign
                            232 ;     genAnd
                            233 ;	Peephole 248.b	optimized and to xdata
   08A3 90 00 4F            234 	mov	dptr,#_LCD_ctl_reg
   08A6 E0                  235 	movx	a,@dptr
   08A7 FA                  236 	mov	r2,a
   08A8 54 7F               237 	anl	a,#0x7F
   08AA F0                  238 	movx	@dptr,a
                            239 ;lcd.c:36: I2C_send (LCD_ctl_reg);
                            240 ;     genAssign
   08AB 90 00 4F            241 	mov	dptr,#_LCD_ctl_reg
   08AE E0                  242 	movx	a,@dptr
                            243 ;     genCall
                            244 ;	Peephole 244.c	loading dpl from a instead of r2
   08AF FA                  245 	mov	r2,a
   08B0 F5 82               246 	mov	dpl,a
   08B2 12 06 6F            247 	lcall	_I2C_send
                            248 ;lcd.c:37: I2C_stop();
                            249 ;     genCall
                            250 ;	Peephole 253.b	replaced lcall/ret with ljmp
   08B5 02 06 24            251 	ljmp	_I2C_stop
                            252 ;------------------------------------------------------------
                            253 ;Allocation info for local variables in function 'LCD_wait_ready'
                            254 ;------------------------------------------------------------
                            255 ;dat                       Allocated with name '_LCD_wait_ready_dat_1_1'
                            256 ;------------------------------------------------------------
                            257 ;lcd.c:41: void LCD_wait_ready(void)
                            258 ;	-----------------------------------------
                            259 ;	 function LCD_wait_ready
                            260 ;	-----------------------------------------
   08B8                     261 _LCD_wait_ready:
                            262 ;lcd.c:44: dat = 0x80;
                            263 ;     genAssign
   08B8 90 00 51            264 	mov	dptr,#_LCD_wait_ready_dat_1_1
   08BB 74 80               265 	mov	a,#0x80
   08BD F0                  266 	movx	@dptr,a
                            267 ;lcd.c:45: while ((dat &0x80)!=0)
   08BE                     268 00101$:
                            269 ;     genAssign
   08BE 90 00 51            270 	mov	dptr,#_LCD_wait_ready_dat_1_1
   08C1 E0                  271 	movx	a,@dptr
   08C2 FA                  272 	mov	r2,a
                            273 ;     genAnd
   08C3 53 02 80            274 	anl	ar2,#0x80
                            275 ;     genCmpEq
   08C6 BA 00 01            276 	cjne	r2,#0x00,00108$
                            277 ;	Peephole 251.a	replaced ljmp to ret with ret
   08C9 22                  278 	ret
   08CA                     279 00108$:
                            280 ;lcd.c:48: I2C_start();
                            281 ;     genCall
   08CA 12 05 D9            282 	lcall	_I2C_start
                            283 ;lcd.c:49: I2C_send (LCD_I2C_DAT_ADR);		// select IC8 to write to LCD-data
                            284 ;     genCall
   08CD 75 82 42            285 	mov	dpl,#0x42
   08D0 12 06 6F            286 	lcall	_I2C_send
                            287 ;lcd.c:50: I2C_send (0xff);		// set all outputs to high (and input)
                            288 ;     genCall
   08D3 75 82 FF            289 	mov	dpl,#0xFF
   08D6 12 06 6F            290 	lcall	_I2C_send
                            291 ;lcd.c:51: I2C_stop  ();
                            292 ;     genCall
   08D9 12 06 24            293 	lcall	_I2C_stop
                            294 ;lcd.c:53: I2C_start();
                            295 ;     genCall
   08DC 12 05 D9            296 	lcall	_I2C_start
                            297 ;lcd.c:54: I2C_send (LCD_I2C_CTL_ADR);		// select IC6 to write to control lines
                            298 ;     genCall
   08DF 75 82 40            299 	mov	dpl,#0x40
   08E2 12 06 6F            300 	lcall	_I2C_send
                            301 ;lcd.c:55: LCD_ctl_reg &= ~LCD_RS;			// RS '0' : Control register
                            302 ;     genAssign
                            303 ;     genAnd
                            304 ;	Peephole 248.b	optimized and to xdata
   08E5 90 00 4F            305 	mov	dptr,#_LCD_ctl_reg
   08E8 E0                  306 	movx	a,@dptr
   08E9 FA                  307 	mov	r2,a
   08EA 54 DF               308 	anl	a,#0xDF
   08EC F0                  309 	movx	@dptr,a
                            310 ;lcd.c:56: I2C_send (LCD_ctl_reg);
                            311 ;     genAssign
   08ED 90 00 4F            312 	mov	dptr,#_LCD_ctl_reg
   08F0 E0                  313 	movx	a,@dptr
                            314 ;     genCall
                            315 ;	Peephole 244.c	loading dpl from a instead of r2
   08F1 FA                  316 	mov	r2,a
   08F2 F5 82               317 	mov	dpl,a
   08F4 12 06 6F            318 	lcall	_I2C_send
                            319 ;lcd.c:57: LCD_ctl_reg |= LCD_R_Wn;		// R/Wn '1' : read
                            320 ;     genAssign
                            321 ;     genOr
                            322 ;	Peephole 248.a	optimized or to xdata
   08F7 90 00 4F            323 	mov	dptr,#_LCD_ctl_reg
   08FA E0                  324 	movx	a,@dptr
   08FB FA                  325 	mov	r2,a
   08FC 44 40               326 	orl	a,#0x40
   08FE F0                  327 	movx	@dptr,a
                            328 ;lcd.c:58: I2C_send (LCD_ctl_reg);			// select control register to read
                            329 ;     genAssign
   08FF 90 00 4F            330 	mov	dptr,#_LCD_ctl_reg
   0902 E0                  331 	movx	a,@dptr
                            332 ;     genCall
                            333 ;	Peephole 244.c	loading dpl from a instead of r2
   0903 FA                  334 	mov	r2,a
   0904 F5 82               335 	mov	dpl,a
   0906 12 06 6F            336 	lcall	_I2C_send
                            337 ;lcd.c:59: LCD_ctl_reg |= LCD_E;			// Enable '1' : validate cycle
                            338 ;     genAssign
                            339 ;     genOr
                            340 ;	Peephole 248.a	optimized or to xdata
   0909 90 00 4F            341 	mov	dptr,#_LCD_ctl_reg
   090C E0                  342 	movx	a,@dptr
   090D FA                  343 	mov	r2,a
   090E 44 80               344 	orl	a,#0x80
   0910 F0                  345 	movx	@dptr,a
                            346 ;lcd.c:60: I2C_send (LCD_ctl_reg);
                            347 ;     genAssign
   0911 90 00 4F            348 	mov	dptr,#_LCD_ctl_reg
   0914 E0                  349 	movx	a,@dptr
                            350 ;     genCall
                            351 ;	Peephole 244.c	loading dpl from a instead of r2
   0915 FA                  352 	mov	r2,a
   0916 F5 82               353 	mov	dpl,a
   0918 12 06 6F            354 	lcall	_I2C_send
                            355 ;lcd.c:61: I2C_stop();
                            356 ;     genCall
   091B 12 06 24            357 	lcall	_I2C_stop
                            358 ;lcd.c:63: I2C_start();
                            359 ;     genCall
   091E 12 05 D9            360 	lcall	_I2C_start
                            361 ;lcd.c:64: I2C_send (LCD_I2C_DAT_ADR+1);	// select IC8 to read from LCD-data
                            362 ;     genCall
   0921 75 82 43            363 	mov	dpl,#0x43
   0924 12 06 6F            364 	lcall	_I2C_send
                            365 ;lcd.c:65: dat=I2C_get(1);					// read status
                            366 ;     genCall
   0927 75 82 01            367 	mov	dpl,#0x01
   092A 12 07 57            368 	lcall	_I2C_get
   092D E5 82               369 	mov	a,dpl
                            370 ;     genAssign
   092F 90 00 51            371 	mov	dptr,#_LCD_wait_ready_dat_1_1
   0932 F0                  372 	movx	@dptr,a
                            373 ;lcd.c:66: I2C_stop();
                            374 ;     genCall
   0933 12 06 24            375 	lcall	_I2C_stop
                            376 ;lcd.c:68: I2C_start();
                            377 ;     genCall
   0936 12 05 D9            378 	lcall	_I2C_start
                            379 ;lcd.c:69: I2C_send (LCD_I2C_CTL_ADR);		// select IC6 to write to control lines
                            380 ;     genCall
   0939 75 82 40            381 	mov	dpl,#0x40
   093C 12 06 6F            382 	lcall	_I2C_send
                            383 ;lcd.c:70: LCD_ctl_reg &= ~LCD_E;			// Enable '0' : end of cycle
                            384 ;     genAssign
                            385 ;     genAnd
                            386 ;	Peephole 248.b	optimized and to xdata
   093F 90 00 4F            387 	mov	dptr,#_LCD_ctl_reg
   0942 E0                  388 	movx	a,@dptr
   0943 FA                  389 	mov	r2,a
   0944 54 7F               390 	anl	a,#0x7F
   0946 F0                  391 	movx	@dptr,a
                            392 ;lcd.c:71: I2C_send (LCD_ctl_reg);
                            393 ;     genAssign
   0947 90 00 4F            394 	mov	dptr,#_LCD_ctl_reg
   094A E0                  395 	movx	a,@dptr
                            396 ;     genCall
                            397 ;	Peephole 244.c	loading dpl from a instead of r2
   094B FA                  398 	mov	r2,a
   094C F5 82               399 	mov	dpl,a
   094E 12 06 6F            400 	lcall	_I2C_send
                            401 ;lcd.c:72: I2C_stop();
                            402 ;     genCall
   0951 12 06 24            403 	lcall	_I2C_stop
   0954 02 08 BE            404 	ljmp	00101$
   0957                     405 00104$:
   0957 22                  406 	ret
                            407 ;------------------------------------------------------------
                            408 ;Allocation info for local variables in function 'LCD_write_cmd'
                            409 ;------------------------------------------------------------
                            410 ;dat                       Allocated with name '_LCD_write_cmd_dat_1_1'
                            411 ;------------------------------------------------------------
                            412 ;lcd.c:76: void LCD_write_cmd (unsigned char dat)
                            413 ;	-----------------------------------------
                            414 ;	 function LCD_write_cmd
                            415 ;	-----------------------------------------
   0958                     416 _LCD_write_cmd:
                            417 ;     genReceive
   0958 E5 82               418 	mov	a,dpl
   095A 90 00 52            419 	mov	dptr,#_LCD_write_cmd_dat_1_1
   095D F0                  420 	movx	@dptr,a
                            421 ;lcd.c:78: I2C_start();
                            422 ;     genCall
   095E 12 05 D9            423 	lcall	_I2C_start
                            424 ;lcd.c:79: I2C_send (LCD_I2C_DAT_ADR);		// select IC8 to write to LCD-data
                            425 ;     genCall
   0961 75 82 42            426 	mov	dpl,#0x42
   0964 12 06 6F            427 	lcall	_I2C_send
                            428 ;lcd.c:80: I2C_send (dat);			// put data on LCD-data lines
                            429 ;     genAssign
   0967 90 00 52            430 	mov	dptr,#_LCD_write_cmd_dat_1_1
   096A E0                  431 	movx	a,@dptr
                            432 ;     genCall
                            433 ;	Peephole 244.c	loading dpl from a instead of r2
   096B FA                  434 	mov	r2,a
   096C F5 82               435 	mov	dpl,a
   096E 12 06 6F            436 	lcall	_I2C_send
                            437 ;lcd.c:81: I2C_stop  ();
                            438 ;     genCall
   0971 12 06 24            439 	lcall	_I2C_stop
                            440 ;lcd.c:82: I2C_start();
                            441 ;     genCall
   0974 12 05 D9            442 	lcall	_I2C_start
                            443 ;lcd.c:83: I2C_send (LCD_I2C_CTL_ADR);		// select IC6 to write to control lines
                            444 ;     genCall
   0977 75 82 40            445 	mov	dpl,#0x40
   097A 12 06 6F            446 	lcall	_I2C_send
                            447 ;lcd.c:84: LCD_ctl_reg &= ~LCD_RS;			// RS '0' : Control register
                            448 ;     genAssign
                            449 ;     genAnd
                            450 ;	Peephole 248.b	optimized and to xdata
   097D 90 00 4F            451 	mov	dptr,#_LCD_ctl_reg
   0980 E0                  452 	movx	a,@dptr
   0981 FA                  453 	mov	r2,a
   0982 54 DF               454 	anl	a,#0xDF
   0984 F0                  455 	movx	@dptr,a
                            456 ;lcd.c:85: I2C_send (LCD_ctl_reg);
                            457 ;     genAssign
   0985 90 00 4F            458 	mov	dptr,#_LCD_ctl_reg
   0988 E0                  459 	movx	a,@dptr
                            460 ;     genCall
                            461 ;	Peephole 244.c	loading dpl from a instead of r2
   0989 FA                  462 	mov	r2,a
   098A F5 82               463 	mov	dpl,a
   098C 12 06 6F            464 	lcall	_I2C_send
                            465 ;lcd.c:86: LCD_ctl_reg &= ~LCD_R_Wn;		// R/Wn '0' : write
                            466 ;     genAssign
                            467 ;     genAnd
                            468 ;	Peephole 248.b	optimized and to xdata
   098F 90 00 4F            469 	mov	dptr,#_LCD_ctl_reg
   0992 E0                  470 	movx	a,@dptr
   0993 FA                  471 	mov	r2,a
   0994 54 BF               472 	anl	a,#0xBF
   0996 F0                  473 	movx	@dptr,a
                            474 ;lcd.c:87: I2C_send (LCD_ctl_reg);
                            475 ;     genAssign
   0997 90 00 4F            476 	mov	dptr,#_LCD_ctl_reg
   099A E0                  477 	movx	a,@dptr
                            478 ;     genCall
                            479 ;	Peephole 244.c	loading dpl from a instead of r2
   099B FA                  480 	mov	r2,a
   099C F5 82               481 	mov	dpl,a
   099E 12 06 6F            482 	lcall	_I2C_send
                            483 ;lcd.c:88: I2C_send (LCD_ctl_reg);
                            484 ;     genAssign
   09A1 90 00 4F            485 	mov	dptr,#_LCD_ctl_reg
   09A4 E0                  486 	movx	a,@dptr
                            487 ;     genCall
                            488 ;	Peephole 244.c	loading dpl from a instead of r2
   09A5 FA                  489 	mov	r2,a
   09A6 F5 82               490 	mov	dpl,a
   09A8 12 06 6F            491 	lcall	_I2C_send
                            492 ;lcd.c:89: LCD_ctl_reg |= LCD_E;		// Enable '1' : validate cycle
                            493 ;     genAssign
                            494 ;     genOr
                            495 ;	Peephole 248.a	optimized or to xdata
   09AB 90 00 4F            496 	mov	dptr,#_LCD_ctl_reg
   09AE E0                  497 	movx	a,@dptr
   09AF FA                  498 	mov	r2,a
   09B0 44 80               499 	orl	a,#0x80
   09B2 F0                  500 	movx	@dptr,a
                            501 ;lcd.c:90: I2C_send (LCD_ctl_reg);
                            502 ;     genAssign
   09B3 90 00 4F            503 	mov	dptr,#_LCD_ctl_reg
   09B6 E0                  504 	movx	a,@dptr
                            505 ;     genCall
                            506 ;	Peephole 244.c	loading dpl from a instead of r2
   09B7 FA                  507 	mov	r2,a
   09B8 F5 82               508 	mov	dpl,a
   09BA 12 06 6F            509 	lcall	_I2C_send
                            510 ;lcd.c:91: LCD_ctl_reg &= ~LCD_E;		// Enable '0' : end of cycle
                            511 ;     genAssign
                            512 ;     genAnd
                            513 ;	Peephole 248.b	optimized and to xdata
   09BD 90 00 4F            514 	mov	dptr,#_LCD_ctl_reg
   09C0 E0                  515 	movx	a,@dptr
   09C1 FA                  516 	mov	r2,a
   09C2 54 7F               517 	anl	a,#0x7F
   09C4 F0                  518 	movx	@dptr,a
                            519 ;lcd.c:92: I2C_send (LCD_ctl_reg);
                            520 ;     genAssign
   09C5 90 00 4F            521 	mov	dptr,#_LCD_ctl_reg
   09C8 E0                  522 	movx	a,@dptr
                            523 ;     genCall
                            524 ;	Peephole 244.c	loading dpl from a instead of r2
   09C9 FA                  525 	mov	r2,a
   09CA F5 82               526 	mov	dpl,a
   09CC 12 06 6F            527 	lcall	_I2C_send
                            528 ;lcd.c:93: I2C_stop();
                            529 ;     genCall
   09CF 12 06 24            530 	lcall	_I2C_stop
                            531 ;lcd.c:94: LCD_wait();		// Wait until command is executed
                            532 ;     genCall
                            533 ;	Peephole 253.b	replaced lcall/ret with ljmp
   09D2 02 08 38            534 	ljmp	_LCD_wait
                            535 ;------------------------------------------------------------
                            536 ;Allocation info for local variables in function 'LCD_init'
                            537 ;------------------------------------------------------------
                            538 ;------------------------------------------------------------
                            539 ;lcd.c:97: void LCD_init(void)
                            540 ;	-----------------------------------------
                            541 ;	 function LCD_init
                            542 ;	-----------------------------------------
   09D5                     543 _LCD_init:
                            544 ;lcd.c:102: LCD_write_cmd (0x38);	// 8-bit 1/16 Dutycycle 5x7 dots
                            545 ;     genCall
   09D5 75 82 38            546 	mov	dpl,#0x38
   09D8 12 09 58            547 	lcall	_LCD_write_cmd
                            548 ;lcd.c:103: LCD_wait_ready();
                            549 ;     genCall
   09DB 12 08 B8            550 	lcall	_LCD_wait_ready
                            551 ;lcd.c:104: LCD_write_cmd (0x38);	// 8-bit 1/16 Dutycycle 5x7 dots
                            552 ;     genCall
   09DE 75 82 38            553 	mov	dpl,#0x38
   09E1 12 09 58            554 	lcall	_LCD_write_cmd
                            555 ;lcd.c:105: LCD_wait_ready();
                            556 ;     genCall
   09E4 12 08 B8            557 	lcall	_LCD_wait_ready
                            558 ;lcd.c:108: LCD_write_cmd (0x0c);	
                            559 ;     genCall
   09E7 75 82 0C            560 	mov	dpl,#0x0C
   09EA 12 09 58            561 	lcall	_LCD_write_cmd
                            562 ;lcd.c:109: LCD_wait_ready();
                            563 ;     genCall
   09ED 12 08 B8            564 	lcall	_LCD_wait_ready
                            565 ;lcd.c:110: LCD_write_cmd (0x02);	// Undo shift
                            566 ;     genCall
   09F0 75 82 02            567 	mov	dpl,#0x02
   09F3 12 09 58            568 	lcall	_LCD_write_cmd
                            569 ;lcd.c:111: LCD_wait_ready();
                            570 ;     genCall
   09F6 12 08 B8            571 	lcall	_LCD_wait_ready
                            572 ;lcd.c:112: LCD_write_cmd (0x06);	// Cursor shifts right
                            573 ;     genCall
   09F9 75 82 06            574 	mov	dpl,#0x06
   09FC 12 09 58            575 	lcall	_LCD_write_cmd
                            576 ;lcd.c:113: LCD_wait_ready();
                            577 ;     genCall
   09FF 12 08 B8            578 	lcall	_LCD_wait_ready
                            579 ;lcd.c:114: LCD_write_cmd (0x0c);	// Display ON, cursor ON, blink OFF
                            580 ;     genCall
   0A02 75 82 0C            581 	mov	dpl,#0x0C
   0A05 12 09 58            582 	lcall	_LCD_write_cmd
                            583 ;lcd.c:115: LCD_wait_ready();
                            584 ;     genCall
   0A08 12 08 B8            585 	lcall	_LCD_wait_ready
                            586 ;lcd.c:116: LCD_write_cmd (0x40);	// CGRAM pointer 0
                            587 ;     genCall
   0A0B 75 82 40            588 	mov	dpl,#0x40
   0A0E 12 09 58            589 	lcall	_LCD_write_cmd
                            590 ;lcd.c:117: LCD_wait_ready();
                            591 ;     genCall
   0A11 12 08 B8            592 	lcall	_LCD_wait_ready
                            593 ;lcd.c:118: LCD_write_cmd (0x80);	// DDRAM pointer 0
                            594 ;     genCall
   0A14 75 82 80            595 	mov	dpl,#0x80
   0A17 12 09 58            596 	lcall	_LCD_write_cmd
                            597 ;lcd.c:119: LCD_wait_ready();
                            598 ;     genCall
   0A1A 12 08 B8            599 	lcall	_LCD_wait_ready
                            600 ;lcd.c:120: LCD_write_cmd (0x01);
                            601 ;     genCall
   0A1D 75 82 01            602 	mov	dpl,#0x01
   0A20 12 09 58            603 	lcall	_LCD_write_cmd
                            604 ;lcd.c:121: LCD_wait_ready();
                            605 ;     genCall
   0A23 12 08 B8            606 	lcall	_LCD_wait_ready
                            607 ;lcd.c:122: LCD_ctl_reg = 0x00;		// initialize control-lines
                            608 ;     genAssign
   0A26 90 00 4F            609 	mov	dptr,#_LCD_ctl_reg
                            610 ;	Peephole 181	changed mov to clr
   0A29 E4                  611 	clr	a
   0A2A F0                  612 	movx	@dptr,a
   0A2B                     613 00101$:
   0A2B 22                  614 	ret
                            615 ;------------------------------------------------------------
                            616 ;Allocation info for local variables in function 'LCD_write_line'
                            617 ;------------------------------------------------------------
                            618 ;line                      Allocated with name '_LCD_write_line_PARM_2'
                            619 ;str                       Allocated with name '_LCD_write_line_str_1_1'
                            620 ;nr                        Allocated with name '_LCD_write_line_nr_1_1'
                            621 ;------------------------------------------------------------
                            622 ;lcd.c:125: void LCD_write_line(char *str,unsigned char line)
                            623 ;	-----------------------------------------
                            624 ;	 function LCD_write_line
                            625 ;	-----------------------------------------
   0A2C                     626 _LCD_write_line:
                            627 ;     genReceive
   0A2C AA F0               628 	mov	r2,b
   0A2E AB 83               629 	mov	r3,dph
   0A30 E5 82               630 	mov	a,dpl
   0A32 90 00 54            631 	mov	dptr,#_LCD_write_line_str_1_1
   0A35 F0                  632 	movx	@dptr,a
   0A36 A3                  633 	inc	dptr
   0A37 EB                  634 	mov	a,r3
   0A38 F0                  635 	movx	@dptr,a
   0A39 A3                  636 	inc	dptr
   0A3A EA                  637 	mov	a,r2
   0A3B F0                  638 	movx	@dptr,a
                            639 ;lcd.c:128: if (line==0) LCD_write_cmd (0x80);	// DDRAM pointer 0   (first line)
                            640 ;     genAssign
   0A3C 90 00 53            641 	mov	dptr,#_LCD_write_line_PARM_2
   0A3F E0                  642 	movx	a,@dptr
                            643 ;     genCmpEq
                            644 ;	Peephole 115.b	jump optimization
   0A40 FA                  645 	mov	r2,a
   0A41 60 02               646 	jz	00120$
   0A43                     647 00119$:
                            648 ;	Peephole 112.b	changed ljmp to sjmp
   0A43 80 08               649 	sjmp	00102$
   0A45                     650 00120$:
                            651 ;     genCall
   0A45 75 82 80            652 	mov	dpl,#0x80
   0A48 12 09 58            653 	lcall	_LCD_write_cmd
                            654 ;	Peephole 112.b	changed ljmp to sjmp
   0A4B 80 06               655 	sjmp	00116$
   0A4D                     656 00102$:
                            657 ;lcd.c:129: else LCD_write_cmd (0xc0);			// DDRAM pointer x40 (line nr 1)
                            658 ;     genCall
   0A4D 75 82 C0            659 	mov	dpl,#0xC0
   0A50 12 09 58            660 	lcall	_LCD_write_cmd
                            661 ;lcd.c:130: while ((*str!=0)&&(nr<16)) {LCD_write_dat (*str++);nr++;} // write to the LCD-data register as
   0A53                     662 00116$:
                            663 ;     genAssign
   0A53 90 00 54            664 	mov	dptr,#_LCD_write_line_str_1_1
   0A56 E0                  665 	movx	a,@dptr
   0A57 FA                  666 	mov	r2,a
   0A58 A3                  667 	inc	dptr
   0A59 E0                  668 	movx	a,@dptr
   0A5A FB                  669 	mov	r3,a
   0A5B A3                  670 	inc	dptr
   0A5C E0                  671 	movx	a,@dptr
   0A5D FC                  672 	mov	r4,a
                            673 ;     genAssign
   0A5E 7D 00               674 	mov	r5,#0x00
   0A60                     675 00105$:
                            676 ;     genPointerGet
                            677 ;     genGenPointerGet
   0A60 8A 82               678 	mov	dpl,r2
   0A62 8B 83               679 	mov	dph,r3
   0A64 8C F0               680 	mov	b,r4
   0A66 12 18 44            681 	lcall	__gptrget
                            682 ;     genCmpEq
                            683 ;	Peephole 112.b	changed ljmp to sjmp
                            684 ;	Peephole 115.b	jump optimization
   0A69 FE                  685 	mov	r6,a
   0A6A 60 2D               686 	jz	00118$
   0A6C                     687 00121$:
                            688 ;     genCmpLt
                            689 ;     genCmp
   0A6C BD 10 00            690 	cjne	r5,#0x10,00122$
   0A6F                     691 00122$:
                            692 ;     genIfxJump
                            693 ;	Peephole 108	removed ljmp by inverse jump logic
   0A6F 50 28               694 	jnc	00118$
   0A71                     695 00123$:
                            696 ;     genAssign
                            697 ;     genPlus
                            698 ;     genPlusIncr
   0A71 0A                  699 	inc	r2
   0A72 BA 00 01            700 	cjne	r2,#0x00,00124$
   0A75 0B                  701 	inc	r3
   0A76                     702 00124$:
                            703 ;     genAssign
   0A76 90 00 54            704 	mov	dptr,#_LCD_write_line_str_1_1
   0A79 EA                  705 	mov	a,r2
   0A7A F0                  706 	movx	@dptr,a
   0A7B A3                  707 	inc	dptr
   0A7C EB                  708 	mov	a,r3
   0A7D F0                  709 	movx	@dptr,a
   0A7E A3                  710 	inc	dptr
   0A7F EC                  711 	mov	a,r4
   0A80 F0                  712 	movx	@dptr,a
                            713 ;     genCall
   0A81 8E 82               714 	mov	dpl,r6
   0A83 C0 02               715 	push	ar2
   0A85 C0 03               716 	push	ar3
   0A87 C0 04               717 	push	ar4
   0A89 C0 05               718 	push	ar5
   0A8B 12 08 48            719 	lcall	_LCD_write_dat
   0A8E D0 05               720 	pop	ar5
   0A90 D0 04               721 	pop	ar4
   0A92 D0 03               722 	pop	ar3
   0A94 D0 02               723 	pop	ar2
                            724 ;     genPlus
                            725 ;     genPlusIncr
   0A96 0D                  726 	inc	r5
                            727 ;lcd.c:132: while (nr++<16) {LCD_write_dat (' ');} // fill the rest of the line with ' '
                            728 ;	Peephole 112.b	changed ljmp to sjmp
   0A97 80 C7               729 	sjmp	00105$
   0A99                     730 00118$:
                            731 ;     genAssign
   0A99 90 00 54            732 	mov	dptr,#_LCD_write_line_str_1_1
   0A9C EA                  733 	mov	a,r2
   0A9D F0                  734 	movx	@dptr,a
   0A9E A3                  735 	inc	dptr
   0A9F EB                  736 	mov	a,r3
   0AA0 F0                  737 	movx	@dptr,a
   0AA1 A3                  738 	inc	dptr
   0AA2 EC                  739 	mov	a,r4
   0AA3 F0                  740 	movx	@dptr,a
                            741 ;     genAssign
   0AA4 8D 02               742 	mov	ar2,r5
   0AA6                     743 00108$:
                            744 ;     genAssign
   0AA6 8A 03               745 	mov	ar3,r2
                            746 ;     genPlus
                            747 ;     genPlusIncr
   0AA8 0A                  748 	inc	r2
                            749 ;     genCmpLt
                            750 ;     genCmp
   0AA9 BB 10 00            751 	cjne	r3,#0x10,00125$
   0AAC                     752 00125$:
                            753 ;     genIfxJump
                            754 ;	Peephole 108	removed ljmp by inverse jump logic
   0AAC 50 0C               755 	jnc	00111$
   0AAE                     756 00126$:
                            757 ;     genCall
   0AAE 75 82 20            758 	mov	dpl,#0x20
   0AB1 C0 02               759 	push	ar2
   0AB3 12 08 48            760 	lcall	_LCD_write_dat
   0AB6 D0 02               761 	pop	ar2
                            762 ;	Peephole 112.b	changed ljmp to sjmp
   0AB8 80 EC               763 	sjmp	00108$
   0ABA                     764 00111$:
   0ABA 22                  765 	ret
                            766 	.area CSEG    (CODE)
                            767 	.area XINIT   (CODE)
