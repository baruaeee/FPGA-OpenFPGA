 /* $Workfile:   usb.c $		    							 									*/
/* $Revision: 1.2 $                                            	*/
/* $Author: Andreas Voggeneder $                 								*/
/* $Date: 2003/08/14 08:02:29 $																	*/
/* Description:	USB HID Demo, low level functions               */
/*																											        */
/* Remarks:     No remarks.                                     */

#include <8052.h>
#include <string.h>
#include "usb.h"
#include "usb_regs.h"
#include "fpga_reg.h"
#include "usb_desc.h"
#include "scan_key.h"
#include "delay.h"

/**********************************************************************/
// definitions
/**********************************************************************/
/* these are the bit definitions for the flags register  **************/     
#define MLTIPKT   				0x01        /* set for multi-packet ops*/
#define GETDESC  			 	0x02        /* set for get_descr. req. */  
#define NXT_LED   				0x04              
#define NEW_KEYS  				0x08
#define NXT_OUT	  				0x10
#define REMOTE_WAKEUP_ENABLE  	0x20
#define SUSP_ENA  				0x40

/* these are the bit definitions for the toggles register  **************/ 
#define TGL0PID   				0x01        /* tracks NEXT data TX-PID for EP0 */  
#define TGL1PID   				0x02        /* tracks NEXT data TX-PID for EP1 */ 

#define SEND_ZERO_ACK 	{EP0_CONTROL_REG |= ENDPOINT_OUTDATA_SEQ; wr_usb0_fifo(0x00);}
#define SEND_ONE_BYTE 	{EP0_CONTROL_REG |= ENDPOINT_OUTDATA_SEQ; wr_usb0_fifo(0x01);}
#define SEND_TWO_BYTE 	{EP0_CONTROL_REG |= ENDPOINT_OUTDATA_SEQ; wr_usb0_fifo(0x02);}

/**********************************************************************/
// variables
/**********************************************************************/
static unsigned char usb_cfg;                     
static unsigned char desc_sze;
static unsigned char desc_idx;
static unsigned char desc_typ;   
static unsigned char desc_ofs;

static unsigned char key_report[6];
static unsigned char modbyte;

static unsigned char usb_fifo[RX_FIFO_SIZE];     
static unsigned char code* pckt_dta;    

static unsigned char toggles;
static unsigned char flags;    

/**********************************************************************/
// local prototypes
/**********************************************************************/
void rd_usb_fifo();
void wr_usb0_fifo(unsigned char cnt);
void wr_usb1_fifo(unsigned char cnt);

/**********************************************************************/
/* wait_for_zero_out - poll for zero-data-out to free the fifo by     */
/* reading out the count_out-Register                                 */  
/**********************************************************************/
void wait_for_zero_out(void)
{
	_wait_us(10);

	do 
	{
		while (EP0_CONTROL_REG & ENDPOINT_READY);
		
		if ((EP0_TRANSTYPE_STATUS_REG != SC_OUTDATA_TRANS) || EP0_RX_FIFO_DATA_COUNT_LSB)
			break;
		
		EP0_CONTROL_REG |= ENDPOINT_READY;
	} while(1);
}

