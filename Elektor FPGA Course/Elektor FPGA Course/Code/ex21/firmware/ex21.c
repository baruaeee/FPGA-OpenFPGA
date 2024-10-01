/* $Workfile:   ex21.c $									  								*/
/* $Revision: 1.1 $                                            	*/
/* $Author: hse00045 $                           								*/
/* $Date: 2006/06/05 18:12:12 $																	*/
/* Description:	4-in-aline game                                 */
/*																											        */
/* Remarks:     No remarks.                                     */
#include <8052.h>

// Standard Input/Output functions
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "fpga_reg.h" 
#include "fpga_lib.h"
#include "kb.h"
#include "delay.h"

// Declare your global variables here

void NewGame(void);
void DrawStone(unsigned char Column, unsigned char Row, char Type);
void DropStone(unsigned char Column);
void UndoMove(void);
void FlashWinningLine(void);
void AddStone(unsigned char Column);
void DelStone(void);
void AutoMove(void);
int NextSearchLevel(unsigned char Depth, int BestSoFar) reentrant;
int GetScore(void);


// PS2-keyb
// 0=0x45 / 0xF0,0x45
// 1=0x16 / 0xF0,0x16
// 2=0x1E / 0xF0,0x1E
// 3=0x26 / 0xF0,0x26
// 4=0x25 / 0xF0,0x25
// 5=0x2E / 0xF0,0x2E
// 6=0x36 / 0xF0,0x36
// 7=0x3D / 0xF0,0x3D
// 8=0x3E / 0xF0,0x3E
// 9=0x46 / 0xF0,0x46
// F1=0x05 / 0xF0,0x05
// F2=0x06 / 0xF0,0x06
// F3=0x04 / 0xF0,0x04
// F4=0x0C / 0xF0,0x0C

/* Stone types */

#define EMPTY  	-1
#define PLAYER_1	0
#define PLAYER_2	1

/* Board screen locations */

#define BOARD_X	12
#define BOARD_Y	12

/* Player Modes */

#define TWO_PLAYER	0
#define ONE_PLAYER	1

/* Scores for number of stones in win lines */

#define SCORE_1	1
#define SCORE_2	6
#define SCORE_3	13

/*
	Global Variables
*/

unsigned char NextPlayer;
unsigned char idata ColumnHeight[7];
unsigned char xdata WinLineStones[2][70];
unsigned char xdata History[42];
unsigned char MoveNumber;
unsigned char WinningLine;
unsigned char PlayerMode;


code unsigned char Stone[]={  0x00,0x00,0x00,0x00,0x00,0x01,0x03,0x07, // 0x04
                               0x07,0x0f,0x1f,0x1f,0x1f,0x1f,0x3f,0x3f,
                               0x3f,0x3f,0x1f,0x1f,0x1f,0x1f,0x0f,0x07, // 0x05
                               0x07,0x03,0x01,0x00,0x00,0x00,0x00,0x00,
                               0x00,0x00,0x03,0x3f,0x7f,0xff,0xff,0xff,	// 0x06
                               0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,
                               0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,	// 0x07
                               0xff,0xff,0xff,0x7f,0x3f,0x03,0x00,0x00,
                               0x00,0x00,0xc0,0xfc,0xfe,0xff,0xff,0xff,	// 0x08
                               0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,
                               0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,	// 0x09
                               0xff,0xff,0xff,0xfe,0xfc,0xc0,0x00,0x00,
                               0x00,0x00,0x00,0x00,0x00,0x80,0xc0,0xe0,	// 0x0a
                               0xe0,0xf0,0xf8,0xf8,0xf8,0xf8,0xfc,0xfc,
                               0xfc,0xfc,0xf8,0xf8,0xf8,0xf8,0xf0,0xe0, // 0x0b
                               0xe0,0xc0,0x80,0x00,0x00,0x00,0x00,0x00};
                               
 
