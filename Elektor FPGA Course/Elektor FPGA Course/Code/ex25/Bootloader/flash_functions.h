// multiple inclusion avoidance
#ifndef FLASH_FUNCTIONS_H
#define FLASH_FUNCTIONS_H

#include "eboot.h"

// DEFINES
// *******

sfr  BANK_SEL   = 0xF9;
sfr  BANK_EN    = 0xF8;
sbit SRAMEN     = BANK_EN^6;
sbit ETHDIS     = BANK_EN^7;

// when defined do not make any write accesses to the flash
// #define DRY_RUN



// TYPE DEFINITIONS
// ****************
typedef unsigned long DWORD;
typedef union {
  DWORD l;
  unsigned char b[4];
} tAddr;

typedef struct {
  unsigned char	dwManufacturer;
  tAddr	dwDeviceCode;
#ifndef _ELEKTOR_
  unsigned char	bFlashReadOnly;
  unsigned char BootSectorFlag;
  unsigned char MaxBytes;
  unsigned char DeviceSize;
#endif
} FlashInfo;


/*
typedef volatile struct {
  unsigned uMCFG1;                        // 0x00
  unsigned uMCFG2;                        // 0x04
  unsigned uMCFG3;                        // 0x08
} tMCTRL;*/




#define rom_base  ((volatile unsigned char xdata*)0x8000)
//#define rom_base_l  ((unsigned long xdata*)0x8000)

#ifndef _ELEKTOR_

/*
// Macronix MX29LV800B (bottom boot block)	( 8 Mbit)
#define MX29LV800B 0x00c2225b
// Macronix MX29LV128M (128 Mbit)
#define MX29LV128M 0x00c2227e

// determine which flash is being used
#ifdef HPE_COMPACT
#define FLASH_TYPE MX29LV800B
#define FLASH_NUMWORDS 512 * 1024
#define FLASH_SECTORS  19
#else
#define FLASH_TYPE MX29LV128M
#define FLASH_NUMWORDS 8 * 1024 * 1024
#define FLASH_SECTORS 263
#endif
#define FLASH_BYTESPERWORD 2
#define FLASH_CHIPS 2*/


#define EIGHTK_SECTORS 8
#endif

#define AT29BV010 0x1F35


// FUNCTION PROTOTYPES
// *******************

void flash_reset();
bit erase_flash_chip(int secnr);
void flash_erase();
bit query_flash();
int get_flash_sector(unsigned short block_nr);
bit flash_write(unsigned short block_nr,unsigned char xdata* pData,int size);
void _wait_ms(unsigned int dly);

// end of multiple inclusion avoidance
#endif