/**********************************************************************/
/* This subroutine loads a unsigned char from a descriptor or report into the  */
/* endpoint 0 fifo.                                                   */  
/**********************************************************************/
void send_mlti_pkt()
{
    unsigned char i;
    unsigned char cnt_in;

    if (flags & GETDESC)
    {
        switch (desc_typ)                       /* select descriptor  */
        {
        case DEVICE:                 
        	pckt_dta = &DEV_DESC[desc_ofs]; 
            break;

		    case CONFIGURATION:                      
        	pckt_dta = &CFG_DESC[desc_ofs];    
            break;

       	case XSTRING:
			switch (desc_idx)
      {                  
			case LNG_IDX:                    
				pckt_dta = &LNG_STR[desc_ofs];
				break;
                        
			case MFG_IDX:                    
				pckt_dta = &MFG_STR[desc_ofs];
				break;
                        
			case PRD_IDX:                    
				pckt_dta = &PRD_STR[desc_ofs];
				break;

			case CFG_IDX:                    
				pckt_dta = &CFG_STR[desc_ofs];
				break;             
                                
			case IFC_IDX:                    
				pckt_dta = &IFC_STR[desc_ofs];
				break;             
                                
			default:
				pckt_dta = 0;   
				break;
			}               
			break;

		case HID:                      
			pckt_dta = &CFG_DESC[desc_ofs];    
            break;
            
		case HIDREPORT:                      
			pckt_dta = &REP_DESC[desc_ofs];     
            break;

		default:                  
			pckt_dta = 0;   
            break;
        }
    }        
    
    if (desc_sze > 0)
    {
        for (i = 0; i < 8; i++)                /* copy data from into buffer */
        {
            // read the descriptor from program memory
			      usb_fifo[i] = pckt_dta[i];
            desc_sze--;
            desc_ofs++;    
            cnt_in = i;
                
            if (desc_sze == 0)            /* stop if all bytes copied   */
            {
				        flags &= ~(GETDESC | MLTIPKT);            
                flags |= NXT_OUT;
                break; 
            }                   
        }                                         
                       
        cnt_in++;                           /* generate CNT_IN        */
        
      if (toggles & TGL0PID)
  			EP0_CONTROL_REG |= ENDPOINT_OUTDATA_SEQ; 
  		else
  			EP0_CONTROL_REG &= ~ENDPOINT_OUTDATA_SEQ;         
        
		  toggles ^= TGL0PID;                /* set toggle-bit and toggle privat      */      
      wr_usb0_fifo(cnt_in);          
      
      if (flags & NXT_OUT)
      {
      	wait_for_zero_out();
      	flags &= ~NXT_OUT;
      }                           
    }   
}

/**********************************************************************/
/* GET_DESCRIPTOR request is decoded here.                            */  
/**********************************************************************/
void get_descriptor(void)
{
	flags |= (GETDESC | MLTIPKT);        /* enter GETDESC mode        */

    desc_typ = usb_fifo[3];              /* store the type requested  */
    desc_idx = usb_fifo[2];              /* store the index requested */
    desc_ofs = 0;
                         /*select descriptor size and starting offset */   
    switch (desc_typ)                  
    {
    case DEVICE:                      
        desc_sze = DEV_DESC_SIZE;
    	break;

    case CONFIGURATION:                      
        desc_sze = CFG_DESC_SIZE;
	    break;

    case XSTRING:                      
		switch (desc_idx)
        {       
        case LNG_IDX:                    
        	desc_sze = LNG_STR[0];
            break;

		case MFG_IDX:                    
        	desc_sze = MFG_STR[0];
            break;
                        
        case PRD_IDX:                    
        	desc_sze = PRD_STR[0];
            break;            
                                
        case CFG_IDX:                    
        	desc_sze = CFG_STR[0];
            break;       
                                
		case IFC_IDX:                    
        	desc_sze = IFC_STR[0];
            break;            
                                
        default:
        	desc_sze = 0;
			break;
		}          
        break;

	case HID:                      
    	desc_ofs = CFG_LENGTH + INT_LENGTH;
        desc_sze = CFG_DESC[desc_ofs];
        break;

	case HIDREPORT:                      
		desc_sze = RPT_DESC_SIZE;
        break;

	default:                        /* UNSUPPORTED                */   
		desc_sze = 0;
        EP0_CONTROL_REG |= ENDPOINT_SEND_STALL;		// Set Stall bit
        break;
    }

    /* adjust size, if the host has asked for less than we want to    */ 
    /* send.  Note that we only check the low order unsigned char of the       */ 
    /* wlength field.  If we ever need to send back descriptors       */ 
    /* longer than 256 unsigned chars, we'll need to revisit this              */ 
    if (usb_fifo[7] == 0)                 /* if less than 256 req'd     */
    {
        if (desc_sze > usb_fifo[6])     /* adjust size if neccessary  */
            desc_sze = usb_fifo[6];    
    }
    
    send_mlti_pkt();                    /* send the first packet      */
}