code unsigned char WinMap[4][42]={{0x81, 0x02, 0x03, 0x04, 0x00, 0x00, 0x00,
							 0x85, 0x06, 0x07, 0x08, 0x00, 0x00, 0x00,
							 0x89, 0x0A, 0x0B, 0x0C, 0x00, 0x00, 0x00,
							 0x8D, 0x0E, 0x0F, 0x10, 0x00, 0x00, 0x00,
							 0x91, 0x12, 0x13, 0x14, 0x00, 0x00, 0x00,
							 0x95, 0x16, 0x17, 0x18, 0x00, 0x00, 0x00},
							 
							{0x99, 0x9A, 0x9B, 0x9C, 0x9D, 0x9E, 0x9F,
							 0x20, 0x21, 0x22, 0x23, 0x24, 0x25, 0x26,
							 0x27, 0x28, 0x29, 0x2A, 0x2B, 0x2C, 0x2D,
							 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
							 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
							 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00},
              {0xAE, 0xAF, 0xB0, 0xB1, 0x80, 0x80, 0x80,
							 0xB2, 0x33, 0x34, 0x35, 0x00, 0x00, 0x00,
							 0xB6, 0x37, 0x38, 0x39, 0x00, 0x00, 0x00,
							 0x80, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
							 0x80, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
							 0x80, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00},
              {0x80, 0x80, 0x80, 0xBA, 0xBB, 0xBC, 0xBD,
							 0x00, 0x00, 0x00, 0x3E, 0x3F, 0x40, 0xC1,
							 0x00, 0x00, 0x00, 0x42, 0x43, 0x44, 0xC5,
							 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x80,
							 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x80,
							 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x80}};
							 
code unsigned char WinMapDirection[4]={1,7,8,6};
// Simple random number generator
#define RAND_MAX        0x7fffffff

static long do_rand(unsigned long *ctx)
{
  return ((*ctx = *ctx * 1103515245UL + 12345UL) % ((unsigned long)RAND_MAX + 1));
}

long rand_r(unsigned long *ctx)
{
  unsigned long val = (unsigned long) *ctx;
  
    *ctx = do_rand(&val);
    return (long) *ctx;
}

static unsigned long next = 1;

long rand(void)
{
  return do_rand(&next);
}

void srand(unsigned long seed)
{
  next = seed;
}

void _wait_ms(unsigned int dly) {
  _asm
  .globl _wait_ms
_wait_ms:  
        mdly = 25000
        
        mov R7,dpl    ; Argument passed in DPTR
        mov R6,dph
        mov A,R7 			; Low
       	jz wt1  
       	inc R6
wt1: 	  mov DPTR,#(65536-(mdly/8))		;mov DPTR,#(-1000000/CPU_NSEC/6)
wt2: 	  inc DPTR ;  1
       	mov A,DPH ; 2
       	orl A,DPL ; 2
       	jnz wt2 ;  3 = 8 cycles @ 25 MHz
       	djnz R7,wt1 
       	djnz R6,wt1 
       	ret
  _endasm;
}

void DefineStone() {

	VIDEO_CTRL=VIDEO_ON|VIDEO_60HZ|CG_WREN;
	select_cgmem();
	memcpy((char xdata*)VIDEO_BASE+16*4,	Stone,sizeof(Stone));
  VIDEO_CTRL=VIDEO_ON|VIDEO_60HZ;	

}

//#define MON51

