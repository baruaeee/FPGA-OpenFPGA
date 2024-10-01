/**********************************************************************************
* Netutil.H
*
* Some TCP/IP utility functions
*
* V2.00 (C) 2004 WWW.WICKENHAEUSER.DE
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

uchar net_match_ulong(unsigned long m);
uchar net_match_uint(uint m);
uint ip_check(xdata uchar* ps, uint len);
uint ip_check_more(xdata uchar* ps, uint len,uint old_cs);
void xram_fast_copy(xdata uchar* src,xdata uchar* dest,uint size);

// END