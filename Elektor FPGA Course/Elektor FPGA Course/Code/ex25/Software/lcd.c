#include "i2c.h"

#define LCD_RS   0x20
#define LCD_R_Wn 0x40
#define LCD_E 0x80

#define LCD_I2C_DAT_ADR 0x42
#define LCD_I2C_CTL_ADR 0x40

unsigned char LCD_ctl_reg;

void LCD_init (void);

/*
void LCD_wait(void)
{
	unsigned int x;
	x=0xfffe;
	while (x>0) {x--;}
}*/

#define LCD_wait()

void LCD_write_dat (unsigned char dat)
{
	I2C_start();
	I2C_send (LCD_I2C_DAT_ADR);		// select IC8 to write to LCD-data
	I2C_send (dat);				// put data on LCD-data lines
	I2C_stop  ();
 	I2C_start();
	I2C_send (LCD_I2C_CTL_ADR);		// select IC6 to write to control lines
	LCD_ctl_reg |= LCD_RS;		// Registerselect '1' : select data
    I2C_send (LCD_ctl_reg);
 	LCD_ctl_reg &= ~LCD_R_Wn;	// R/Wn '0' : write
    I2C_send (LCD_ctl_reg);
	LCD_ctl_reg |= LCD_E;		// Enable '1' : validate cycle
    I2C_send (LCD_ctl_reg);
	LCD_ctl_reg &= ~LCD_E;		// Enable '0' : end of cycle
    I2C_send (LCD_ctl_reg);
	I2C_stop();
		
}

void LCD_wait_ready(void)
{
	unsigned char dat;
	dat = 0x80;
	while ((dat &0x80)!=0)
	{
		
		I2C_start();
		I2C_send (LCD_I2C_DAT_ADR);		// select IC8 to write to LCD-data
		I2C_send (0xff);		// set all outputs to high (and input)
		I2C_stop  ();

		I2C_start();
	    I2C_send (LCD_I2C_CTL_ADR);		// select IC6 to write to control lines
  		LCD_ctl_reg &= ~LCD_RS;			// RS '0' : Control register
    	I2C_send (LCD_ctl_reg);
 		LCD_ctl_reg |= LCD_R_Wn;		// R/Wn '1' : read
		I2C_send (LCD_ctl_reg);			// select control register to read
  		LCD_ctl_reg |= LCD_E;			// Enable '1' : validate cycle
    	I2C_send (LCD_ctl_reg);
		I2C_stop();
	
		I2C_start();
		I2C_send (LCD_I2C_DAT_ADR+1);	// select IC8 to read from LCD-data
		dat=I2C_get(1);					// read status
		I2C_stop();

		I2C_start();
	    I2C_send (LCD_I2C_CTL_ADR);		// select IC6 to write to control lines
		LCD_ctl_reg &= ~LCD_E;			// Enable '0' : end of cycle
    	I2C_send (LCD_ctl_reg);
		I2C_stop();
	}		
}

void LCD_write_cmd (unsigned char dat)
{
	I2C_start();
	I2C_send (LCD_I2C_DAT_ADR);		// select IC8 to write to LCD-data
	I2C_send (dat);			// put data on LCD-data lines
	I2C_stop  ();
	I2C_start();
	I2C_send (LCD_I2C_CTL_ADR);		// select IC6 to write to control lines
	LCD_ctl_reg &= ~LCD_RS;			// RS '0' : Control register
    I2C_send (LCD_ctl_reg);
  	LCD_ctl_reg &= ~LCD_R_Wn;		// R/Wn '0' : write
    I2C_send (LCD_ctl_reg);
    I2C_send (LCD_ctl_reg);
	LCD_ctl_reg |= LCD_E;		// Enable '1' : validate cycle
    I2C_send (LCD_ctl_reg);
	LCD_ctl_reg &= ~LCD_E;		// Enable '0' : end of cycle
    I2C_send (LCD_ctl_reg);
	I2C_stop();
	LCD_wait();		// Wait until command is executed
}

void LCD_init(void)
{
  LCD_ctl_reg = 0x00;     // initialize control-lines
  LCD_wait_ready ();
  _wait_ms (35);          // wait for more than 30mSec after Power supply to LCD
                          // rises above 4,5 volt
  LCD_write_cmd (0x38);   // Function Set : 8 bit, 2 lines, 5x7 dots
  _wait_ms (2);
  LCD_write_cmd (0x38);   // Function Set : 8 bit, 2 lines, 5x7 dots
  _wait_ms (2);
  LCD_write_cmd (0x0c);   // Display ON/OFF : display ON, cursor blink OFF, cursor OFF
  _wait_ms (1);
  LCD_write_cmd (0x01);   // Clear Display
  _wait_ms (2);
  LCD_write_cmd (0x02);   // Return Home
  _wait_ms (2);
  LCD_write_cmd (0x06);   // Entry Mode : Increment, Shift OFF
  _wait_ms(1);
  LCD_write_cmd (0x40);
  _wait_ms(1);
  LCD_write_cmd (0x80);
  _wait_ms(1);

}

void LCD_write_line(char *str,unsigned char line)
{
	unsigned char nr=0;
	if (line==0) LCD_write_cmd (0x80);	// DDRAM pointer 0   (first line)
	else LCD_write_cmd (0xc0);			// DDRAM pointer x40 (line nr 1)
	while ((*str!=0)&&(nr<16)) {LCD_write_dat (*str++);nr++;} // write to the LCD-data register as
										// long as the string didn't and haven't written 16 characters
	while (nr++<16) {LCD_write_dat (' ');} // fill the rest of the line with ' '
}
