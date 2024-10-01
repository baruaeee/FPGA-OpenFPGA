/**********************************************************************************
* BASE64.C
*
* V2.00 (C) 2004 WWW.WICKENHAEUSER.DE
*
* Base64 coding, required for E-Mail Authentification and for E-Mail Attachments
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
#include "base64.h"

/**********************************************************************************
* Base64 coding 
* The B64-Alphabet (64 characters, = for padding)
**********************************************************************************/
const char b64alphabet[64]={"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"};


/**********************************************************************************
* This function converts a (far)string its b64 pendant without terminator.
* Source nay be in FAR memory, wrking string must be XDATA
**********************************************************************************/
xdata uchar* b64_code(uchar* src, xdata uchar *dst, uchar len){
	uchar state=0;
	uchar c,h;
	while(len){
		c=*src++;
	   	switch(state){
		case 0:
			h=c>>2;
			*dst++=b64alphabet[h];
			h=((c&3)<<4);
			state=1;
         	break;

      		case 1:
      			h|=(c>>4);
  			*dst++=b64alphabet[h];
			h=(c&15)<<2;
  			state=2;
         		break;

      		case 2:
			h|=(c>>6);
  			*dst++=b64alphabet[h];
			h=c&63;
  			*dst++=b64alphabet[h];
			state=0;
         		break;
	   	}
		len--;
	}
	// Optioinal padd
	if(state){
   		*dst++=b64alphabet[h];
		*dst++='=';
	}
   	if(state==1) *dst++='=';
	return dst;
}

// EOF