/**********************************************************************/
/* The SET_ADDRESS request is done here                               */  
/**********************************************************************/
void set_address(void)
{
    SEND_ZERO_ACK;                      /* send handshake and wait    */
                                        /* for ACK                    */
  	// Timeout is missing                                      
	do 
	{
		while (EP0_CONTROL_REG & ENDPOINT_READY);
		
		if (EP0_TRANSTYPE_STATUS_REG == SC_IN_TRANS) 
			break;
  	EP0_CONTROL_REG |= ENDPOINT_READY;
	} while(1);
	
	USB_ADDRESS = usb_fifo[2];
}       

/**********************************************************************/
/* The CLEAR_FEATURE request is done here                             */  
/**********************************************************************/
void clr_feature(void)
{
    switch (usb_fifo[0] & 0x03)               /* decode request target  */
    {
	case 0:                             /* DEVICE                 */  
    	flags &= ~REMOTE_WAKEUP_ENABLE;
        break;                                                       
                
	case 1:                             /* INTERFACE              */  
        break;

    case 2:                             /* ENDPOINT                */  
	    switch (usb_fifo[4] & 0x03)   /* decode specific endpoint   */
		{
		/* destall EPx */
        case 0:                                                 
			EP0_CONTROL_REG &= ~ENDPOINT_SEND_STALL;
            break;
                                
		case 1:                                                 
			EP1_CONTROL_REG &= ~ENDPOINT_SEND_STALL;
			/* restart with DATA1-toggle  */
            toggles &= ~TGL1PID;
            break;
                                                                
		default:  
        	EP0_CONTROL_REG |= ENDPOINT_SEND_STALL;		// Set Stall bit
            break;
        }
        break;

	default:                       
		EP0_CONTROL_REG |= ENDPOINT_SEND_STALL;		// Set Stall bit
        break;                        
    }   
    SEND_ZERO_ACK;                              /* send handshake     */
}

/**********************************************************************/
/* The SET_FEATURE request is done here                               */  
/**********************************************************************/
void set_feature(void)
{
    switch (usb_fifo[0] & 0x03)               /* decode request target  */
    {
    case 0:                             /* DEVICE                 */  
        flags |= REMOTE_WAKEUP_ENABLE;
        break;
        
    case 1:                             /*INTERFACE               */  
    	break;

    case 2:                             /*ENDPOINT                */  
		switch (usb_fifo[4] & 0x03)       /* select endpoint        */
        {
		/* stall EPx */
        case 0:                                                 
			    EP0_CONTROL_REG |= ENDPOINT_SEND_STALL;		// Set Stall bit
          break;
               
        case 1:                                                 
 			    EP1_CONTROL_REG |= ENDPOINT_SEND_STALL;		// Set Stall bit
          break;
               
		default:
        	EP0_CONTROL_REG |= ENDPOINT_SEND_STALL;		// Set Stall bit
			break;
		}
        break;

	default:                       
    	EP0_CONTROL_REG |= ENDPOINT_SEND_STALL;		// Set Stall bit
      break;
    }                               
    SEND_ZERO_ACK;
}

/**********************************************************************/
/* The GET_STATUS request is done here                                */  
/**********************************************************************/
void get_status(void)
{                 
    unsigned char tmp;
       
    tmp = usb_fifo[0];
     
    usb_fifo[0] = 0;
    usb_fifo[1] = 0;  
        
    switch (tmp & 0x03)                       /* decode request target  */
    {
	case 0:                             /* DEVICE                 */  
    	if (flags & REMOTE_WAKEUP_ENABLE)
        	usb_fifo[0] = 0x02;
        break;

	case 1:                             /* INTERFACE (reserved)             */  
        break;

    case 2:                             /* ENDPOINT               */  
    	switch (usb_fifo[4] & 0x03)       /* select endpoint        */
        {
		case 0: 
			if (EP0_CONTROL_REG & ENDPOINT_SEND_STALL)
            	usb_fifo[0] = 0x01; 
            break;   
                                
		case 1: 
			if (EP1_CONTROL_REG & ENDPOINT_SEND_STALL)
				usb_fifo[0] = 0x01; 
            break;
                                   
		default:
        	EP0_CONTROL_REG |= ENDPOINT_SEND_STALL;		// Set Stall bit
			break;
		}         
        break;
                
	default:                       
    	EP0_CONTROL_REG |= ENDPOINT_SEND_STALL;		// Set Stall bit
        break;
    }
                          
    // 16 Bit Antwort an Host senden
    SEND_TWO_BYTE;              
    wait_for_zero_out();        
}

