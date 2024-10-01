/*********************************************************************************
* Web_serv.C
* 
* Webserver_Layer
* The Webserver is a top-layer of poll_net()
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
#include <string.h>	

#include <reg52.h>

#include "net.h"		// Basic network handling (public)
#include "web_serv.h"		// Webserver

// This is the Default Message. Using code 200 displays OUR page, whereas 404 may display a Browser's message...
code uchar html_notfound[] = {
"HTTP/1.0 200 OK\r\n"
"Content-Type: text/html\r\n"
"Connection: close\r\n"
"\r\n"
"<html><head><title>Elektor FPGA Webserver</title></head>"
"<body text=\"#0000FF\" bgcolor=\"#FFFF80\" link=\"#FF0000\">"
"Elektor FPGA Webserver - Page not found"
"</body></html>\r\n"
};

// Here the HTTP state machine is managed
HTTP_INFO http_info[MAX_SOCK];	

xdata uchar *web_args; // static internal variable, points to start of first argument

uchar csock=0xFF;	//   static internal variable, Current-Socket Index if !0xFF

/**********************************************************************************
* uint gendyn_data(xdata HTTP_INFO *pinfo, xdata uchar *pbuf)
*
* Fill given buffer with dynamic data, return size (max MAX_TX)
**********************************************************************************/
uint gendyn_html(xdata HTTP_INFO *pinfo, xdata uchar *pbuf){
	uint leftos;		// Left to send or process
	uint cnt;		// No. of data to send
	uint rlen;

	xdata uchar *dsrc;

	code uchar *psrc;	// Source is in pinfo
	uchar df;
	uchar c;

	psrc=pinfo->pweb;
	leftos=pinfo->weblen;
	df=pinfo->dyna_flag;
	cnt=0;
	while(leftos){
		c=*psrc;
		psrc++;
		leftos--;
		if(df && c==255){	// Dynamic Sentinel

			dsrc= (xdata uchar*)(*(code uint*)psrc);
			rlen=0;
			while(*dsrc++) rlen++;	// Calc. Stringlen of variable		

			if(rlen>MAX_TX) rlen=MAX_TX;	// Clip too long variables to max. segment size

			if(rlen+cnt>MAX_TX){	// Current data + Variable: Too much!
				psrc--;		// Wind back HTML-Template and 
				leftos++;	// use a new segment...
				break;		// Exit for now
			}

			dsrc= (xdata uchar*)(*(code uint*)psrc);
			psrc+=2;	// Eat Address from Template
			leftos-=2;

			// Insert Var. string in HTML
			while(rlen--){
				c=*dsrc++;
				*pbuf=c;
				pbuf++;
				cnt++;
			}			


		}else{
			*pbuf=c;
			pbuf++;
			cnt++;
		}
		
		if(cnt==MAX_TX) break;	// Buffer full
	}

	pinfo->pweb=psrc;
	pinfo->weblen=leftos;

	return cnt;
}