void main(void)
{
	unsigned char tmp;
  TMOD = 1;
#ifndef MON51
  SCON = 0x52;    /* SCON */ 
  T2CON=0;
  RCAP2L=0xAE;			   // 9600 Baud @ 25 MHz
//  RCAP2L=0xcc;			// 9600 Baud @ 16 MHz
  RCAP2H=0xff;
  T2CON=0x30;
  TR2=1;
#endif
  TR0=1;

/*sevseg_ctrl=01;
sevseg_data0=0x12;
sevseg_data1=0x34;
sevseg_en=0xff;*/
InitScreen();
//_wait_ms(1000);
init_kb();
EA=1;  // Enable all IRQ
//VIDEO_BGCOL = 0x02;	// dark blue
DefineStone();

CURS_ZEILE=4;
CURS_SPALTE=0;
//RndInit(0x1235);
{
  unsigned long seed=(0x1235^((int)TH0<<8|TL0));
  srand(seed);
}

while (1) {
	int key;

   SetCurrentColor(YELLOW);
//   textbackground(RED); 
  SetCurrentBkColor(RED);
  Gotoxy(30,1);
	WriteScreen(" 4-IN-A-LINE on Elektor FPGA ");
	Gotoxy(30,2);
	WriteScreen(" *************************** ");
	SetCurrentColor(LIGHTBLUE);
	Gotoxy(VIDEO_SPALTEN-20,VIDEO_ZEILEN-1);
	SetCurrentBkColor(CYAN);
	WriteScreen("(c) by A.Voggeneder");
	SetCurrentBkColor(BLACK);
  SetCurrentColor(LIGHTGRAY);
//   textbackground(BLACK);
   Gotoxy(10, 5);
   WriteScreen("F1 = New Game");
   Gotoxy(10, 6);
   WriteScreen("F2 = Undo");
   Gotoxy(10, 7);
   WriteScreen("F3 = Two Player");
   Gotoxy(10, 8);
   WriteScreen("F4 = One Player / Auto move");
   Gotoxy(10, 10);
   WriteScreen("Select column with keys 1 to 7");
   WriteScreenxyf(10,12,"One Player mode");
   
   NewGame();
   PlayerMode = ONE_PLAYER;
   do{
      if(WinningLine!=0)
      {
      	FlashWinningLine();
      	key=0x81;
      }else{
		 		key=getkbdchar();
		  }
      if(key>=0x81)
      {
         	//* Extened Key Press 
            switch(key)
            {
            	case 0x81:	// F1 = New Game 
               	NewGame();
                  break;

               case 0x82: // F2 = Undo 
               	
               	
               	tmp=1;
              		do {
              			UndoMove();
              		} while( PlayerMode == ONE_PLAYER && tmp--);
               	
                  break;

               case 0x83: // F3 = Two Player  
               	WriteScreenxyf(10,12,"Two Player mode");
               	PlayerMode = TWO_PLAYER;
                  break;

               case 0x84: // F4 = One Player / Auto move 
               	WriteScreenxyf(10,12,"One Player mode");
               	PlayerMode = ONE_PLAYER;
                  AutoMove();
                  break;

            	default:
               	key=0;
            }
      }
      	if(key >= '1' && key <= '7')
         {
         	DropStone(key-'1');
            if(WinningLine==0 && PlayerMode != TWO_PLAYER)
            	AutoMove();
         }
   }while(1); 
//   clrscr();
//   return 0;      
   };
}

#define gotoxy Gotoxy
#define textcolor SetCurrentColor
#define cprintf WriteScreenf  
#define delay _wait_ms
void NewGame(void)
{
	unsigned char i,j;

//   randomize();
   /* Reset column height array */
   for(i=0;i!=7;i++)
   {
   	ColumnHeight[i]=0;
	}

   /* Clear WinLineStone counters */
   for(i=1;i!=70;i++)
   {
   		WinLineStones[PLAYER_1][i]=0;
      WinLineStones[PLAYER_2][i]=0;
   }

   /* Set intial player */
   NextPlayer = PLAYER_1;

   WinningLine=0;
   MoveNumber = 0;

   /* Draw Empty Board */
   SetCurrentBkColor(BLUE);
   for(j=0;j!=6;j++)
   {
//     	textbackground(BLUE);
//		gotoxy(BOARD_X-1, BOARD_Y+6-j);
//     	cprintf("               ");
   	for(i=0;i!=7;i++)
      {
			DrawStone(i, j, EMPTY);
      }
   }
//   textbackground(BLUE);
   textcolor(LIGHTCYAN);
	{
		gotoxy(BOARD_X, BOARD_Y+12+2);
//		WriteScreen(bfr);
		WriteScreen(" 1   2   3   4   5   6   7   ");
		for(i=BOARD_Y+2;i<=(BOARD_Y+12+2);i++) {
			 gotoxy(BOARD_X-1, i);	
		   putchar2(' ');
		   gotoxy(BOARD_X+28, i);	
		   putchar2(' ');
		}
	}
}

