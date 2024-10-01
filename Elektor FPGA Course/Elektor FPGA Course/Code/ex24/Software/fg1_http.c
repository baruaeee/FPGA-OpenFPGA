/*********************************************************************************
* FG1_HTTP.C
* 
* A simple dynamic Webserver on Elektor FPGA Board
*
* (C) 2006 Andreas Voggeneder
**********************************************************************************/

#include <stdio.h>
#include <string.h> 
#include <ctype.h>
#include <reg52.h>

#include "tcpip/net.h"   // Basic network handling (public)
#include "tcpip/web_serv.h"  // Webserver
#include "tcpip/open_ether.h"


//#define LED P1_B7   // LED on (almost) all Wickenhaeuser boards

// Declaration of the Pages
extern code unsigned char home[];
extern code unsigned char form[];
extern code unsigned char reply[];


// For form.html:
xdata uchar name[21];
xdata uchar adr[5];
xdata uchar cont[12];






/**********************************************************************************
*  M A I N
**********************************************************************************/
void main(void){
 uint res;
 uchar i;
 uchar socket;
 xdata uchar *pc;
 
  TMOD = 1;
  SCON = 0x52;    /* SCON */ 
  T2CON=0;
  RCAP2L=0xAE;			   // 9600 Baud @ 25 MHz
  RCAP2H=0xff;
  T2CON=0x30;
  TR2=1;
  TR0=1;

 P1=0;
  
  // A HTTP-Server with only passive sockets requires only an IP address

 COMPOSE_IP(my_ip,192,168,0,1); 
// COMPOSE_IP(my_ip,10,0,0,101);
 printf("IP:  %u.%u.%u.%u\r\n",my_ip.bytes[0],my_ip.bytes[1],my_ip.bytes[2],my_ip.bytes[3]);

 if(Init_net()) {
  puts("<NET FAILURE>"); // Init Variables, Counter, ...
  sevseg_data0=1;
  for(;;);
 }
 // Enable ALL (or less) Sockets  as General Server HTTP at port 80
 for(i=0;i<MAX_SOCK;i++) SOCKET_SETUP(i,SOCKET_TCP,80,FLAG_PASSIVE_OPEN);
 // * Now Net is ready to start *
 for(;;){

  // ENOUGH TIME IN THIS LOOP FOR OTHER JOBS...

  
  res=poll_webserver();
  if((res&0xFF00) ==EVENT_HTTP_REQUEST){
   socket=(uchar)res;

   pc=webpage_name(); // get name of requested page

//   printf("'%s'/%u\n",pc,socket); // Show requested page and socket

   if(*pc=='f'){
    webpage_bind(socket,form);
   }else if(*pc=='r'){
    webpage_bind(socket,reply);    
   }else{
    webpage_bind(socket,home); // HOME
   }

   for(;;){
    i=url_getarg_no();
    if(!i) break;
    pc=url_getarg_str();

    printf("Arg A%u: '%s'\n",i,pc); // Opt. Show Args...

    if(i==1) strcpy(name,pc); // Copy without regarding max. len...
    else if(i==2) strcpy(cont,pc);
    else if(i==3) strcpy(adr,pc);

    // ignore other Args...
   }

#ifdef LED
  }else if(res==EVENT_SOCKET_IDLETIMER){
              LED^=1; // *** BLINK LED ***
#endif
  }

     // else{ *** add a user-task here *** }

  } // for(;;)

}


// EOF
