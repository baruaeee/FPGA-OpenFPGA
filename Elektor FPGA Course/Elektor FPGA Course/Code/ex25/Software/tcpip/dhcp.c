/* $Workfile:   dhcp.c $									 										  */
/* $Revision: 1.1 $                                            	*/
/* $Author: hse00045 $                           								*/
/* $Date: 2003/14/02 19:31:38 $																	*/
/* Description:	DHCP Client                                     */
/*																											        */
/* Remarks:     No remarks.                                     */
/*
DESCRIPTION :  DHCP protocol messaging flow
			     |	                    |
	                     |   DHCP DISCOVER      |
			     |--------------------->|
			     |      DHCP OFFER      |
		DHCP Client  |<---------------------|  DHCP SERVER
			     |   DHCP REQUEST       |
			     |--------------------->|
			     |   DHCP ACK           |
			     |<---------------------|
			     |     	                |
*/
#include <reg52.h>
#include <stdio.h>
#include <ctype.h>
#include <string.h>
#include "net.h"
#include "netutil.h"
#include "dhcp.h"


// Create Discover DHCP packet and broadcast it.
void send_DHCP_DISCOVER(uchar sock,xdata uchar *pBfr)
{
   
	#define MSG ((xdata RIP_MSG*) pBfr)
	// Generate DISCOVER DHCP PACKET
	// setting values as DHCP Protocol
	MSG->op = DHCP_BOOTREQUEST;
	MSG->htype = DHCP_HTYPE10MB;
	MSG->hlen = DHCP_HLENETHERNET;
	MSG->hops = DHCP_HOPS;
	MSG->xid = DHCP_XID;
	MSG->secs = DHCP_SECS;
	MSG->flags = 0;	//DHCP_FLAGSBROADCAST;
  
	memset(MSG->ciaddr,0,RIP_MSG_SIZE-12);

	// setting default Mac Address Value.
	memcpy(MSG->chaddr,my_mac,6);
	
	*((xdata unsigned long*)MSG->OPT)=MAGIC_COOKIE;
	
	// Option Request Param.
	MSG->OPT[4] = dhcpMessageType;
	MSG->OPT[5] = 0x01;
	MSG->OPT[6] = DHCP_DISCOVER;
	MSG->OPT[7] = dhcpParamRequest;
	MSG->OPT[8] = 0x05;
	MSG->OPT[9] = subnetMask;
	MSG->OPT[10] = routersOnSubnet;
	MSG->OPT[11] = dns;
	MSG->OPT[12] = dhcpT1value;
	MSG->OPT[13] = dhcpT2value;
	
  MSG->OPT[14]= hostName;
  MSG->OPT[15]= 4;
  
//	memcpy(&MSG->OPT[16],"FPGA",4);	// fucking compiler
  MSG->OPT[16] = 'F';
  MSG->OPT[17] = 'P';
  MSG->OPT[18] = 'G';
  MSG->OPT[19] = 'A';
	MSG->OPT[20] = endOption;
	send_socket_udp(sock,pBfr,RIP_MSG_SIZE);
}


void send_DHCP_REQUEST(uchar sock,xdata uchar *pBfr)
{
//	uint i;
	#define MSG ((xdata RIP_MSG*) pBfr)

	MSG->op = DHCP_BOOTREQUEST;
	MSG->htype = DHCP_HTYPE10MB;
	MSG->hlen = DHCP_HLENETHERNET;
	MSG->hops = DHCP_HOPS;
	MSG->xid = DHCP_XID;
	MSG->secs = DHCP_SECS;
	MSG->flags = DHCP_FLAGSBROADCAST;

	*((xdata unsigned long*)MSG->ciaddr)=my_ip.ipl;
	memset(MSG->yiaddr,0,RIP_MSG_SIZE-16);
	memcpy(MSG->chaddr,my_mac,6);
	*((xdata unsigned long *)MSG->OPT)=MAGIC_COOKIE;

	// Option Request Param.
	MSG->OPT[4] = dhcpMessageType;
	MSG->OPT[5] = 0x01;
	MSG->OPT[6] = DHCP_REQUEST;

	// DHCP Option Request Param.
	MSG->OPT[7] = dhcpParamRequest;
	MSG->OPT[8] = 0x05;
	MSG->OPT[9] = subnetMask;
	MSG->OPT[10] = routersOnSubnet;

	MSG->OPT[11] = dns;
	MSG->OPT[12] = dhcpT1value;
	MSG->OPT[13] = dhcpT2value;

  MSG->OPT[14]= hostName;
  MSG->OPT[15]= 4;
//	memcpy(&MSG->OPT[16],"FPGA",4);	  // never seen such a stupid compiler before :-(
  MSG->OPT[16] = 'F';
  MSG->OPT[17] = 'P';
  MSG->OPT[18] = 'G';
  MSG->OPT[19] = 'A';
	MSG->OPT[20] = endOption;
	send_socket_udp(sock,pBfr,RIP_MSG_SIZE);
}

void DefaultNetConfig(void)
{
	//COMPOSE_IP(my_ip,10,0,0,101);
	COMPOSE_IP(my_ip,192,168,0,1); 
}