/*
	FUNCTION		DrawStone

   This function draws a stone on the screen of 'Type' at
   location Row, Column
*/
void DrawStone(unsigned char Column, unsigned char Row, signed char Type)
{
	
	SetCurrentBkColor(BLUE);
   switch(Type)
   {
   	case EMPTY:
    		textcolor(DARKGRAY);
        break;
      case PLAYER_1:
				textcolor(LIGHTGREEN);
        break;
      case PLAYER_2:
      	textcolor(LIGHTRED);
				break;
   }
  
   gotoxy(Column * 4 + BOARD_X, BOARD_Y + (6 - Row)*2);
   writechar2(0x04);
   gotoxy(Column * 4 + BOARD_X, BOARD_Y + (6 - Row)*2+1);
   writechar2(0x05);
   
   
   gotoxy(Column * 4 + BOARD_X+1, BOARD_Y + (6 - Row)*2);
   writechar2(0x06);
   gotoxy(Column * 4 + BOARD_X+1, BOARD_Y + (6 - Row)*2+1);
   writechar2(0x07);
   
   
   gotoxy(Column * 4 + BOARD_X+2, BOARD_Y + (6 - Row)*2);
   writechar2(0x08);
   gotoxy(Column * 4 + BOARD_X+2, BOARD_Y + (6 - Row)*2+1);
   writechar2(0x09);
   
   gotoxy(Column * 4 + BOARD_X+3, BOARD_Y + (6 - Row)*2);
   writechar2(0x0a);
   gotoxy(Column * 4 + BOARD_X+3, BOARD_Y + (6 - Row)*2+1);
   writechar2(0x0b);
   
}

void DropStone(unsigned char Column)
{
	int Count;
	unsigned char Row;

	if(WinningLine == 0 && ColumnHeight[Column]<6)
   {
      Row = 5;
      Count = 6 - ColumnHeight[Column];
      do{
      	DrawStone(Column, Row, NextPlayer);
         if(--Count==0)
         {
         	break;
         }
         delay(70);
         DrawStone(Column, Row, EMPTY);
         Row--;
		}while(1);
      delay(70);
   	AddStone(Column);
   }
}

void UndoMove(void)
{
	int Column;

   if(MoveNumber>0)
   {
		DelStone();
 		Column = History[MoveNumber];
      DrawStone(Column, ColumnHeight[Column], EMPTY);
   }
}

void FlashWinningLine(void)
{
	unsigned char i,j,Index=0;
	char Direction=0,FlashState;

   for(i=0;i!=4;i++)
   {
   	for(j=0;j!=42;j++)
      {
      	if(WinMap[i][j] == WinningLine)
         {
         	  Direction = WinMapDirection[i];
            Index = j;
         }
      }
	}

   FlashState = EMPTY;

   do{
   		j=Index;
   		for(i=0;i!=4;i++)
         {
         	DrawStone(j%7,j/7,FlashState);
            j += Direction;
         }
         if(FlashState == EMPTY)
         {
         	if(NextPlayer == PLAYER_1)
            {
            	FlashState = PLAYER_2;
            }
            else
            {
            	FlashState = PLAYER_1;
            }
         }
         else
         {
         	FlashState = EMPTY;
         }
//         delay(500);
			i=10;
			do {
				delay(50);
			}while(!kbhit() && --i);
//			}while(!GetKeyPad()&&--i);
			i=0;
			if(kbhit()) {
				i=getkbdchar();
			}
   }while(i!=0x81); //!kbhit());
   
}



void AddStone(unsigned char Column)
{
	unsigned char i,j,k;

	/* Return if column is full */
	if(ColumnHeight[Column]==6)
   	return;

   /* Store move in history array and increase index */
	History[MoveNumber++] = Column;

   /* For each direction ... */
	for(i=0; i!=4 ; i++)
   {
   	/* Get index to WinMap for new stone location */
		j = Column + (ColumnHeight[Column]*7);
      /* for a maximum of 4 time's... */
      for(k=0;k!=4;k++)
      {
      	/* Check for valid win number */
      	if((WinMap[i][j]&0x7f))
         {
         	/* Add 1 to stone counter for this win line */
      		if(++WinLineStones[NextPlayer][(WinMap[i][j]&0x7F)]==4)
            	/* If 4 stones are in this line flag as winner */
         		WinningLine = WinMap[i][j];
         }
         /* Terminate loop if at edge of board */
         if((WinMap[i][j]&0x80))
         		break;
         /* Move index in direction of map */
      	j -= WinMapDirection[i];
      }
   }
   /* Add 1 to column height */
	ColumnHeight[Column]++;
   /* Change player */
 	if(NextPlayer==PLAYER_1)
   	NextPlayer = PLAYER_2;
   else
   	NextPlayer = PLAYER_1;
}

