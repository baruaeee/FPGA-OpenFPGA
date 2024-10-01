#include <stdio.h>
#include <string.h>
#include "i2c.h"
#include "lcd.h"

// Define the I/O-ports
sfr at 0x80 P0;
sfr at 0x90 P1;
sfr at 0xA0 P2;
sfr at 0xB0 P3;

xdata char strbuf[32];

unsigned int convert_ad_to_volt (unsigned int ad_result)
{
	const unsigned int weights[8] = {25000,12500,6250,3125,1563,781,390,195};		// Weights of the databits in A/D conversion in 0,1 mV units
 	unsigned int result;
	result=0;
  	if (ad_result & 0x80) result +=weights[0];
	if (ad_result & 0x40) result +=weights[1];
	if (ad_result & 0x20) result +=weights[2];
	if (ad_result & 0x10) result +=weights[3];
	if (ad_result & 0x08) result +=weights[4];
	if (ad_result & 0x04) result +=weights[5];
	if (ad_result & 0x02) result +=weights[6];
	if (ad_result & 0x01) result +=weights[7];
    return (result);
}

void print_voltage(char* str,unsigned int dat,unsigned char position)
{
  const char nibble[16] = {'0','1','2','3','4','5','6','7','8','9','a','b','c','d','e','f'};
  unsigned int count;
  count=0;
  while (dat>=10000) {count++; dat=dat-10000;}		// extract the 1Volt-units
  str [position]=nibble[count];
  str [position+1]='.';
  count=0;
  while (dat>=1000) {count++; dat=dat-1000;}			// extract the 0.1Volt-units
  str [position+2]=nibble[count];
  count=0;
  while (dat>=100) {count++; dat=dat-100;}		// extract the 0.01Volt-units
  str [position+3]=nibble[count];

}

void main (void)
{
  xdata  unsigned char ad0,ad1,ad2,ad3;
  unsigned int count,count2;

  P1=0x00;	// Disable the LED's

  I2C_init();
  for (count=0;count<20;count++)
	for (count2=0;count2<0x0ffe;count2++);
  I2C_init();
  LCD_init();
  LCD_write_line (" ex9: 4-channel",0);
  LCD_write_line (" A/D-conversion",1);

// Delay to make the starup-message vissible

  for (count=0;count<2000;count++)
	for (count2=0;count2<0x0ffe;count2++);

// The actual loop where we measure the voltage on the 4 analog inputs of the experimentboard
// and display them on the LCD

  while (1)
  {
	I2C_start();
	I2C_send (0x9e);			// Send adres for IC x Write operation
	I2C_send (0x44);			// Set Output active, Auto increment and Channel 0
	I2C_send (0x80);
	I2C_stop();
	I2C_start();
	I2C_send (0x9f);			// Send adres for IC x Read operation
	I2C_get(1);					// Read last ADC conversion, and start A/D conversion on channel 0
	ad0=I2C_get (1);			// Read ADC conversion on channel 0, and start A/D conversion on channel 1
	ad1=I2C_get (1);			// Read ADC conversion on channel 1, and start A/D conversion on channel 2
	ad2=I2C_get (1);			// Read ADC conversion on channel 2, and start A/D conversion on channel 3
	ad3=I2C_get (0);			// Read ADC conversion on channel 3, and start A/D conversion on channel 0
	I2C_stop();

	// convert the conversion results and print these to the LCD

    sprintf(strbuf,"1: .  V 2: .  V ");
	ad2=convert_ad_to_volt(ad2);
	ad3=convert_ad_to_volt(ad3);
	print_voltage (strbuf,convert_ad_to_volt(ad0),2);
	print_voltage (strbuf,convert_ad_to_volt(ad1),10);
	LCD_write_line (strbuf,0);
    sprintf(strbuf,"3: .  V 4: .  V ");
	print_voltage (strbuf,ad2,2);
	print_voltage (strbuf,ad3,10);
	LCD_write_line (strbuf,1);

	// Short delay
	    
	for (count=0;count<10;count++)
	  for (count2=0;count2<0x0ffe;count2++);
  }
}
