/* $Workfile:   dhcp.h $									 										  */
/* $Revision: 1.1 $                                            	*/
/* $Author: hse00045 $                           								*/
/* $Date: 2003/14/02 19:31:38 $																	*/
/* Description:	DHCP Client                                     */
/*																											        */
/* Remarks:     No remarks.                                     */

#ifndef __DHCP_H
#define __DHCP_H

//#include "net.h"
//#include "netutil.h"


typedef unsigned long ulong;

/* UDP port numbers for DHCP */
#define	DHCP_SERVER_PORT	67	/* from server to client */
#define DHCP_CLIENT_PORT	68	/* from client to server */

/* DHCP message OP code */
#define DHCP_BOOTREQUEST	1
#define DHCP_BOOTREPLY		2

/* DHCP message type */
#define	DHCP_DISCOVER		1
#define DHCP_OFFER			2
#define	DHCP_REQUEST		3
#define	DHCP_DECLINE		4
#define	DHCP_ACK  			5
#define DHCP_NAK  			6
#define	DHCP_RELEASE		7
#define DHCP_INFORM  		8

/* DHCP RETRANSMISSION TIMEOUT (microseconds) */
#define DHCP_INITIAL_RTO    ( 4*1000000)
#define DHCP_MAX_RTO        (64*1000000)

#define DHCP_HTYPE10MB		1
#define DHCP_HTYPE100MB		2

#define DHCP_HLENETHERNET	6
#define DHCP_HOPS			0
#define DHCP_XID 			0x12345670  // Client Unique ID
#define DHCP_SECS			0

#define DHCP_FLAGSBROADCAST	0x8000

#define MAGIC_COOKIE		0x63825363

#define DEFAULT_LEASETIME	0xffffffff	/* infinite lease time */

/* DHCP option and value (cf. RFC1533) */

typedef enum _OPTION
{
	padOption = 0,
	subnetMask =1,
	timerOffset =2,
	routersOnSubnet=3,
	timeServer=4,
	nameServer=5,
	dns=6,
	logServer=7,
	cookieServer=8,
	lprServer=9,
	impressServer=10,
	resourceLocationServer=11,
	hostName=12,
	bootFileSize=13,
	meritDumpFile=14,
	domainName=15,
	swapServer=16,
	rootPath=17,
	extentionsPath=18,
	IPforwarding=19,
	nonLocalSourceRouting=20,
	policyFilter=21,
	maxDgramReasmSize=22,
	defaultIPTTL=23,
	pathMTUagingTimeout=24,
	pathMTUplateauTable=25,
	ifMTU=26,
	allSubnetsLocal=27,
	broadcastAddr=28,
	performMaskDiscovery=29,
	maskSupplier=30,
	performRouterDiscovery=31,
	routerSolicitationAddr=32,
	staticRoute=33,
	trailerEncapsulation=34,
	arpCacheTimeout=35,
	ethernetEncapsulation=36,
	tcpDefaultTTL=37,
	tcpKeepaliveInterval=38,
	tcpKeepaliveGarbage=39,
	nisDomainName=40,
	nisServers=41,
	ntpServers=42,
	vendorSpecificInfo=43,
	netBIOSnameServer=44,
	netBIOSdgramDistServer=45,
	netBIOSnodeType=46,
	netBIOSscope=47,
	xFontServer=48,
	xDisplayManager=49,
	dhcpRequestedIPaddr=50,
	dhcpIPaddrLeaseTime=51,		
	dhcpOptionOverload=52,
	dhcpMessageType=53,
	dhcpServerIdentifier=54,
	dhcpParamRequest=55,
	dhcpMsg=56,
	dhcpMaxMsgSize=57,
	dhcpT1value=58,
	dhcpT2value=59,
	dhcpClassIdentifier=60,
	dhcpClientIdentifier=61,
	endOption = 255
}OPTION;

typedef struct _RIP_MSG{
	uchar op; 
	uchar htype; 
	uchar hlen;
	uchar hops;
	ulong xid;
	uint secs;
	uint flags; 
	uchar ciaddr[4];
	uchar yiaddr[4];
	uchar siaddr[4];
	uchar giaddr[4];
	uchar chaddr[16]; 
	uchar sname[64]; 
	uchar file[128]; 
	uchar OPT[312];
}RIP_MSG;

#define RIP_MSG_SIZE	548
#define MAX_DHCP_OPT	16

void send_DHCP_DISCOVER(uchar sock,xdata uchar *pBfr);     		/* Send DHCP_DISCOVER message to a dhcp server. */
void send_DHCP_REQUEST(uchar sock,xdata uchar *pBfr);                /* Send DHCP_REQUEST message to a dhcp server. */
//extern void send_DHCP_RELEASE(SOCKET s);

char DHCP_SetIP(void);				/* request Ip address to a dhcp server and then apply received ip address from dhcp server to W3100A */

char parseDHCPMSG(uchar sock);		/* Analyze message received from dhcp server and then apply it.

/* DEFINE DHCP MACGIC COOKIE */
/* Like to DEFAULT MAC ADRESS , this value is unique - You must specify this value */
#define MAGIC0	 0x63
#define MAGIC1	 0x82
#define MAGIC2	 0x53
#define MAGIC3	 0x63

#endif