/*
	FUNCTION		DelStone

   This funtion removes the last stone dropped from the WinLineStone counters
   and ColumnHeight array. It also changes the player.

*/

void DelStone()
{
   unsigned char i,j,k,Column;

   /* Return if no moves to undo */
   if(MoveNumber==0)
   	return;

   /* No winning line */
   WinningLine = 0;

   /* Change player */
   if(NextPlayer == PLAYER_1)
   	NextPlayer = PLAYER_2;
   else
   	NextPlayer = PLAYER_1;

   /* Get last move column and decrease move index */
   Column = History[--MoveNumber];

   /* Decrease column height */
   ColumnHeight[Column]--;

   /* For each direction ... */
	for(i=0; i!=4 ; i++)
   {
   	/* Get index to WinMap for  stone location */
		j = Column + (ColumnHeight[Column]*7);
      /* for a maximum of 4 time's... */
      for(k=0;k!=4;k++)
      {
      	/* Check for valid win number */
      	if((WinMap[i][j]&0x7f))
         	/* Subtract 1 from stone counter for this win line */
      		--WinLineStones[NextPlayer][(WinMap[i][j]&0x7F)];
         /* Terminate loop if at edge of board */
         if((WinMap[i][j]&0x80))
         		break;
         /* Move index in direction of map */
      	j -= WinMapDirection[i];
      }
   }
}

void AutoMove(void)
{
	int xdata MoveScore[7], Best; 
	unsigned char i,Column;
	
	WriteScreenxyf(20,29,"Thinking ...");
   Best = -128;
   Column = 0;
   for(i=0;i!=7;i++)
   {
   	if(ColumnHeight[i]==6)
      {
      	MoveScore[i]= -128;
      	continue;
      }
      AddStone(i);
      if(WinningLine)
      	MoveScore[i] = 127;
   	else
   		MoveScore[i] = NextSearchLevel(4,-128);
      if(MoveScore[i]>Best)
      {
      	Best = MoveScore[i];
         Column = i;
      }

      DelStone();
   }
	DropStone(Column);
	WriteScreenxyf(20,29,"            ");
}


int NextSearchLevel(unsigned char Depth, int BestSoFar) reentrant
{
	int Best=-127,j;
	unsigned char i;


   if(Depth==0)
   	return GetScore();


   for(i=0;i!=7 ;i++)
   {
   	if(ColumnHeight[i]!=6)
    {
			AddStone(i);
      if(WinningLine)
        Best = (int)122+Depth;
			  j = NextSearchLevel(Depth-1, Best);
        if(j>Best)
         	Best = j;
        DelStone();
        if(Best==(int)122+Depth)
         	break;
      }

      if(BestSoFar >= -Best)
      	break;
   }

   if(Best == -127)
    return 0;
   else
    return -Best;
}

int GetScore(void)
{
	int score;
	unsigned char i;

   score = 0;
   for(i=1;i!=70;i++)
   {
   	if(WinLineStones[PLAYER_2][i]==0 || WinLineStones[PLAYER_1][i]==0)
      {
       	switch(WinLineStones[PLAYER_2][i])
        	{
        		case 1:score+=SCORE_1;break;
           	case 2:score+=SCORE_2;break;
           	case 3:score+=SCORE_3;break;
        	}
        	switch(WinLineStones[PLAYER_1][i])
        	{
        		case 1:score-=SCORE_1;break;
           	case 2:score-=SCORE_2;break;
           	case 3:score-=SCORE_3;break;
        	}
      }
   }

//   score += 7-random(15);
	score += 7-((int)(rand()%16));
   if(NextPlayer == PLAYER_1)
   	return score;
   else
   	return -score;
}