/**********************************************************************/
/* The SET_CONFIGURATION request is done here                         */  
/**********************************************************************/
void set_config(void)
{
    usb_cfg = usb_fifo[2];              /* save the configuration     */  

    if (usb_cfg != 0)                     /* configure the device       */  
										  /* enable all EP's contained  */
    	EP1_CONTROL_REG |= ENDPOINT_ENABLE;		// Enable EP1                           
	else                                /* unconfigure the device      */
									   /* disable all EP's exp. EP0  */
		EP1_CONTROL_REG = 0;		/* disable all EP's exp. EP0  */

    SEND_ZERO_ACK;  
}

/**********************************************************************/
/* The GET_CONFIGURATION request is done here                         */  
/**********************************************************************/
void get_config(void)
{
    usb_fifo[0] = usb_cfg;                    /* load the actual config */
    SEND_ONE_BYTE;                          /* and send it            */ 
    wait_for_zero_out();
}

/**********************************************************************/
/* The SET_INTERFACE request is done here                             */  
/**********************************************************************/
void set_interface(void)
{
	SEND_ZERO_ACK;
}

/**********************************************************************/
/* The SET_INTERFACE request is done here                             */  
/**********************************************************************/
void get_interface(void)
{
    usb_fifo[0] = 0;                 		/* alternate setting always 0 */
    SEND_ONE_BYTE;                      /* for hid-devicet            */ 
    wait_for_zero_out();
}

/**********************************************************************/
/* The HID class specific GET_REPORT request is done here             */  
/**********************************************************************/
void get_report(void)
{
    unsigned char i;
                                        /* std. report format         */
    usb_fifo[0] = 0;                      /* no modiefiers              */
    usb_fifo[1] = 0;                      /* reserved unsigned char = 0          */
    for (i = 0; i < 6; i++)
    {
        usb_fifo[i + 2] = key_report[i];    /* copy the reported keys     */
    }    
                                        /* into the key-array         */
                                        /* generate CNT_IN:           */
	if (toggles & TGL0PID)
		EP0_CONTROL_REG |= ENDPOINT_OUTDATA_SEQ; 
	else
    EP0_CONTROL_REG &= ~ENDPOINT_OUTDATA_SEQ;
    
    toggles ^= TGL0PID;            /* toggle privat              */
       
    wr_usb0_fifo(8);                     /* write the fifo-buffer into */                                                                                                
                                        /* the bridge                 */
	wait_for_zero_out();                                        
}

/**********************************************************************/
/* The HID class specific SET_REPORT request is done here             */  
/**********************************************************************/
void set_report(void)
{
    flags |= NXT_LED;              /* marker for next OUT-token  */
}

/**********************************************************************/
/* This subroutine handles TX events for FIFO0 (endpoint 0)           */
/**********************************************************************/
void tx_0(void)                     /* entered when IN_DONE_0 was set */
{                                   
    if (flags & MLTIPKT)       		/* when still descriptors to send */
    {                               /* -> send them                   */
        EP0_TX_FIFO_CONTROL_REG = 1;/* flush EP0-IN-Fifo, neccessary  */
                                    /* if the IN-FIFO is blocked by   */
                                    /* EP1-Data                       */
        send_mlti_pkt(); 
    }
}
   
/**********************************************************************/
/* This subroutine handles TX events for FIFO1 (endpoint 1)           */
/**********************************************************************/
void tx_1(void)
{
    if (flags & NEW_KEYS)
    {
        unsigned char i;
                                              	/* std. report format     */
		    usb_fifo[0] = modbyte;               	  /* Modifiers         */
        usb_fifo[1] = 0;                      	/* reserved = 0      */
        for (i = 0; i < 6; i++)
            usb_fifo[i + 2] = key_report[i];    /* copy the reported keys into the key-array     */
                                            	/* generate CNT_IN:       */
		if (toggles & TGL1PID)
			EP1_CONTROL_REG |= ENDPOINT_OUTDATA_SEQ; 
     	else
     		EP1_CONTROL_REG &= ~ENDPOINT_OUTDATA_SEQ;
    
        toggles ^= TGL1PID;                      /* toggle privat  */
        
        wr_usb1_fifo(8);                 /* write the fifo-buffer into USB Core */                
                                        
		EP1_CONTROL_REG |= ENDPOINT_READY;
        flags &= ~NEW_KEYS;
    }
}

