#ifndef _PS2_HID_
#define _PS2_HID_
// Translate-table: PS/2 make-codes => HID Usage ID
// Use make-code as Index
unsigned char code ps2_hid[]={0x00,    // 00	           
                              0x42,    // 01  F9         
                              0x00,    // 02             
                              0x3E,    // 03  F5         
                              0x3C,    // 04  F3         
                              0x3A,    // 05  F1         
                              0x3B,    // 06  F2         
                              0x45,    // 07  F12        
                              0x00,    // 08             
                              0x43,    // 09  F10        
                              0x41,    // 0A  F8         
                              0x3F,    // 0B  F6         
                              0x3D,    // 0C  F4         
                              0x2B,    // 0D  TAB        
                              0x35,    // 0E  `          
                              0x00,    // 0F             
                              0x00,    // 10             
                              0xE2,    // 11  L ALT      
                              0xE1,    // 12  L SHFT     
                              0x00,    // 13             
                              0xE0,    // 14  L CTRL     
                              0x14,    // 15  Q          
                              0x1E,    // 16  1          
                              0x00,    // 17             
                              0x00,    // 18             
                              0x00,    // 19             
                              0x1D,    // 1A  Z          
                              0x16,    // 1B  S          
                              0x04,    // 1C  A          
                              0x1A,    // 1D  W          
                              0x1F,    // 1E  2          
                              0x00,    // 1F             
                              0x00,    // 20             
                              0x06,    // 21  C          
                              0x1B,    // 22  X          
                              0x07,    // 23  D          
                              0x08,    // 24  E          
                              0x21,    // 25  4          
                              0x20,    // 26  3          
                              0x00,    // 27             
                              0x00,    // 28             
                              0x2C,    // 29  SPACE      
                              0x19,    // 2A  V          
                              0x09,    // 2B  F          
                              0x17,    // 2C  T          
                              0x15,    // 2D  R          
                              0x22,    // 2E  5          
                              0x00,    // 2F             
                              0x00,    // 30             
                              0x11,    // 31  N          
                              0x05,    // 32  B          
                              0x0B,    // 33  H          
                              0x0A,    // 34  G          
                              0x1C,    // 35  Y          
                              0x23,    // 36  6          
                              0x00,    // 37             
                              0x00,    // 38             
                              0x00,    // 39             
                              0x10,    // 3A  M          
                              0x0D,    // 3B  J          
                              0x18,    // 3C  U          
                              0x24,    // 3D  7          
                              0x25,    // 3E  8          
                              0x00,    // 3F             
                              0x00,    // 40             
                              0x36,    // 41  ,          
                              0x0E,    // 42  K          
                              0x0C,    // 43  I          
                              0x12,    // 44  O          
                              0x27,    // 45  0          
                              0x26,    // 46  9          
                              0x00,    // 47             
                              0x00,    // 48             
                              0x37,    // 49  .          
                              0x38,    // 4A  /          
                              0x0F,    // 4B  L          
                              0x33,    // 4C  ;          
                              0x13,    // 4D  P          
                              0x2D,    // 4E  -          
                              0x00,    // 4F             
                              0x00,    // 50             
                              0x00,    // 51             
                              0x34,    // 52  '          
                              0x00,    // 53             
                              0x2F,    // 54  [          
                              0x2E,    // 55  =          
                              0x00,    // 56             
                              0x00,    // 57             
                              0x39,    // 58  CAPS       
                              0xE5,    // 59  R SHIFT    
                              0x28,    // 5A  ENTER      
                              0x30,    // 5B  ]          
                              0x00,    // 5C             
                              0x31,    // 5D  Backslash
                              0x00,    // 5E             
                              0x00,    // 5F             
                              0x00,    // 60             
                              0x64,    // 61           !!!
                              0x00,    // 62             
                              0x00,    // 63             
                              0x00,    // 64             
                              0x00,    // 65             
                              0x2A,    // 66  BKSP       
                              0x00,    // 67             
                              0x00,    // 68             
                              0x59,    // 69  KP 1       
                              0x00,    // 6A             
                              0x5C,    // 6B  KP 4       
                              0x5F,    // 6C  KP 7       
                              0x00,    // 6D             
                              0x00,    // 6E             
                              0x00,    // 6F             
                              0x62,    // 70  KP 0       
                              0x63,    // 71  KP .       
                              0x5A,    // 72  KP 2       
                              0x5D,    // 73  KP 5       
                              0x5E,    // 74  KP 6       
                              0x60,    // 75  KP 8       
                              0x29,    // 76  ESC        
                              0x53,    // 77  NUM        
                              0x44,    // 78  F11        
                              0x57,    // 79  KP +       
                              0x5B,    // 7A  KP 3       
                              0x56,    // 7B  KP -       
                              0x55,    // 7C  KP *       
                              0x61,    // 7D  KP 9       
                              0x47,    // 7E  SCROLL     
                              0x00,    // 7F             
                              0x00,    // 80             
                              0xE6,    // 81  R ALT      
                              0x00,    // 82             
                              0x40,    // 83  F7         
                              0xE4,    // 84  R CTRL     
                              0x00,    // 85             
                              0x00,    // 86             
                              0x00,    // 87             
                              0x00,    // 88             
                              0x00,    // 89             
                              0x00,    // 8A             
                              0x00,    // 8B             
                              0x00,    // 8C             
                              0x00,    // 8D             
                              0x00,    // 8E             
                              0xE3,    // 8F  L GUI      
                              0x00,    // 90             
                              0x00,    // 91             
                              0x00,    // 92             
                              0x00,    // 93             
                              0x00,    // 94             
                              0x00,    // 95             
                              0x00,    // 96             
                              0xE7,    // 97  R GUI      
                              0x00,    // 98             
                              0x00,    // 99             
                              0x00,    // 9A             
                              0x00,    // 9B             
                              0x00,    // 9C             
                              0x00,    // 9D             
                              0x00,    // 9E             
                              0x65,    // 9F  APPS       
                              0x00,    // A0             
                              0x00,    // A1             
                              0x00,    // A2             
                              0x00,    // A3             
                              0x00,    // A4             
                              0x00,    // A5             
                              0x00,    // A6             
                              0x00,    // A7             
                              0x00,    // A8             
                              0x00,    // A9             
                              0x00,    // AA             
                              0x00,    // AB             
                              0x00,    // AC             
                              0x00,    // AD             
                              0x00,    // AE             
                              0x00,    // AF             
                              0x00,    // B0             
                              0x00,    // B1             
                              0x00,    // B2             
                              0x00,    // B3             
                              0x00,    // B4             
                              0x00,    // B5             
                              0x00,    // B6             
                              0x00,    // B7             
                              0x00,    // B8             
                              0x00,    // B9             
                              0x54,    // BA  KP /       
                              0x00,    // BB             
                              0x00,    // BC             
                              0x00,    // BD             
                              0x00,    // BE             
                              0x00,    // BF             
                              0x00,    // C0             
                              0x00,    // C1             
                              0x00,    // C2             
                              0x00,    // C3             
                              0x00,    // C4             
                              0x00,    // C5             
                              0x00,    // C6             
                              0x00,    // C7             
                              0x00,    // C8             
                              0x00,    // C9             
                              0x58,    // CA  KP ENTER   
                              0x00,    // CB             
                              0x00,    // CC             
                              0x00,    // CD             
                              0x00,    // CE             
                              0x00,    // CF             
                              0x00,    // D0             
                              0x00,    // D1             
                              0x00,    // D2             
                              0x00,    // D3             
                              0x00,    // D4             
                              0x00,    // D5             
                              0x00,    // D6             
                              0x00,    // D7             
                              0x00,    // D8             
                              0x4D,    // D9  END        
                              0x00,    // DA             
                              0x50,    // DB  L ARROW    
                              0x4A,    // DC  HOME       
                              0x00,    // DD             
                              0x00,    // DE             
                              0x00,    // DF             
                              0x49,    // E0  INSERT     
                              0x4C,    // E1  DELETE     
                              0x51,    // E2  D ARROW    
                              0x00,    // E3             
                              0x4F,    // E4  R ARROW    
                              0x52,    // E5  U ARROW    
                              0x00,    // E6             
                              0x00,    // E7             
                              0x00,    // E8             
                              0x00,    // E9             
                              0x4E,    // EA  PG DN      
                              0x00,    // EB             
                              0x46,    // EC  PRNT SCRN  
                              0x4B,    // ED  PG UP      
                              0x00,    // EE             
                              0x00};   // EF
                              
// Modifiers: index = ps2_hid[scan_code] - 0xE0
unsigned char code hid_modifiers[]={0x01,         // L CTRL
                                    0x02,         // L SHFT
                                    0x04,         // L ALT 
                                    0x08,         // L GUI 
                                    0x10,         // R CTRL
                                    0x20,         // R SHFT
                                    0x40,         // R ALT 
                                    0x80};        // R GUI 
                              
#endif





