/*********************************************************************************
* phy.h
* Physical Layer prototypes
*
* Short overview:
*
* States:
* (0): Init_Phy(): Initialise network with Init_Phy(). MACs/IPs must be set before (1).
* (1): Poll_Phy(): If it deliveres !=0, frame was received, Phy is ready
*                to return frame data by following Read_Frame...-calls (2).
*                If Poll_Phy() is called and not all data have been removed
*                from the Phy, Poll_Phy() will remove it first.
*                Without data: (1)
* (2): Read_Frame_...(): Return Frame data. (1,2,3) possible.
* (3): RequestSend_Phy(): Initiates a frame transmission, then (4).
*                If there is still something to read left, optionally remove this first.
* (4): Write_Frame_...(): Writes all frame data, as requested (4,5)
* (5): CommitSend:Phy(): Triggers the transmission. (1)
*
*
**********************************************************************************/

uchar Init_Phy(void);

uchar Poll_Phy(void);

#ifndef PHY_ETH
uchar Phy_rdy4tx(void);	// PPP-Phy is slow
uchar xdata* Get_Frame_xdata_pointer(void);
#endif

void RequestSend_Phy(uint FrameSize);
void CommitSend_Phy(void);

void Write_Frame_word_Phy(uint Data);
void Write_Frame_long_Phy(unsigned long Data);
void Write_Frame_xdata_Phy(xdata uchar* ps, uint len);

uint Read_Frame_word_Phy(void);
unsigned long Read_Frame_long_Phy(void);
void Read_Frame_xdata_Phy(xdata uchar*ps, uint len);

// End
