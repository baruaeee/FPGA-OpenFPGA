#include <stdio.h>
#include <reg52.h>


#define SDA_HIGH {P0_B0=1; I2C_delay();}
#define SCL_HIGH {P0_B1=1; while (!P0_B1);I2C_delay();}
#define SDA_LOW  {P0_B0=0; I2C_delay();}
#define SCL_LOW  {P0_B1=0; I2C_delay();}

// function prototypes

void I2C_start(void);
void I2C_stop(void);

// functions
void I2C_init (void)
{
	P0=0xff;          // set the port P0 to a know state
//	I2C_start();			// reset the I2C-bus.
	I2C_stop();
	I2C_stop();
}

void I2C_delay(void)
{
  unsigned char x;
  for (x=0;x<190;x++){};
}

void I2C_start(void)
{
//  SDA_HIGH;		
//  SCL_HIGH
  SDA_LOW
  SCL_LOW
}

void I2C_stop (void)			// Assumes SCL and SDA are low at entry
{ 
//  SCL_LOW;
  SDA_LOW
  SCL_HIGH
  SDA_HIGH
}

unsigned char I2C_send ( unsigned char dat)
{
  unsigned char x;
//  bit unsigned char ack;
  for (x=0;x<8;x++)
  {
    if (dat & 0x80) SDA_HIGH else SDA_LOW
    SCL_HIGH
    SCL_LOW
    dat = dat <<1;
  }
  SDA_HIGH
  SCL_HIGH
  x=(P0_B0)?1:0;
//  ack = P0_B0;			// read the input SDA
  SCL_LOW
  SDA_LOW
//  if (ack==0) return 1; else return 0;  
  return x;
}

unsigned char I2C_get (unsigned char ack)
{
  unsigned char dat=0,x;
  SDA_HIGH							// SDA goes high (undriven)
  for (x=0;x<8;x++)
  {
	  SCL_HIGH
//    if ((P0 & 0x40)==0x40) dat=(dat<<1)+1; else dat=dat<<1;
    if (P0_B0) dat=(dat<<1)+1; else dat=dat<<1;
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
