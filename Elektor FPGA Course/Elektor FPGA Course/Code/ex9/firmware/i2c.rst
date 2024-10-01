                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : FreeWare ANSI-C Compiler
                              3 ; Version 2.5.0 #1020 (May  8 2005)
                              4 ; This file generated Mon May 08 16:15:30 2006
                              5 ;--------------------------------------------------------
                              6 	.module i2c
                              7 	.optsdcc -mmcs51 --model-large
                              8 	
                              9 ;--------------------------------------------------------
                             10 ; Public variables in this module
                             11 ;--------------------------------------------------------
                             12 	.globl _I2C_get
                             13 	.globl _I2C_send
                             14 	.globl _I2C_delay
                             15 	.globl _I2C_init
                             16 	.globl _P0
                             17 	.globl _prev_P0
                             18 	.globl _I2C_start
                             19 	.globl _I2C_stop
                             20 ;--------------------------------------------------------
                             21 ; special function registers
                             22 ;--------------------------------------------------------
                             23 	.area RSEG    (DATA)
                    0080     24 _P0	=	0x0080
                             25 ;--------------------------------------------------------
                             26 ; special function bits 
                             27 ;--------------------------------------------------------
                             28 	.area RSEG    (DATA)
                             29 ;--------------------------------------------------------
                             30 ; overlayable register banks 
                             31 ;--------------------------------------------------------
                             32 	.area REG_BANK_0	(REL,OVR,DATA)
   0000                      33 	.ds 8
                             34 ;--------------------------------------------------------
                             35 ; internal ram data
                             36 ;--------------------------------------------------------
                             37 	.area DSEG    (DATA)
                             38 ;--------------------------------------------------------
                             39 ; overlayable items in internal ram 
                             40 ;--------------------------------------------------------
                             41 	.area OSEG    (OVR,DATA)
                             42 ;--------------------------------------------------------
                             43 ; indirectly addressable internal ram data
                             44 ;--------------------------------------------------------
                             45 	.area ISEG    (DATA)
                             46 ;--------------------------------------------------------
                             47 ; bit data
                             48 ;--------------------------------------------------------
                             49 	.area BSEG    (BIT)
                             50 ;--------------------------------------------------------
                             51 ; paged external ram data
                             52 ;--------------------------------------------------------
                             53 	.area PSEG    (PAG,XDATA)
                             54 ;--------------------------------------------------------
                             55 ; external ram data
                             56 ;--------------------------------------------------------
                             57 	.area XSEG    (XDATA)
   004A                      58 _prev_P0::
   004A                      59 	.ds 1
   004B                      60 _I2C_send_dat_1_1::
   004B                      61 	.ds 1
   004C                      62 _I2C_send_ack_1_1::
   004C                      63 	.ds 1
   004D                      64 _I2C_get_ack_1_1::
   004D                      65 	.ds 1
   004E                      66 _I2C_get_dat_1_1::
   004E                      67 	.ds 1
                             68 ;--------------------------------------------------------
                             69 ; external initialized ram data
                             70 ;--------------------------------------------------------
                             71 	.area XISEG   (XDATA)
                             72 	.area CSEG    (CODE)
                             73 	.area GSINIT0 (CODE)
                             74 	.area GSINIT1 (CODE)
                             75 	.area GSINIT2 (CODE)
                             76 	.area GSINIT3 (CODE)
                             77 	.area GSINIT4 (CODE)
                             78 	.area GSINIT5 (CODE)
                             79 ;--------------------------------------------------------
                             80 ; global & static initialisations
                             81 ;--------------------------------------------------------
                             82 	.area CSEG    (CODE)
                             83 	.area GSINIT  (CODE)
                             84 	.area GSFINAL (CODE)
                             85 	.area GSINIT  (CODE)
                             86 ;--------------------------------------------------------
                             87 ; Home
                             88 ;--------------------------------------------------------
                             89 	.area HOME    (CODE)
                             90 	.area CSEG    (CODE)
                             91 ;--------------------------------------------------------
                             92 ; code
                             93 ;--------------------------------------------------------
                             94 	.area CSEG    (CODE)
                             95 ;------------------------------------------------------------
                             96 ;Allocation info for local variables in function 'I2C_init'
                             97 ;------------------------------------------------------------
                             98 ;------------------------------------------------------------
                             99 ;i2c.c:20: void I2C_init (void)
                            100 ;	-----------------------------------------
                            101 ;	 function I2C_init
                            102 ;	-----------------------------------------
   05BC                     103 _I2C_init:
                    0002    104 	ar2 = 0x02
                    0003    105 	ar3 = 0x03
                    0004    106 	ar4 = 0x04
                    0005    107 	ar5 = 0x05
                    0006    108 	ar6 = 0x06
                    0007    109 	ar7 = 0x07
                    0000    110 	ar0 = 0x00
                    0001    111 	ar1 = 0x01
                            112 ;i2c.c:22: prev_P0=0xff;			// set the port P0 to a know state
                            113 ;     genAssign
   05BC 90 00 4A            114 	mov	dptr,#_prev_P0
   05BF 74 FF               115 	mov	a,#0xFF
   05C1 F0                  116 	movx	@dptr,a
                            117 ;i2c.c:23: P0=prev_P0;
                            118 ;     genAssign
   05C2 75 80 FF            119 	mov	_P0,#0xFF
                            120 ;i2c.c:24: I2C_start();			// reset the I2C-bus.
                            121 ;     genCall
   05C5 12 05 D9            122 	lcall	_I2C_start
                            123 ;i2c.c:25: I2C_stop();
                            124 ;     genCall
                            125 ;	Peephole 253.b	replaced lcall/ret with ljmp
   05C8 02 06 24            126 	ljmp	_I2C_stop
                            127 ;------------------------------------------------------------
                            128 ;Allocation info for local variables in function 'I2C_delay'
                            129 ;------------------------------------------------------------
                            130 ;x                         Allocated with name '_I2C_delay_x_1_1'
                            131 ;------------------------------------------------------------
                            132 ;i2c.c:28: void I2C_delay(void)
                            133 ;	-----------------------------------------
                            134 ;	 function I2C_delay
                            135 ;	-----------------------------------------
   05CB                     136 _I2C_delay:
                            137 ;i2c.c:31: for (x=0;x<50;x++){};
                            138 ;     genAssign
   05CB 7A 32               139 	mov	r2,#0x32
   05CD 7B 00               140 	mov	r3,#0x00
   05CF                     141 00103$:
                            142 ;     genDjnz
                            143 ;     genMinus
                            144 ;     genMinusDec
   05CF 1A                  145 	dec	r2
   05D0 BA FF 01            146 	cjne	r2,#0xff,00108$
   05D3 1B                  147 	dec	r3
   05D4                     148 00108$:
                            149 ;     genIfx
   05D4 EA                  150 	mov	a,r2
   05D5 4B                  151 	orl	a,r3
                            152 ;     genIfxJump
                            153 ;	Peephole 109	removed ljmp by inverse jump logic
   05D6 70 F7               154 	jnz	00103$
   05D8                     155 00109$:
   05D8                     156 00104$:
   05D8 22                  157 	ret
                            158 ;------------------------------------------------------------
                            159 ;Allocation info for local variables in function 'I2C_start'
                            160 ;------------------------------------------------------------
                            161 ;------------------------------------------------------------
                            162 ;i2c.c:34: void I2C_start(void)
                            163 ;	-----------------------------------------
                            164 ;	 function I2C_start
                            165 ;	-----------------------------------------
   05D9                     166 _I2C_start:
                            167 ;i2c.c:36: SDA_HIGH		
                            168 ;     genAssign
                            169 ;     genOr
                            170 ;	Peephole 248.a	optimized or to xdata
   05D9 90 00 4A            171 	mov	dptr,#_prev_P0
   05DC E0                  172 	movx	a,@dptr
   05DD FA                  173 	mov	r2,a
   05DE 44 01               174 	orl	a,#0x01
   05E0 F0                  175 	movx	@dptr,a
                            176 ;     genAssign
   05E1 90 00 4A            177 	mov	dptr,#_prev_P0
   05E4 E0                  178 	movx	a,@dptr
   05E5 F5 80               179 	mov	_P0,a
                            180 ;     genCall
   05E7 12 05 CB            181 	lcall	_I2C_delay
                            182 ;i2c.c:37: SCL_HIGH
                            183 ;     genAssign
                            184 ;     genOr
                            185 ;	Peephole 248.a	optimized or to xdata
   05EA 90 00 4A            186 	mov	dptr,#_prev_P0
   05ED E0                  187 	movx	a,@dptr
   05EE FA                  188 	mov	r2,a
   05EF 44 02               189 	orl	a,#0x02
   05F1 F0                  190 	movx	@dptr,a
                            191 ;     genAssign
   05F2 90 00 4A            192 	mov	dptr,#_prev_P0
   05F5 E0                  193 	movx	a,@dptr
   05F6 F5 80               194 	mov	_P0,a
   05F8                     195 00101$:
                            196 ;     genAnd
   05F8 74 80               197 	mov	a,#0x80
   05FA 55 80               198 	anl	a,_P0
                            199 ;     genCmpEq
                            200 ;	Peephole 112.b	changed ljmp to sjmp
                            201 ;	Peephole 115.b	jump optimization
   05FC FA                  202 	mov	r2,a
   05FD 60 F9               203 	jz	00101$
   05FF                     204 00108$:
                            205 ;     genCall
   05FF 12 05 CB            206 	lcall	_I2C_delay
                            207 ;i2c.c:38: SDA_LOW
                            208 ;     genAssign
                            209 ;     genAnd
                            210 ;	Peephole 248.b	optimized and to xdata
   0602 90 00 4A            211 	mov	dptr,#_prev_P0
   0605 E0                  212 	movx	a,@dptr
   0606 FA                  213 	mov	r2,a
   0607 54 FE               214 	anl	a,#0xFE
   0609 F0                  215 	movx	@dptr,a
                            216 ;     genAssign
   060A 90 00 4A            217 	mov	dptr,#_prev_P0
   060D E0                  218 	movx	a,@dptr
   060E F5 80               219 	mov	_P0,a
                            220 ;     genCall
   0610 12 05 CB            221 	lcall	_I2C_delay
                            222 ;i2c.c:39: SCL_LOW
                            223 ;     genAssign
                            224 ;     genAnd
                            225 ;	Peephole 248.b	optimized and to xdata
   0613 90 00 4A            226 	mov	dptr,#_prev_P0
   0616 E0                  227 	movx	a,@dptr
   0617 FA                  228 	mov	r2,a
   0618 54 FD               229 	anl	a,#0xFD
   061A F0                  230 	movx	@dptr,a
                            231 ;     genAssign
   061B 90 00 4A            232 	mov	dptr,#_prev_P0
   061E E0                  233 	movx	a,@dptr
   061F F5 80               234 	mov	_P0,a
                            235 ;     genCall
                            236 ;	Peephole 253.b	replaced lcall/ret with ljmp
   0621 02 05 CB            237 	ljmp	_I2C_delay
                            238 ;------------------------------------------------------------
                            239 ;Allocation info for local variables in function 'I2C_stop'
                            240 ;------------------------------------------------------------
                            241 ;------------------------------------------------------------
                            242 ;i2c.c:42: void I2C_stop (void)			// Assumes SCL and SDA are low at entry
                            243 ;	-----------------------------------------
                            244 ;	 function I2C_stop
                            245 ;	-----------------------------------------
   0624                     246 _I2C_stop:
                            247 ;i2c.c:44: SCL_LOW
                            248 ;     genAssign
                            249 ;     genAnd
                            250 ;	Peephole 248.b	optimized and to xdata
   0624 90 00 4A            251 	mov	dptr,#_prev_P0
   0627 E0                  252 	movx	a,@dptr
   0628 FA                  253 	mov	r2,a
   0629 54 FD               254 	anl	a,#0xFD
   062B F0                  255 	movx	@dptr,a
                            256 ;     genAssign
   062C 90 00 4A            257 	mov	dptr,#_prev_P0
   062F E0                  258 	movx	a,@dptr
   0630 F5 80               259 	mov	_P0,a
                            260 ;     genCall
   0632 12 05 CB            261 	lcall	_I2C_delay
                            262 ;i2c.c:45: SDA_LOW
                            263 ;     genAssign
                            264 ;     genAnd
                            265 ;	Peephole 248.b	optimized and to xdata
   0635 90 00 4A            266 	mov	dptr,#_prev_P0
   0638 E0                  267 	movx	a,@dptr
   0639 FA                  268 	mov	r2,a
   063A 54 FE               269 	anl	a,#0xFE
   063C F0                  270 	movx	@dptr,a
                            271 ;     genAssign
   063D 90 00 4A            272 	mov	dptr,#_prev_P0
   0640 E0                  273 	movx	a,@dptr
   0641 F5 80               274 	mov	_P0,a
                            275 ;     genCall
   0643 12 05 CB            276 	lcall	_I2C_delay
                            277 ;i2c.c:46: SCL_HIGH
                            278 ;     genAssign
                            279 ;     genOr
                            280 ;	Peephole 248.a	optimized or to xdata
   0646 90 00 4A            281 	mov	dptr,#_prev_P0
   0649 E0                  282 	movx	a,@dptr
   064A FA                  283 	mov	r2,a
   064B 44 02               284 	orl	a,#0x02
   064D F0                  285 	movx	@dptr,a
                            286 ;     genAssign
   064E 90 00 4A            287 	mov	dptr,#_prev_P0
   0651 E0                  288 	movx	a,@dptr
   0652 F5 80               289 	mov	_P0,a
   0654                     290 00101$:
                            291 ;     genAnd
   0654 74 80               292 	mov	a,#0x80
   0656 55 80               293 	anl	a,_P0
                            294 ;     genCmpEq
                            295 ;	Peephole 112.b	changed ljmp to sjmp
                            296 ;	Peephole 115.b	jump optimization
   0658 FA                  297 	mov	r2,a
   0659 60 F9               298 	jz	00101$
   065B                     299 00108$:
                            300 ;     genCall
   065B 12 05 CB            301 	lcall	_I2C_delay
                            302 ;i2c.c:47: SDA_HIGH
                            303 ;     genAssign
                            304 ;     genOr
                            305 ;	Peephole 248.a	optimized or to xdata
   065E 90 00 4A            306 	mov	dptr,#_prev_P0
   0661 E0                  307 	movx	a,@dptr
   0662 FA                  308 	mov	r2,a
   0663 44 01               309 	orl	a,#0x01
   0665 F0                  310 	movx	@dptr,a
                            311 ;     genAssign
   0666 90 00 4A            312 	mov	dptr,#_prev_P0
   0669 E0                  313 	movx	a,@dptr
   066A F5 80               314 	mov	_P0,a
                            315 ;     genCall
                            316 ;	Peephole 253.b	replaced lcall/ret with ljmp
   066C 02 05 CB            317 	ljmp	_I2C_delay
                            318 ;------------------------------------------------------------
                            319 ;Allocation info for local variables in function 'I2C_send'
                            320 ;------------------------------------------------------------
                            321 ;dat                       Allocated with name '_I2C_send_dat_1_1'
                            322 ;x                         Allocated with name '_I2C_send_x_1_1'
                            323 ;ack                       Allocated with name '_I2C_send_ack_1_1'
                            324 ;------------------------------------------------------------
                            325 ;i2c.c:50: unsigned char I2C_send ( unsigned char dat)
                            326 ;	-----------------------------------------
                            327 ;	 function I2C_send
                            328 ;	-----------------------------------------
   066F                     329 _I2C_send:
                            330 ;     genReceive
   066F E5 82               331 	mov	a,dpl
   0671 90 00 4B            332 	mov	dptr,#_I2C_send_dat_1_1
   0674 F0                  333 	movx	@dptr,a
                            334 ;i2c.c:53: for (x=0;x<8;x++)
                            335 ;     genAssign
   0675 7A 00               336 	mov	r2,#0x00
   0677                     337 00113$:
                            338 ;     genCmpLt
                            339 ;     genCmp
   0677 BA 08 00            340 	cjne	r2,#0x08,00127$
   067A                     341 00127$:
                            342 ;     genIfxJump
   067A 40 03               343 	jc	00128$
   067C 02 06 F3            344 	ljmp	00116$
   067F                     345 00128$:
                            346 ;i2c.c:55: if (dat & 0x80) SDA_HIGH else SDA_LOW
                            347 ;     genAssign
   067F 90 00 4B            348 	mov	dptr,#_I2C_send_dat_1_1
   0682 E0                  349 	movx	a,@dptr
                            350 ;     genAnd
                            351 ;	Peephole 105	removed redundant mov
   0683 FB                  352 	mov	r3,a
                            353 ;     genIfxJump
                            354 ;	Peephole 111	removed ljmp by inverse jump logic
   0684 30 E7 17            355 	jnb	acc.7,00102$
   0687                     356 00129$:
                            357 ;     genAssign
                            358 ;     genOr
                            359 ;	Peephole 248.a	optimized or to xdata
   0687 90 00 4A            360 	mov	dptr,#_prev_P0
   068A E0                  361 	movx	a,@dptr
   068B FB                  362 	mov	r3,a
   068C 44 01               363 	orl	a,#0x01
   068E F0                  364 	movx	@dptr,a
                            365 ;     genAssign
   068F 90 00 4A            366 	mov	dptr,#_prev_P0
   0692 E0                  367 	movx	a,@dptr
   0693 F5 80               368 	mov	_P0,a
                            369 ;     genCall
   0695 C0 02               370 	push	ar2
   0697 12 05 CB            371 	lcall	_I2C_delay
   069A D0 02               372 	pop	ar2
                            373 ;	Peephole 112.b	changed ljmp to sjmp
   069C 80 15               374 	sjmp	00103$
   069E                     375 00102$:
                            376 ;     genAssign
                            377 ;     genAnd
                            378 ;	Peephole 248.b	optimized and to xdata
   069E 90 00 4A            379 	mov	dptr,#_prev_P0
   06A1 E0                  380 	movx	a,@dptr
   06A2 FB                  381 	mov	r3,a
   06A3 54 FE               382 	anl	a,#0xFE
   06A5 F0                  383 	movx	@dptr,a
                            384 ;     genAssign
   06A6 90 00 4A            385 	mov	dptr,#_prev_P0
   06A9 E0                  386 	movx	a,@dptr
   06AA F5 80               387 	mov	_P0,a
                            388 ;     genCall
   06AC C0 02               389 	push	ar2
   06AE 12 05 CB            390 	lcall	_I2C_delay
   06B1 D0 02               391 	pop	ar2
   06B3                     392 00103$:
                            393 ;i2c.c:56: SCL_HIGH
                            394 ;     genAssign
                            395 ;     genOr
                            396 ;	Peephole 248.a	optimized or to xdata
   06B3 90 00 4A            397 	mov	dptr,#_prev_P0
   06B6 E0                  398 	movx	a,@dptr
   06B7 FB                  399 	mov	r3,a
   06B8 44 02               400 	orl	a,#0x02
   06BA F0                  401 	movx	@dptr,a
                            402 ;     genAssign
   06BB 90 00 4A            403 	mov	dptr,#_prev_P0
   06BE E0                  404 	movx	a,@dptr
   06BF F5 80               405 	mov	_P0,a
   06C1                     406 00104$:
                            407 ;     genAnd
   06C1 74 80               408 	mov	a,#0x80
   06C3 55 80               409 	anl	a,_P0
                            410 ;     genCmpEq
                            411 ;	Peephole 112.b	changed ljmp to sjmp
                            412 ;	Peephole 115.b	jump optimization
   06C5 FB                  413 	mov	r3,a
   06C6 60 F9               414 	jz	00104$
   06C8                     415 00130$:
                            416 ;     genCall
   06C8 C0 02               417 	push	ar2
   06CA 12 05 CB            418 	lcall	_I2C_delay
   06CD D0 02               419 	pop	ar2
                            420 ;i2c.c:57: SCL_LOW
                            421 ;     genAssign
                            422 ;     genAnd
                            423 ;	Peephole 248.b	optimized and to xdata
   06CF 90 00 4A            424 	mov	dptr,#_prev_P0
   06D2 E0                  425 	movx	a,@dptr
   06D3 FB                  426 	mov	r3,a
   06D4 54 FD               427 	anl	a,#0xFD
   06D6 F0                  428 	movx	@dptr,a
                            429 ;     genAssign
   06D7 90 00 4A            430 	mov	dptr,#_prev_P0
   06DA E0                  431 	movx	a,@dptr
   06DB F5 80               432 	mov	_P0,a
                            433 ;     genCall
   06DD C0 02               434 	push	ar2
   06DF 12 05 CB            435 	lcall	_I2C_delay
   06E2 D0 02               436 	pop	ar2
                            437 ;i2c.c:58: dat = dat <<1;
                            438 ;     genAssign
   06E4 90 00 4B            439 	mov	dptr,#_I2C_send_dat_1_1
   06E7 E0                  440 	movx	a,@dptr
                            441 ;     genLeftShift
                            442 ;     genLeftShiftLiteral
                            443 ;     genlshOne
                            444 ;	Peephole 105	removed redundant mov
                            445 ;     genAssign
                            446 ;	Peephole 100	removed redundant mov
                            447 ;	Peephole 204	removed redundant mov
   06E8 25 E0               448 	add	a,acc
   06EA FB                  449 	mov	r3,a
   06EB 90 00 4B            450 	mov	dptr,#_I2C_send_dat_1_1
   06EE F0                  451 	movx	@dptr,a
                            452 ;i2c.c:53: for (x=0;x<8;x++)
                            453 ;     genPlus
                            454 ;     genPlusIncr
   06EF 0A                  455 	inc	r2
   06F0 02 06 77            456 	ljmp	00113$
   06F3                     457 00116$:
                            458 ;i2c.c:60: SDA_HIGH
                            459 ;     genAssign
                            460 ;     genOr
                            461 ;	Peephole 248.a	optimized or to xdata
   06F3 90 00 4A            462 	mov	dptr,#_prev_P0
   06F6 E0                  463 	movx	a,@dptr
   06F7 FA                  464 	mov	r2,a
   06F8 44 01               465 	orl	a,#0x01
   06FA F0                  466 	movx	@dptr,a
                            467 ;     genAssign
   06FB 90 00 4A            468 	mov	dptr,#_prev_P0
   06FE E0                  469 	movx	a,@dptr
   06FF F5 80               470 	mov	_P0,a
                            471 ;     genCall
   0701 12 05 CB            472 	lcall	_I2C_delay
                            473 ;i2c.c:61: SCL_HIGH
                            474 ;     genAssign
                            475 ;     genOr
                            476 ;	Peephole 248.a	optimized or to xdata
   0704 90 00 4A            477 	mov	dptr,#_prev_P0
   0707 E0                  478 	movx	a,@dptr
   0708 FA                  479 	mov	r2,a
   0709 44 02               480 	orl	a,#0x02
   070B F0                  481 	movx	@dptr,a
                            482 ;     genAssign
   070C 90 00 4A            483 	mov	dptr,#_prev_P0
   070F E0                  484 	movx	a,@dptr
   0710 F5 80               485 	mov	_P0,a
   0712                     486 00107$:
                            487 ;     genAnd
   0712 74 80               488 	mov	a,#0x80
   0714 55 80               489 	anl	a,_P0
                            490 ;     genCmpEq
                            491 ;	Peephole 112.b	changed ljmp to sjmp
                            492 ;	Peephole 115.b	jump optimization
   0716 FA                  493 	mov	r2,a
   0717 60 F9               494 	jz	00107$
   0719                     495 00131$:
                            496 ;     genCall
   0719 12 05 CB            497 	lcall	_I2C_delay
                            498 ;i2c.c:62: ack = P0;			// read the input SDA
                            499 ;     genAssign
   071C 90 00 4C            500 	mov	dptr,#_I2C_send_ack_1_1
   071F E5 80               501 	mov	a,_P0
   0721 F0                  502 	movx	@dptr,a
                            503 ;i2c.c:63: SCL_LOW
                            504 ;     genAssign
                            505 ;     genAnd
                            506 ;	Peephole 248.b	optimized and to xdata
   0722 90 00 4A            507 	mov	dptr,#_prev_P0
   0725 E0                  508 	movx	a,@dptr
   0726 FA                  509 	mov	r2,a
   0727 54 FD               510 	anl	a,#0xFD
   0729 F0                  511 	movx	@dptr,a
                            512 ;     genAssign
   072A 90 00 4A            513 	mov	dptr,#_prev_P0
   072D E0                  514 	movx	a,@dptr
   072E F5 80               515 	mov	_P0,a
                            516 ;     genCall
   0730 12 05 CB            517 	lcall	_I2C_delay
                            518 ;i2c.c:64: SDA_LOW
                            519 ;     genAssign
                            520 ;     genAnd
                            521 ;	Peephole 248.b	optimized and to xdata
   0733 90 00 4A            522 	mov	dptr,#_prev_P0
   0736 E0                  523 	movx	a,@dptr
   0737 FA                  524 	mov	r2,a
   0738 54 FE               525 	anl	a,#0xFE
   073A F0                  526 	movx	@dptr,a
                            527 ;     genAssign
   073B 90 00 4A            528 	mov	dptr,#_prev_P0
   073E E0                  529 	movx	a,@dptr
   073F F5 80               530 	mov	_P0,a
                            531 ;     genCall
   0741 12 05 CB            532 	lcall	_I2C_delay
                            533 ;i2c.c:65: if ((ack&0x40)==0) return 1; else return 0;  
                            534 ;     genAssign
   0744 90 00 4C            535 	mov	dptr,#_I2C_send_ack_1_1
   0747 E0                  536 	movx	a,@dptr
   0748 FA                  537 	mov	r2,a
                            538 ;     genAnd
   0749 53 02 40            539 	anl	ar2,#0x40
                            540 ;     genCmpEq
                            541 ;	Peephole 112.b	changed ljmp to sjmp
                            542 ;	Peephole 199	optimized misc jump sequence
   074C BA 00 04            543 	cjne	r2,#0x00,00111$
                            544 ;00132$:
                            545 ;	Peephole 200	removed redundant sjmp
   074F                     546 00133$:
                            547 ;     genRet
   074F 75 82 01            548 	mov	dpl,#0x01
                            549 ;	Peephole 112.b	changed ljmp to sjmp
                            550 ;     genRet
                            551 ;	Peephole 237.a	removed sjmp to ret
   0752 22                  552 	ret
   0753                     553 00111$:
   0753 75 82 00            554 	mov	dpl,#0x00
   0756                     555 00117$:
   0756 22                  556 	ret
                            557 ;------------------------------------------------------------
                            558 ;Allocation info for local variables in function 'I2C_get'
                            559 ;------------------------------------------------------------
                            560 ;ack                       Allocated with name '_I2C_get_ack_1_1'
                            561 ;dat                       Allocated with name '_I2C_get_dat_1_1'
                            562 ;x                         Allocated with name '_I2C_get_x_1_1'
                            563 ;------------------------------------------------------------
                            564 ;i2c.c:68: unsigned char I2C_get (unsigned char ack)
                            565 ;	-----------------------------------------
                            566 ;	 function I2C_get
                            567 ;	-----------------------------------------
   0757                     568 _I2C_get:
                            569 ;     genReceive
   0757 E5 82               570 	mov	a,dpl
   0759 90 00 4D            571 	mov	dptr,#_I2C_get_ack_1_1
   075C F0                  572 	movx	@dptr,a
                            573 ;i2c.c:71: SDA_HIGH							// SDA goes high (undriven)
                            574 ;     genAssign
                            575 ;     genOr
                            576 ;	Peephole 248.a	optimized or to xdata
   075D 90 00 4A            577 	mov	dptr,#_prev_P0
   0760 E0                  578 	movx	a,@dptr
   0761 FA                  579 	mov	r2,a
   0762 44 01               580 	orl	a,#0x01
   0764 F0                  581 	movx	@dptr,a
                            582 ;     genAssign
   0765 90 00 4A            583 	mov	dptr,#_prev_P0
   0768 E0                  584 	movx	a,@dptr
   0769 F5 80               585 	mov	_P0,a
                            586 ;     genCall
   076B 12 05 CB            587 	lcall	_I2C_delay
                            588 ;i2c.c:72: for (x=0;x<8;x++)
                            589 ;     genAssign
   076E 7A 00               590 	mov	r2,#0x00
   0770                     591 00113$:
                            592 ;     genCmpLt
                            593 ;     genCmp
   0770 BA 08 00            594 	cjne	r2,#0x08,00127$
   0773                     595 00127$:
                            596 ;     genIfxJump
                            597 ;	Peephole 108	removed ljmp by inverse jump logic
   0773 50 57               598 	jnc	00116$
   0775                     599 00128$:
                            600 ;i2c.c:74: SCL_HIGH
                            601 ;     genAssign
                            602 ;     genOr
                            603 ;	Peephole 248.a	optimized or to xdata
   0775 90 00 4A            604 	mov	dptr,#_prev_P0
   0778 E0                  605 	movx	a,@dptr
   0779 FB                  606 	mov	r3,a
   077A 44 02               607 	orl	a,#0x02
   077C F0                  608 	movx	@dptr,a
                            609 ;     genAssign
   077D 90 00 4A            610 	mov	dptr,#_prev_P0
   0780 E0                  611 	movx	a,@dptr
   0781 F5 80               612 	mov	_P0,a
   0783                     613 00101$:
                            614 ;     genAnd
   0783 74 80               615 	mov	a,#0x80
   0785 55 80               616 	anl	a,_P0
                            617 ;     genCmpEq
                            618 ;	Peephole 112.b	changed ljmp to sjmp
                            619 ;	Peephole 115.b	jump optimization
   0787 FB                  620 	mov	r3,a
   0788 60 F9               621 	jz	00101$
   078A                     622 00129$:
                            623 ;     genCall
   078A C0 02               624 	push	ar2
   078C 12 05 CB            625 	lcall	_I2C_delay
   078F D0 02               626 	pop	ar2
                            627 ;i2c.c:75: if ((P0 & 0x40)==0x40) dat=(dat<<1)+1; else dat=dat<<1;
                            628 ;     genAnd
   0791 74 40               629 	mov	a,#0x40
   0793 55 80               630 	anl	a,_P0
   0795 FB                  631 	mov	r3,a
                            632 ;     genCmpEq
                            633 ;	Peephole 112.b	changed ljmp to sjmp
                            634 ;	Peephole 199	optimized misc jump sequence
   0796 BB 40 10            635 	cjne	r3,#0x40,00105$
                            636 ;00130$:
                            637 ;	Peephole 200	removed redundant sjmp
   0799                     638 00131$:
                            639 ;     genAssign
   0799 90 00 4E            640 	mov	dptr,#_I2C_get_dat_1_1
   079C E0                  641 	movx	a,@dptr
                            642 ;     genLeftShift
                            643 ;     genLeftShiftLiteral
                            644 ;     genlshOne
                            645 ;	Peephole 105	removed redundant mov
                            646 ;	Peephole 204	removed redundant mov
   079D 25 E0               647 	add	a,acc
   079F FB                  648 	mov	r3,a
                            649 ;     genPlus
   07A0 90 00 4E            650 	mov	dptr,#_I2C_get_dat_1_1
                            651 ;     genPlusIncr
   07A3 74 01               652 	mov	a,#0x01
                            653 ;	Peephole 236.a	used r3 instead of ar3
   07A5 2B                  654 	add	a,r3
   07A6 F0                  655 	movx	@dptr,a
                            656 ;	Peephole 112.b	changed ljmp to sjmp
   07A7 80 0B               657 	sjmp	00106$
   07A9                     658 00105$:
                            659 ;     genAssign
   07A9 90 00 4E            660 	mov	dptr,#_I2C_get_dat_1_1
   07AC E0                  661 	movx	a,@dptr
                            662 ;     genLeftShift
                            663 ;     genLeftShiftLiteral
                            664 ;     genlshOne
                            665 ;	Peephole 105	removed redundant mov
                            666 ;     genAssign
                            667 ;	Peephole 100	removed redundant mov
                            668 ;	Peephole 204	removed redundant mov
   07AD 25 E0               669 	add	a,acc
   07AF FB                  670 	mov	r3,a
   07B0 90 00 4E            671 	mov	dptr,#_I2C_get_dat_1_1
   07B3 F0                  672 	movx	@dptr,a
   07B4                     673 00106$:
                            674 ;i2c.c:76: SCL_LOW
                            675 ;     genAssign
                            676 ;     genAnd
                            677 ;	Peephole 248.b	optimized and to xdata
   07B4 90 00 4A            678 	mov	dptr,#_prev_P0
   07B7 E0                  679 	movx	a,@dptr
   07B8 FB                  680 	mov	r3,a
   07B9 54 FD               681 	anl	a,#0xFD
   07BB F0                  682 	movx	@dptr,a
                            683 ;     genAssign
   07BC 90 00 4A            684 	mov	dptr,#_prev_P0
   07BF E0                  685 	movx	a,@dptr
   07C0 F5 80               686 	mov	_P0,a
                            687 ;     genCall
   07C2 C0 02               688 	push	ar2
   07C4 12 05 CB            689 	lcall	_I2C_delay
   07C7 D0 02               690 	pop	ar2
                            691 ;i2c.c:72: for (x=0;x<8;x++)
                            692 ;     genPlus
                            693 ;     genPlusIncr
   07C9 0A                  694 	inc	r2
                            695 ;	Peephole 112.b	changed ljmp to sjmp
   07CA 80 A4               696 	sjmp	00113$
   07CC                     697 00116$:
                            698 ;i2c.c:78: if (ack) 
                            699 ;     genAssign
   07CC 90 00 4D            700 	mov	dptr,#_I2C_get_ack_1_1
   07CF E0                  701 	movx	a,@dptr
                            702 ;     genIfx
                            703 ;	Peephole 105	removed redundant mov
   07D0 FA                  704 	mov	r2,a
                            705 ;     genIfxJump
                            706 ;	Peephole 110	removed ljmp by inverse jump logic
   07D1 60 13               707 	jz	00108$
   07D3                     708 00132$:
                            709 ;i2c.c:79: SDA_LOW							// if wanted, we will ACK the transmission
                            710 ;     genAssign
                            711 ;     genAnd
                            712 ;	Peephole 248.b	optimized and to xdata
   07D3 90 00 4A            713 	mov	dptr,#_prev_P0
   07D6 E0                  714 	movx	a,@dptr
   07D7 FA                  715 	mov	r2,a
   07D8 54 FE               716 	anl	a,#0xFE
   07DA F0                  717 	movx	@dptr,a
                            718 ;     genAssign
   07DB 90 00 4A            719 	mov	dptr,#_prev_P0
   07DE E0                  720 	movx	a,@dptr
   07DF F5 80               721 	mov	_P0,a
                            722 ;     genCall
   07E1 12 05 CB            723 	lcall	_I2C_delay
                            724 ;	Peephole 112.b	changed ljmp to sjmp
   07E4 80 11               725 	sjmp	00109$
   07E6                     726 00108$:
                            727 ;i2c.c:81: SDA_HIGH						// else we just don't!!!
                            728 ;     genAssign
                            729 ;     genOr
                            730 ;	Peephole 248.a	optimized or to xdata
   07E6 90 00 4A            731 	mov	dptr,#_prev_P0
   07E9 E0                  732 	movx	a,@dptr
   07EA FA                  733 	mov	r2,a
   07EB 44 01               734 	orl	a,#0x01
   07ED F0                  735 	movx	@dptr,a
                            736 ;     genAssign
   07EE 90 00 4A            737 	mov	dptr,#_prev_P0
   07F1 E0                  738 	movx	a,@dptr
   07F2 F5 80               739 	mov	_P0,a
                            740 ;     genCall
   07F4 12 05 CB            741 	lcall	_I2C_delay
   07F7                     742 00109$:
                            743 ;i2c.c:82: SCL_HIGH							// create a last clock-pulse
                            744 ;     genAssign
                            745 ;     genOr
                            746 ;	Peephole 248.a	optimized or to xdata
   07F7 90 00 4A            747 	mov	dptr,#_prev_P0
   07FA E0                  748 	movx	a,@dptr
   07FB FA                  749 	mov	r2,a
   07FC 44 02               750 	orl	a,#0x02
   07FE F0                  751 	movx	@dptr,a
                            752 ;     genAssign
   07FF 90 00 4A            753 	mov	dptr,#_prev_P0
   0802 E0                  754 	movx	a,@dptr
   0803 F5 80               755 	mov	_P0,a
   0805                     756 00110$:
                            757 ;     genAnd
   0805 74 80               758 	mov	a,#0x80
   0807 55 80               759 	anl	a,_P0
                            760 ;     genCmpEq
                            761 ;	Peephole 112.b	changed ljmp to sjmp
                            762 ;	Peephole 115.b	jump optimization
   0809 FA                  763 	mov	r2,a
   080A 60 F9               764 	jz	00110$
   080C                     765 00133$:
                            766 ;     genCall
   080C 12 05 CB            767 	lcall	_I2C_delay
                            768 ;i2c.c:83: SCL_LOW
                            769 ;     genAssign
                            770 ;     genAnd
                            771 ;	Peephole 248.b	optimized and to xdata
   080F 90 00 4A            772 	mov	dptr,#_prev_P0
   0812 E0                  773 	movx	a,@dptr
   0813 FA                  774 	mov	r2,a
   0814 54 FD               775 	anl	a,#0xFD
   0816 F0                  776 	movx	@dptr,a
                            777 ;     genAssign
   0817 90 00 4A            778 	mov	dptr,#_prev_P0
   081A E0                  779 	movx	a,@dptr
   081B F5 80               780 	mov	_P0,a
                            781 ;     genCall
   081D 12 05 CB            782 	lcall	_I2C_delay
                            783 ;i2c.c:84: SDA_LOW							// exit the function with both signals in a low state
                            784 ;     genAssign
                            785 ;     genAnd
                            786 ;	Peephole 248.b	optimized and to xdata
   0820 90 00 4A            787 	mov	dptr,#_prev_P0
   0823 E0                  788 	movx	a,@dptr
   0824 FA                  789 	mov	r2,a
   0825 54 FE               790 	anl	a,#0xFE
   0827 F0                  791 	movx	@dptr,a
                            792 ;     genAssign
   0828 90 00 4A            793 	mov	dptr,#_prev_P0
   082B E0                  794 	movx	a,@dptr
   082C F5 80               795 	mov	_P0,a
                            796 ;     genCall
   082E 12 05 CB            797 	lcall	_I2C_delay
                            798 ;i2c.c:85: return (dat);    
                            799 ;     genAssign
   0831 90 00 4E            800 	mov	dptr,#_I2C_get_dat_1_1
   0834 E0                  801 	movx	a,@dptr
                            802 ;     genRet
                            803 ;	Peephole 234	loading dpl directly from a(ccumulator), r2 not set
   0835 F5 82               804 	mov	dpl,a
   0837                     805 00117$:
   0837 22                  806 	ret
                            807 	.area CSEG    (CODE)
                            808 	.area XINIT   (CODE)
