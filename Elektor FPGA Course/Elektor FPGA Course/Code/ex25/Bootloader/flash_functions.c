#include <reg52.h>
#include <stdio.h>
#include <string.h>
#include <math.h>
#include "eboot.h"
#include "flash_functions.h"

FlashInfo idata FI;

extern bit ram_write;

void flash_reset() {
  BANK_SEL=0;
  ETHDIS=1;SRAMEN=0;
  rom_base[0x5555] = 0xaa;
  rom_base[0x2aaa] = 0x55;
  rom_base[0x5555] = 0xF0;
  _wait_ms(20);
  ETHDIS=0;SRAMEN=1;
}

// negative return value indicates failure
bit query_flash() {
//  int i;
  unsigned char man_code = 0xff;
  unsigned char dev_code = 0xff;
  if(!ram_write) {
    // try to find an ATMEL Flash (Elektor Board)
    BANK_SEL=0x0;
    ETHDIS=1;SRAMEN=0;
    rom_base[0x5555] = 0xaa;
    rom_base[0x2aaa] = 0x55;
    rom_base[0x5555] = 0x90;
    _wait_ms(20);
    man_code    = rom_base[0];
    dev_code    = rom_base[1];
  
    FI.dwManufacturer = man_code;
    FI.dwDeviceCode.l=0;
    FI.dwDeviceCode.b[0]= dev_code;
  
    sevseg_data0=man_code;sevseg_data1=dev_code;
  
    // put flash back into read mode
    flash_reset();    
    return (man_code!=(AT29BV010>>8) || dev_code!=(AT29BV010&0xff));
  }else return 0;
}
/*
void flash_erase() {
  BANK_SEL=0x0;
  ETHDIS=1;SRAMEN=0;
    rom_base[0x5555] = 0xaa;
    rom_base[0x2aaa] = 0x55;
    rom_base[0x5555] = 0x80;
    rom_base[0x5555] = 0xaa;
    rom_base[0x2aaa] = 0x55;
    rom_base[0x5555] = 0x10;
    _wait_ms(30);
  ETHDIS=0;SRAMEN=1;
}*/

bit flash_write(unsigned short block_nr,unsigned char xdata* pData,int size) {
  unsigned char i,sec=0;
  unsigned char xdata* pFlash=rom_base+((block_nr*512) & 0x7fff);
//  int secnr;
  unsigned char banks;
  {
    unsigned char tmp=block_nr>>6;
    banks=tmp&0x3f;
  } 
  BANK_SEL=0x0;
  ETHDIS=1;SRAMEN=ram_write;
  sevseg_data0=block_nr;
  sevseg_data1=block_nr>>8;
  while(size>0) {
    u_char b;
    if(!ram_write) {
      rom_base[0x5555] = 0xaa;
      rom_base[0x2aaa] = 0x55;
      rom_base[0x5555] = 0xA0;
    }
    BANK_SEL=banks;
    for(i=0;i<128;i++) {
      b=*pData++;
      *pFlash++=b;     
//      sevseg_data1=b;
     }
//    if(!ram_write) {
      _wait_ms(1);
    
      pFlash--;
      while(*pFlash!=b);
      pFlash++;
//    }
    size-=128;
  }
//  BANK_SEL=0;
  ETHDIS=0;SRAMEN=1;
  return 0;
}


