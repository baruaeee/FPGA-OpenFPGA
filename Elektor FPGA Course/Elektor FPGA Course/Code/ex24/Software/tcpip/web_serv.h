/**********************************************************************************
*
* Web_serv.h
* Requires net.h
* 
* Webserver_Layer
* The Webserver is a top-layer of poll_net()
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

// Structure for monitoring port80 sockets
typedef struct{
	uchar html_state;	// 0: Nothing/Waiting for GET, 1,2: Wait 3: HTTP, 4: Pending
	uchar dyna_flag;	// If set: Dynamic HTML (requires Server-Close)
	code uchar* pweb;	// Points to current Page data
	uint weblen;		// Size of page
} HTTP_INFO;

extern HTTP_INFO http_info[MAX_SOCK];	
extern xdata uchar *web_args; // points tp start of first argument


// Webserver Functions
uint gendyn_html(xdata HTTP_INFO *pinfo, xdata uchar *pbuf);
uint poll_webserver(void);
xdata uchar * webpage_name(void);
uchar url_getarg_no(void);
xdata uchar *url_getarg_str(void);
void webpage_bind(uchar sock, code unsigned char *pd);

// EOF