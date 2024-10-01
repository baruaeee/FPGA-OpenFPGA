// definitions of I2C functions

void I2C_start(void);
void I2C_stop (void);
void I2C_init (void);
unsigned char I2C_send ( unsigned char dat);
unsigned char I2C_get (unsigned char ack);
