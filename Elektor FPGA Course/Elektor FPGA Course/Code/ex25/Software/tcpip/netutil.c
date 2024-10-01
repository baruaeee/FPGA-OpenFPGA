/**********************************************************************************
* Netutil.c
*
* Some TCP/IP utility functions
*
* V2.01 (C) 2004 WWW.WICKENHAEUSER.DE
*
* Please support us:
* ==================
* 
* The offer the uC/51-ANSI-C-Compiler at a very low price. So we do not have a
* large budget for advertisements. Every link to our Internet pages
* (WWW.WICKENHAEUSER.COM, WWW.WICKENHAEUSER.DE, WWW.FLEXGATE.COM, WWW.FLEXGATE.DE)
* is welcome! 
*
**********************************************************************************/


#include <stdio.h>
#include <reg52.h>

#include "phy.h"		// Physical Layer
#include "netutil.h"		// Utilities


void memset(xdata uchar* pMem,char ch,uint size) {
    while(size--) {
      *pMem++=ch;
    }  
}
/*
void memset(xdata uchar* dest,char ch,uint size);
#asm
	.segment __memset
	.export _memset
_memset:
	; dest in R6/R7
	; ch in R5
	; size in R3/R4
	mov A,R4	; prepare to use 2 djnz
	jz ?xms1
	inc R3	
?xms1:	; get from source byte
	mov DPL,R7
	mov DPH,R6
	mov a,r5
?xms2:
  movx @dptr,a
  inc dptr
	djnz R4,?xms2
	djnz R3,?xms2
	ret
#endasm*/


/**********************************************************************************
* uchar net_match_ulong(unsigned long m)
* 
* function, that returns 0 only if the nrext read word from the Ethernet matches
* matches a fixed one
**********************************************************************************/
uchar net_match_ulong(unsigned long m){
	if(Read_Frame_long_Phy()!=m) return 1;
	return 0;	// MATCH!
}
/**********************************************************************************
* uchar net_match_uint(uint m){
* 
* function, that returns 0 only if the next read long from the Ethernet matches
* matches a fixed one
**********************************************************************************/
uchar net_match_uint(uint m){
	if(Read_Frame_word_Phy()!=m) return 1;
	return 0;	// MATCH!
}

/**********************************************************************************
* unsigned int ip_check(xdata uchar* ps, uint len);
* unsigned int ip_check_more(xdata uchar* ps, uint len, uint old_cs);
*
* Calculate an IP Checksum of Xram Block Block , 
* Used Assembler: This is really FAST! 
* ip_check_more: Takes a given CS and adds some more bytes. This is necessary
* for TCP-segments (and optional UDP too), if data are not in a continous block...
* ip_check_more is only allowed if previously an even number of bytes was read...
**********************************************************************************/
#asm
	.segment __ip_check
	.export _ip_check, _ip_check_more
_ip_check:		; Adr: R6:R7, len: R4:R5, tmp: B
	clr A		; R6:7 working reg. (delayed in R2:3)
	mov R2,A
	mov R3,A

_ip_check_more:		; Adr: R6:R7, len: R4:R5, tmp: B, old_cs in R2:R3
	mov DPL,R7
	mov DPH,R6
	mov R6,2	; CS Working register, copy from R2
	mov R7,3	; R3
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
	ret
#endasm

/**********************************************************************************
* void xram_fast_copy(xdata uchar* src,xdata uchar* dest,uint size);
* 
* Copy size data in XRAM
**********************************************************************************/
void xram_fast_copy(xdata uchar* src,xdata uchar* dest,uint size);
#asm
	.segment __xram_fast_copy
	.export _xram_fast_copy
_xram_fast_copy:
	; src in R6/R7
	; dest in R4/R5
	; len in R2/R3
	mov A,R3	; prepare to use 2 djnz
	jz ?xfc1
	inc R2	
?xfc1:	; get from source byte
	mov DPL,R7
	mov DPH,R6
	movx A,@DPTR
	inc DPTR
	mov R7,DPL
	mov R6,DPH
	; write to dest byte
	mov DPL,R5
	mov DPH,R4
	movx @DPTR,A
	inc DPTR
	mov R5,DPL
	mov R4,DPH
	; loop
	djnz R3,?xfc1
	djnz R2,?xfc1
	ret
#endasm

// END