void SetupTimer(void) {
	TR1 = TF1 = 0;	// stop timer 1 
	TMOD &= ~0xF0;	// clear timer 1 bits 
	TMOD |= 0x10;	  // 16 bit timer 

	TH1 = 0;
	TL1 = 0;
  TR1 = 1;
  ET1 = 0;
}


char DHCP_SetIP()
{
	uchar i;
	uchar RetryCnt;
	uint res;
	uchar type;      		// DHCP message type
	xdata uchar *pbuf;
	unsigned char e;


	type = 0;
	RetryCnt = 0;
//	len = 0;
	
	// Discover DHCP server
  SOCKET_SETUP(UDP_SOCK,SOCKET_UDP,68,FLAG_PASSIVE_OPEN);
	if(open_socket_udp(UDP_SOCK,0xffffffff,67)!=0) { 
		puts("Error opening UDP Socket\r");
		return 0;
	}
	pbuf=allocate_tx_buf();
	while(1)
	{     		
    e=0;
		send_DHCP_DISCOVER(UDP_SOCK,pbuf);
    SetupTimer();
		// Check continuously with some delay if OFFER msg arrived from the DHCP server
		for(i = 0 ; i < 32 && !e; i++)
		{
      TF1=0;
      // wait 1 sec. for an answer to DHCP_DISCOVER message
      while(!TF1) {
  			res=poll_net();
  			if((res&0xff00)==EVENT_UDP_DATARECEIVED)
  	    {
       			type = parseDHCPMSG(res&0xff);	
       			if (type == DHCP_OFFER) 
         		{
//         			puts("Receive DHCP_OFFER OK\r\n");
              e=1;
       				break;
       			}
  	    }
//			__wait_ms(5);		
//			wait_10ms(5);		// Wait OFFER message
      }
		}
		if (type == DHCP_OFFER) {
			break;
		}else if ( RetryCnt++ > 10){
//		  close(s);
      TR1=0;
			free_tx_buf(pbuf);
			close_socket_udp(UDP_SOCK);
			DefaultNetConfig();
			return 0;
		}
	}  

	RetryCnt = 0;
	type = 0;
//	len = 0;
	
	// After receiving OFFER message, send REQUEST message
	while(1)
	{
    e=0;
		send_DHCP_REQUEST(UDP_SOCK,pbuf);
    SetupTimer();
//		puts("Send DHCP REQUEST OK\r\n");
//		wait_10ms(5);		// Wait REQUEST message
		// Check continuously with some delay if ACK message arrived from the DHCP server
		for(i = 0 ; i < 32 && !e; i++)
		{
      TF1=0;
      while(!TF1) {
  			res=poll_net();
  			if((res&0xff00)==EVENT_UDP_DATARECEIVED)
  			{
  				type = parseDHCPMSG(res&0xff);				
  				if (type == DHCP_ACK)
  				{
//  		  			puts("Receive DHCP_ACK OK\r\n");
              e=1;
  	   				break;
        	}
  			}
//			__wait_ms(5);		
//			wait_10ms(5);
      }
		}	
		if (type == DHCP_ACK) {
			break;
		}else if (RetryCnt++ > 10){
//			free_tx_buf(pbuf);
//			close_socket_udp(UDP_SOCK);
			DefaultNetConfig();
			break;
			
		}
	}

	free_tx_buf(pbuf);
	close_socket_udp(UDP_SOCK);
	// Setup packet information from the server
  TR1=0;
	return 1;
}

#define pMSG ((xdata RIP_MSG*) rcv_buf)
char parseDHCPMSG(uchar sock)
{
	uchar type,opt_len;
	xdata uchar * p;
	xdata uchar * e;

	if (uc_socket[sock].sremote_port == DHCP_SERVER_PORT)
	{
		my_ip.ipl=*((xdata unsigned long*)pMSG->yiaddr);
	}
	type = 0;	
	p = (xdata uchar *)(pMSG);
	p = p + 240;
	e = p + (rcv_len - 240);
// OPTIONS auswerten
	while ( p < e )
	{

		switch ( *p++ ) 
		{
			case endOption :
			    return	type;
//				goto PARSE_END;
				break;
    	case padOption :
//				p++;
				break;
   		case dhcpMessageType :
//				p++;
				p++;
				type = *p++;
				break;
   		case subnetMask :
//				p++;
				p++;
				memcpy(subnet_ip.bytes,p,4);
				p+=4;
				break;
      case routersOnSubnet :
//				p++;
				p++;
				memcpy(gateway_ip.bytes,p,4);
				p+=4;
				break;
/*	  	case dns :
//				p++;
				p++;
				for (i = 0; i < 4; i++)	DNS[i] = *p++;*/
/*				WriteScreen("dns : ");
				inet_ntoa(DNS,IPAddrStr);
				WriteScreen(IPAddrStr); 
				WriteScreenf("\r\n");*/
				break;
			default :
				opt_len = *p++;
				p += opt_len;
				break;
		}
	}
//PARSE_END:
    return	type;
}