/**********************************************************************/
/* This subroutine handles RX events for FIFO 0 (endpoint 0)          */  
/**********************************************************************/
void rx_0(void)
{
    unsigned char led;

    rd_usb_fifo();                          /* read out the fifo      */
    
    /* got setup packet ?     */
	if (EP0_TRANSTYPE_STATUS_REG == SC_SETUP_TRANS)			/* got setup packet ?     */
    { 
		if (EP0_CONTROL_REG & ENDPOINT_SEND_STALL)
            EP0_CONTROL_REG &= ~ENDPOINT_SEND_STALL;    /* switch off stall       */         

        EP0_TX_FIFO_CONTROL_REG = 1;   /* flush EP0-IN-Fifo      */

        toggles |= TGL0PID;            /* initialize Toggle to DATA1 */                               
                              
        switch (usb_fifo[0] & 0x60)           /* select request type    */   
        {
        case 0x00:                      /* standard request       */
            switch (usb_fifo[1])        /* decode std. request    */
            {
            case CLEAR_FEATURE:                  
                clr_feature(); 
            	break;

            case GET_CONFIGURATION: 
                get_config();
            	break;

            case GET_DESCRIPTOR: 
                get_descriptor();                   
            	break;

            case GET_STATUS: 
                get_status();   
            	break;

            case SET_ADDRESS: 
                set_address();
            	break;

            case SET_CONFIGURATION:
                set_config();
            	break;

            case SET_FEATURE: 
                set_feature();  
            	break;

			case SET_INTERFACE:
				set_interface();
				break;
			
			case GET_INTERFACE:
				get_interface();
				break;							

            default:            /* unsupported standard req   */  
                EP0_CONTROL_REG |= ENDPOINT_SEND_STALL;		// Set Stall bit
            	break;
        	}
        	break;

        case 0x20:                      /* class request          */
            switch (usb_fifo[1])        /*decode class request    */
            {
            case GET_REPORT:                  
                get_report(); 
            	break;

            case SET_REPORT: 
                set_report();                   
            	break;              

            default:            /* unsupported class request including set/get-report and set/get-idle */
				EP0_CONTROL_REG |= ENDPOINT_SEND_STALL;		// Set Stall bit
            	break;
        	}
        	break;

        default:                    /* unsupported req type       */  
            EP0_CONTROL_REG |= ENDPOINT_SEND_STALL;		// Set Stall bit
        	break;
    	}
    }
                                        /* if not a setup packet,     */ 
    else                                /* it must be an OUT packet   */
    {
        flags &= ~(GETDESC | MLTIPKT);     
        if (flags & NXT_LED) 
        {
            led = usb_fifo[0];
            kbd_set_led(led);
            SEND_ZERO_ACK;
            flags &= ~NXT_LED;
        }       
    }
}

/**********************************************************************/
/* This subroutine initializes the USB Core.                          */
/* Default address after power-on or USB-Reset is 0.                  */
/* EP0 IN/OUT are enabled, all other EP's are disabled.               */
/**********************************************************************/
void init_usb(void)
{
	unsigned char i;
//	USBEN=1;    
	flags &= ~(GETDESC | MLTIPKT);           /* exit multi-packet mode     */  
    
  	USB_ADDRESS = 0;
	
//	USB_CTL = USB_PHY_TX_MODE;
  USB_PHY_CONNECT=DISCONNECT;

	USB_CONTROL_REG = (SC_GLOBAL_ENABLE | SC_FULL_SPD_LN_POLARITY | SC_FULL_SPD_LN_RATE); //0x31;	
	USB_HOST_SLAVE_CTL_REG = 0;
	
	// clear all interrupt flags
	USB_INTERRUPT_STATUS_REG = 0xFF;
	EP0_CONTROL_REG = (ENDPOINT_ENABLE | ENDPOINT_READY); //3;
	
	// clear the FIFO
	EP0_TX_FIFO_CONTROL_REG = 1;
	EP0_RX_FIFO_CONTROL_REG = 1;
	EP1_TX_FIFO_CONTROL_REG = 1;
	EP1_RX_FIFO_CONTROL_REG = 1;

  // wait a little bit before re-connecting
  _wait_ms(100);
	USB_PHY_CONNECT=CONNECT;
	
    desc_sze = 0;
    desc_idx = 0;
    desc_typ = 0;   
    desc_ofs = 0;

    flags = REMOTE_WAKEUP_ENABLE;		/* reset all flags except the */
    									/* one for REMOTE_WAKEUP      */
    toggles = 0;                                                   
    
    for (i = 0; i < 6; i++)
        key_report[i] = 0;
 
	while (USB_INTERRUPT_STATUS_REG & SC_RESET_EVENT)        /* reset or hw-reset before   */
		USB_INTERRUPT_STATUS_REG |= SC_RESET_EVENT;
}

