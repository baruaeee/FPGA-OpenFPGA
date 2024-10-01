/*********************************************************************************
* FG1_HTTP.C
* 
* A simple dynamic Webserver on a FlexGate I
*
* (C) 2004 Wickenhaeuser
**********************************************************************************/

#include <stdio.h>
#include <string.h> 
#include <ctype.h>
#include <reg52.h>

#include "fpga_reg.h"
#include "tcpip/net.h"   // Basic network handling (public)
#include "tcpip/web_serv.h"  // Webserver
#include "tcpip/open_ether.h"
#include "tcpip/dhcp.h"
#include "i2c.h"
#include "lcd.h"
#include "fpga_reg.h"

// Declaration of the Pages
extern code unsigned char home[];
//extern code unsigned char form[];
extern code unsigned char io[];
extern code unsigned char reply[];
extern code unsigned char ad_disp[];
uint hitcnt=0;

// Dynamic Var (max.512+'\0'
// For ad_disp.html:
xdata uchar aval_0[5];
xdata uchar aval_1[5];
xdata uchar aval_2[5];
xdata uchar aval_3[5];

// For form.html:
/*xdata uchar name[21];
xdata uchar adr[5];
xdata uchar cont[12];*/

// For io.html:
xdata uchar En0[8];
xdata uchar En1[8];
xdata uchar En2[8];
xdata uchar En3[8];
xdata uchar sevseg[5];

xdata uchar C0[8];
xdata uchar C1[8];
xdata uchar C2[8];
xdata uchar C3[8];
xdata uchar C4[8];
xdata uchar C5[8];
xdata uchar C6[8];
xdata uchar Hcnt[6];


// Measures Channel 1-4
void ad_measure(void) {
  I2C_start();
	I2C_send (0x9e);			// Send address for IC x Write operation
	I2C_send (0x44);			// Set Output active, Auto increment and Channel 0
	I2C_send (0x80);
	I2C_stop();
	I2C_start();
	I2C_send (0x9f);			// Send adres for IC x Read operation
	I2C_get(1);					// Read last ADC conversion, and start A/D conversion on channel 0

	sprintf(aval_0,"%u",I2C_get(1)*2);
  sprintf(aval_1,"%u",I2C_get(1)*2);
  sprintf(aval_2,"%u",I2C_get(1)*2);
  sprintf(aval_3,"%u",I2C_get(0)*2);
	
	I2C_stop();
}

void set_chkbox(uchar val,xdata uchar* bfr) {
  if(val) {
    strcpy(bfr,"checked");
  }else{
    *bfr++=' ';
    *bfr++=0;
  }
}

void eval_io(void) {
  unsigned short tmp=((unsigned short)sevseg_data0)<<8|sevseg_data1;
  sprintf(sevseg,"%x",tmp);
  set_chkbox(sevseg_en&0x01,En0);
  set_chkbox(sevseg_en&0x02,En1);
  set_chkbox(sevseg_en&0x04,En2);
  set_chkbox(sevseg_en&0x08,En3);
  
  set_chkbox(P1&2,C0);
  set_chkbox(P1&4,C1);
  set_chkbox(P1&8,C2);
  set_chkbox(P1&0x10,C3);
  set_chkbox(P1&0x20,C4);
  set_chkbox(P1&0x40,C5);
  set_chkbox(P1&0x80,C6);
  
}

unsigned char atox_chr(char xchr) {
	unsigned char tmp=xchr-'0';
	if (tmp>9) tmp-=7;
	return tmp;
}

unsigned char isxdigit(char xchr) {
  xchr=toupper(xchr);
  if((xchr>='0' && xchr<='9') ||
    (xchr>='A' && xchr<='F')) return 1;
  return 0;
}

unsigned short atox(char xdata *s){
  unsigned short n=0;
  unsigned char tmp;

  while(*s) {
    if (isxdigit(*s)) {
      tmp=atox_chr(toupper(*s));
    }else tmp=0;
    n=(n<<4)|tmp;
    s++;
  }
  return n;
}

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

 hitcnt=0;
 sevseg_ctrl=01;
 sevseg_data0=0;
 sevseg_data1=0;
 sevseg_en=0;
 P1=0;
 I2C_init();
 _wait_ms(100);
 LCD_init();
 
 // A HTTP-Server with only passive sockets requires only an IP address

 if(Init_net()) {
  puts("<NET FAILURE>"); // Init Variables, Counter, ...
  sevseg_en=0xff;
  sevseg_data0=1;
  for(;;);
 }

 //COMPOSE_IP(my_ip,192,168,1,156); 

// Capture IP-Adress via DHCP
 COMPOSE_IP(my_ip,0,0,0,0);
 DHCP_SetIP();
 {
    char bfr[16];
    LCD_write_line("*FPGA-Webserver*",0);
    sprintf(bfr,"%u.%u.%u.%u  ",my_ip.bytes[0],my_ip.bytes[1],my_ip.bytes[2],my_ip.bytes[3]);
    LCD_write_line(bfr,1);
//    printf("My MAC: %02x:%02x:%02x:%02x:%02x:%02x\n", my_mac[0],my_mac[1],my_mac[2],my_mac[3],my_mac[4],my_mac[5]);
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

   if(*pc=='a') {
    ad_measure();
    webpage_bind(socket,ad_disp);
   }else if(*pc=='i'){
    eval_io();
    webpage_bind(socket,io);
//   }else if(*pc=='f'){
//    webpage_bind(socket,form);
   }else if(*pc=='r'){
    unsigned char en_tmp=0,p1_tmp=0;
    webpage_bind(socket,reply);
//    sevseg_en=0;
//    P1=0;
    //reply.html?A1=ON&A2=ON&A3=ON&A4=ON&A5=1234&A6=ON&A7=ON&A8=ON&A9=ON&A10=ON&A11=ON&A12=ON&A13=Peripherals+Setzen
    for(;;){
      i=url_getarg_no();
      if(!i) break;
      pc=url_getarg_str();
//      printf("Arg A%u: '%s'\n",i,pc); // Opt. Show Args...
      if(i>=1 && i<=4) {
        if(!strcmp(pc,"ON")) {
          en_tmp|=1<<(i-1);
        }
      }else if(i==5){
        unsigned short tmp=atox(pc);
        sevseg_data0=tmp>>8;
        sevseg_data1=tmp&0xff;
      }else if(i>=6 && i<=12) {
        if(!strcmp(pc,"ON")) {
          p1_tmp|=1<<(i-5);
        }
      }
      // ignore other Args...
    }
    P1=p1_tmp;
    sevseg_en=en_tmp;
    
   }else{
    hitcnt++;
    sprintf(Hcnt,"%u",hitcnt);
    webpage_bind(socket,home); // HOME
   }

/*   for(;;){
    i=url_getarg_no();
    if(!i) break;
    pc=url_getarg_str();

    printf("Arg A%u: '%s'\n",i,pc); // Opt. Show Args...

    if(i==1) strcpy(name,pc); // Copy without regarding max. len...
    else if(i==2) strcpy(cont,pc);
    else if(i==3) strcpy(adr,pc);    
   }*/


#ifdef LED
  }else if(res==EVENT_SOCKET_IDLETIMER){
              LED^=1; // *** BLINK LED ***
#endif
  }

     // else{ *** add a user-task here *** }

  } // for(;;)

}


// EOF
