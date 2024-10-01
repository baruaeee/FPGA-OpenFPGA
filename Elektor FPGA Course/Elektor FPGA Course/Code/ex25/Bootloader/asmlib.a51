;$NOMOD51
;$include (C:\Keil\C51\ASM\REG_51.INC)
;$ PROCESSOR (8051)  ;oder anderer Typ
;$ TITLE   (Graphik Lcd Low Level)
NAME      ?WEBSERVER?LOWLEVEL



	?WEBSERVER?LOWLEVEL?CODE SEGMENT CODE

;DPSEL equ 0x92


;CPU_NSEC       equ      666
;dly            equ      1500
dly            equ      25000


	RSEG ?WEBSERVER?LOWLEVEL?CODE
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; DELAY ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
 PUBLIC __wait_ms

__wait_ms:
 	mov A,R7 			; Low
 	jz ?wt1  
 	inc R6
?wt1: 	mov DPTR,#(65536-(dly/8))		;mov DPTR,#(-1000000/CPU_NSEC/6)
?wt2: 	inc DPTR ;  1
 	mov A,DPH ; 2
 	orl A,DPL ; 2
 	jnz ?wt2 ;  3 = 8 cycles @ 25 MHz
 	djnz R7,?wt1 
 	djnz R6,?wt1 
 	ret


;/**********************************************************************************
;* unsigned int ip_check(xdata uchar* ps, uint len);
;* unsigned int ip_check_more(xdata uchar* ps, uint len, uint old_cs);
;*
;* Calculate an IP Checksum of Xram Block Block , 
;* Used Assembler: This is really FAST! 
;* ip_check_more: Takes a given CS and adds some more bytes. This is necessary
;* for TCP-segments (and optional UDP too), if data are not in a continous block...
;* ip_check_more is only allowed if previously an even number of bytes was read...
;**********************************************************************************/
	PUBLIC _ip_check
	PUBLIC _ip_check_more
;	.export _ip_check, _ip_check_more
_ip_check:		; Adr: R6:R7, len: R4:R5, tmp: B
	clr A		; R6:7 working reg. (delayed in R2:3)
	mov R2,A
	mov R3,A

_ip_check_more:		; Adr: R6:R7, len: R4:R5, tmp: B, old_cs in R2:R3
	mov DPL,R7
	mov DPH,R6
	mov R6,2	; CS Working register, copy from R2
	mov R7,3	; R3
	push B
	mov B,#0	; 
	mov A,R4	; omit 0 words len
	orl A,R5
	jz ?csx
	mov A,R5	; prepare to use 2 djnz
	jz ?cs1
	inc R4	
?cs1:	movx A,@DPTR
	inc DPTR
	jnb B.0,?csh
	add A,R7
	mov R7,A
	jnc ?cs2
	inc R6
	mov A,R6
	jnz ?cs2
	inc R7
	sjmp ?cs2
?csh:	add A,R6
	mov R6,A
	jnc ?cs2
	inc R7
	mov A,R7
	jnz ?cs2
	inc R6
?cs2:	inc B
	djnz R5,?cs1	
	djnz R4,?cs1	
?csx:	
	pop B
	ret






END