void usb_set_keys(unsigned char data* pRep, unsigned char mod)
{
	memcpy(key_report, pRep, 6);
	modbyte = mod;

	flags |= NEW_KEYS;
}

/**********************************************************************/
/* This is the service routine for USB operations                     */
/**********************************************************************/
void poll_usb(void)
{   	     
	// Check if an USB Reset occured
	if (USB_LINE_STATUS_REG == USB_LINE_RESET && USB_ADDRESS) 
	{
    	EP1_CONTROL_REG	= 0;
    	USB_ADDRESS = 0;
    } 
     
	if (USB_INTERRUPT_STATUS_REG & SC_TRANS_DONE)
	{
    	USB_INTERRUPT_STATUS_REG = 0xFF;
    
	 	if (EP0_TRANSTYPE_STATUS_REG == SC_IN_TRANS)
        	tx_0();                     /* endpoint 0 tx */ 
    	else
        	rx_0();                     /* endpoint 0 rx */   

    	EP0_CONTROL_REG |= ENDPOINT_READY;
	}
	
	if (EP1_CONTROL_REG & ENDPOINT_ENABLE) 
	{
		if (!(EP1_CONTROL_REG & ENDPOINT_READY))
        	tx_1();                    /* endpoint 1 tx                  */ 
  	}
}

/**********************************************************************/
/* return the usb configuration status
/**********************************************************************/
unsigned char usb_ready()
{
	return usb_cfg;
}

/**********************************************************************/
/* This routine reads the USB Core-FIFO and stores the content        */
/* in cnt_out (infos about count/setup/toggle) and usb_fifo[]         */
/**********************************************************************/         
void rd_usb_fifo() 
{                                                      
    unsigned char cnt, j;

    if (EP0_RX_FIFO_DATA_COUNT_LSB) // it there are unsigned chars in the  
    {                                   // FIFO - read them           
      cnt = EP0_RX_FIFO_DATA_COUNT_LSB;
  		if (cnt > sizeof(usb_fifo))
  			cnt = sizeof(usb_fifo);
        
  		for (j = 0; j < cnt; j++)    
      {
        usb_fifo[j] = EP0_RX_FIFO_DATA;
      }
    }     
}       

/**********************************************************************/
/* This subroutine writes the usb_fifo into EP0 FIFO                  */
/* cnt Bytes are stored in the usb_fifo[0..7]-field                   */
/**********************************************************************/
void wr_usb0_fifo(unsigned char cnt) 
{
    unsigned char j;
       
	cnt &= 0x3f;
  for (j = 0; j < cnt; j++) 
	{
		EP0_TX_FIFO_DATA = usb_fifo[j];
	}
	EP0_CONTROL_REG |= ENDPOINT_READY;
}       
  
/**********************************************************************/
/* This subroutine writes the usb_fifo into EP1 FIFO                  */
/* cnt Bytes are stored in the usb_fifo[0..7]-field                   */
/**********************************************************************/
void wr_usb1_fifo(unsigned char cnt) 
{
  unsigned char j;
	
	cnt &= 0x3f;
  for (j = 0; j < cnt; j++) 
	{
		EP1_TX_FIFO_DATA = usb_fifo[j];
	}
	EP1_CONTROL_REG |= ENDPOINT_READY;
} 



   
