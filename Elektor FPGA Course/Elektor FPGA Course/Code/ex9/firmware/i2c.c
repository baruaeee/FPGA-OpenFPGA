#include <stdio.h>

// declare variables
unsigned char prev_P0; 		// store the last value send to port P0. Sbit functions done not (yet) 
							// work properly in the T8051-core
				  			// special function register P0 at location 0x80
sfr at 0x80 P0;

#define SDA_HIGH {prev_P0 = prev_P0 | 0x01; P0 = prev_P0; I2C_delay();}
#define SCL_HIGH {prev_P0 = prev_P0 | 0x02; P0 = prev_P0; while ((P0&0x80)==0){};I2C_delay();}
#define SDA_LOW  {prev_P0 = prev_P0 & 0xFE; P0 = prev_P0; I2C_delay();}
#define SCL_LOW  {prev_P0 = prev_P0 & 0xFD; P0 = prev_P0; I2C_delay();}

// function prototypes

void I2C_start(void);
void I2C_stop(void);

// functions
void I2C_init (void)
{
	prev_P0=0xff;			// set the port P0 to a know state
	P0=prev_P0;
	I2C_start();			// reset the I2C-bus.
	I2C_stop();
}

void I2C_delay(void)
{
  int x;
  for (x=0;x<50;x++){};
}

void I2C_start(void)
{
  SDA_HIGH		
  SCL_HIGH
  SDA_LOW
  SCL_LOW
}

void I2C_stop (void)			// Assumes SCL and SDA are low at entry
{ 
  SCL_LOW
  SDA_LOW
  SCL_HIGH
  SDA_HIGH
}

unsigned char I2C_send ( unsigned char dat)
{
  unsigned char x,ack;
  for (x=0;x<8;x++)
  {
    if (dat & 0x80) SDA_HIGH else SDA_LOW
    SCL_HIGH
    SCL_LOW
    dat = dat <<1;
  }
  SDA_HIGH
  SCL_HIGH
  ack = P0;			// read the input SDA
  SCL_LOW
  SDA_LOW
  if ((ack&0x40)==0) return 1; else return 0;  
}

unsigned char I2C_get (unsigned char ack)
{
  unsigned char dat,x;
  SDA_HIGH							// SDA goes high (undriven)
  for (x=0;x<8;x++)
  {
	SCL_HIGH
    if ((P0 & 0x40)==0x40) dat=(dat<<1)+1; else dat=dat<<1;
    SCL_LOW
  }
  if (ack) 
    SDA_LOW							// if wanted, we will ACK the transmission
  else
    SDA_HIGH						// else we just don't!!!
  SCL_HIGH							// create a last clock-pulse
  SCL_LOW
  SDA_LOW							// exit the function with both signals in a low state
  return (dat);    
}