/**********************************************************************************
*  poll_webserver()
**********************************************************************************/
uint poll_webserver(void){
	uint res;
	uint i;
	uchar uci,c;
	uchar sock,state;
	xdata HTTP_INFO *pinfo;

	uint sendlen;		// Temp. Len
	xdata uchar *pbuf;	// Temp. Buffer
	
	res=poll_net();

	// First check if a socket is pending
	if(!res && csock!=0xFF && http_info[csock].html_state==3 &&  !notready_socket_tcp(csock,RDY_4_TX)){
		// Patch EVENT
		res=EVENT_TCP_DATARECEIVED+csock;
		rcv_len=0;
		csock=0xFF;
	}else if(res==EVENT_SOCKET_IDLETIMER){
		for(uci=0;uci<MAX_SOCK;uci++){
			if(http_info[uci].html_state>=3 &&  !notready_socket_tcp(uci,RDY_4_TX)){
				// Patch EVENT (simulate a received 0-size segment)
				res=EVENT_TCP_DATARECEIVED+uci;
				rcv_len=0;
			}
		}
	}

	// Received a TCP_EVENT. Could indicate received data or a closure of the TCP socket
	if(res>=0xF000){
		sock=(uchar)res;	// isolate socket index

		// Only process HTTP-Sockets!
		if(uc_socket[sock].local_port!=80) return res;

		pinfo=&http_info[sock];	// Pointer to HTTP_INFO for the current socket

		state=pinfo->html_state;
		
		// *** RECEIVED DATA ***
		if((res&0xFF00)==EVENT_TCP_DATARECEIVED){
#if 0 // Disabled (enable only for debugging)
			// Show request...
			for(i=0;i<rcv_len;i++){
				c=rcv_buf[i];
				if(c=='\r') putsl("<CR>");
				else if(c=='\n') puts("<LF>");
				else putchar(c);
			}
#endif
			res=0;	// This is our new return EVENT (default: nothing)
			// Parse request
			for(i=0;i<rcv_len;i++){
				c=rcv_buf[i];

				switch(state){
				case 0:
					if(c=='G' && i==0){	// Assume a GET
						state=1;
						// Emit a HTTP-Request
						res=EVENT_HTTP_REQUEST+sock;
		
						// Set Default Reply to NotFound
						pinfo->pweb=html_notfound;
						pinfo->weblen=sizeof(html_notfound);
						pinfo->dyna_flag=1; // With interpretation! (because HTML)
						
					}
					break;
				case 1: // Wait for a EOL after chars were found
					if(c=='\n') state=2;
					break;
				case 2:	// Rec. new line, CR LF marks end of HTTP_Request
					if(c=='\n') {
						state=3; 	// CR LF: End of Request
					}else {
						if(c!='\r') state=1;	// ignore all visible chars
					}
				} // switch
			} // for

			// Inform User about page request
			if(res) {
				pinfo->html_state=state;	// Keep state
				return res;			// And return (0 or REQUEST) to the user
			}

			// Try to send data for states 3 and 4
			if(state>=3){
				if(!notready_socket_tcp(sock,RDY_4_TX)){
					state=3;
					if(pinfo->weblen){	// There is still something to send
						pbuf=allocate_tx_buf(); // Allocate a buffer
						sendlen=gendyn_html(pinfo,pbuf); // Fill Buffer
						send_socket_tcp(sock, pbuf, sendlen); // Send buffer (safe, beacuse notready()-checked already)
						csock=sock;	// Could send something, retry soon!
					}else{ // Manually close only dynamic Pages...
						state=4;	// Waiting for close could block other transfers
						if(!notready_socket_tcp(sock,RDY_4_CLOSE)){
							state=0;
							close_socket_tcp(sock);
						}
					}

				}else{ // !notready
					state=4; // Mark socket as pending, try in 500 msec again
				}

			}
			pinfo->html_state=state;	// Keep state
			return 0;			// Ignore Webserver maintained events

		}else if(res>=0xF800){ // all Events >=0xF800 close TCP Connections.
			pinfo->html_state=0;	// ALL other TCP_EVENTS close the socket (ensured by design)
			return 0;		// Ignore this Event, socket is maintained by webserver
		}
	}
	return res;
}

/**********************************************************************************
*  webpage_name(): Return the Name of the requested page. 
*
* Attention: Maybe called only ONCE, because terminates URL-String
**********************************************************************************/
xdata uchar * webpage_name(void){
	uchar c;
	xdata uchar *pc=rcv_buf+5;	// Kill GET slash (5 chars)
	web_args=0;		// Assume NO Arguments
	rcv_buf[MAX_RX-1]=0;	// Prevent Buffer overread
	for(;;){
		c=*pc;
		if(c=='?') {
			web_args=pc+1;
			break;
		}else  if(c<=' ') break;
		pc++;
	}
	*pc=0;
	return rcv_buf+5;
}

/**********************************************************************************
* uchar url_getarg_no(void)
*
* Will return the index No of an argument or 0 for none. The Value of an argument
* can be retrieved with url_getarg_str();
* All Arguments must be named A1 - A255 or a1-a255
**********************************************************************************/
uchar url_getarg_no(void){
	uchar ano;
	uchar c;
	if(!web_args) return 0;
	c=*web_args++;
	if(c!='a' && c!='A') return 0;	// No Arg found!
	ano=0;
	for(;;){
		c=(*web_args++)-'0';
		if(c>9) break;
		ano*=10;
		ano+=c;
	}		
	if(c!= ('='-'0')) return 0;	// Format error
	return ano;	
}

/**********************************************************************************
* xdata uchar url_getarg_str(void)
*
* Will return the value of the last identified argument
**********************************************************************************/
xdata uchar *url_getarg_str(void){
	xdata uchar *ret;
	 uchar c;
	ret=web_args;
	for(;;){
		c=*web_args;
		if(c=='&' || c<=' ') break;
		web_args++;	// Read over
	}		
	*web_args=0;	// Terminate string for this argument
	web_args++;	// and set to next Arg.
	return ret;
}



/**********************************************************************************
* webpage_bind(uchar socket, code unsigned char *pd)
* This will bind a webpage to a given socket, after a HTTP-Request was received
* for this page.
**********************************************************************************/
void webpage_bind(uchar sock, code unsigned char *pd){
	xdata HTTP_INFO *pinfo;
	pinfo=&http_info[sock];	// Pointer to HTTP_INFO for the current socket

	pinfo->weblen=*((code uint*)pd);
	pd+=2;
	pinfo->dyna_flag=*pd++;
	pinfo->pweb=pd;
}

// EOF