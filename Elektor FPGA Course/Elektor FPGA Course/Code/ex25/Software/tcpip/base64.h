/**********************************************************************************
* BASE64.H
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

xdata uchar* b64_code(uchar* src, xdata uchar *dst, uchar len);

// EOF