/*
 * Copyright (C) 2002 by egnite Software GmbH. All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions
 * are met:
 *
 * 1. Redistributions of source code must retain the above copyright
 *    notice, this list of conditions and the following disclaimer.
 * 2. Redistributions in binary form must reproduce the above copyright
 *    notice, this list of conditions and the following disclaimer in the
 *    documentation and/or other materials provided with the distribution.
 * 3. All advertising materials mentioning features or use of this
 *    software must display the following acknowledgement:
 *
 *    This product includes software developed by egnite Software GmbH
 *    and its contributors.
 *
 * THIS SOFTWARE IS PROVIDED BY EGNITE SOFTWARE GMBH AND CONTRIBUTORS
 * ``AS IS'' AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
 * LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS
 * FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL EGNITE
 * SOFTWARE GMBH OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT,
 * INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING,
 * BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS
 * OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED
 * AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
 * OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF
 * THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF
 * SUCH DAMAGE.
 *
 * For additional information see http://www.ethernut.de/
 */

/*
 * $Log: tftp.c,v $
 * Revision 1.1  2002/08/01 17:34:30  harald
 * First check in
 *
 */

//#include <io.h>
#include <string.h>
#include <reg52.h>

//#include "flash.h"
#include "eboot.h"
#include "tftp.h"
#include "flash_functions.h"

/*!
 * \addtogroup xgTftp
 */
/*@{*/

/*!
 * \brief Set up a TFTP header for a file request.
 *
 * \param th      Points to the TFTP header structure.
 * \param request Type of the request, either TFTP_RRQ or TFTP_WRQ.
 * \param name    Name of the files.
 * \param mode    Transfer mode.
 */
static int MakeRequest(TFTPHDR xdata *th, u_short request, u_char xdata *name, u_char code *mode)
{
	u_char xdata *cp;

	th->th_opcode = htons(request);
	cp = th->th_u.tu_stuff;
    while(*name)
        *cp++ = *name++;
	*cp++ = 0;
    while(*mode)
        *cp++ = *mode++;
	*cp++ = 0;
	return (u_short)cp - (u_short)th;
}

/*!
 * \brief Download a file from a TFTP server and burn it into the flash ROM.
 *
 * \return 0 on success, -1 otherwise.
 */
int TftpRecv(void)
{
    u_char retry;
    int rlen = 0;
    int slen;
    u_short sport = 1024;
    u_short tport = 69;
    u_short block = 0;
    
    /*
     * Prepare the transmit buffer for a file request.
     */
    slen = MakeRequest(&sframe.u.tftp, TFTP_RRQ, bootfile, "octet");
    
    /*
     * Loop until we receive a packet with less than 512 bytes of data.
     */
    do {
        
        /*
         * Send file request or acknowledge and receive
         * a data block.
         */
        for(retry = 0; retry < 3; retry++) {
            if(UdpOutput(server_ip, tport, sport, slen) >= 0) {
                if((rlen = UdpInput(sport, 5000)) >= 4)
                    break;
            }
        }
        
        /*
         * Can't reach the TFTP server or got a malformed
         * repsonse.
         */
        if(rlen < 4)
            return -1;
        
        
       /*
        * Accept data blocks only. Anything else will stop
        * the transfer with an error.
        */
        if(ntohs(rframe.u.tftp.th_opcode) != TFTP_DATA) 
            return -1;
        
       /*
        * If this was the first block we received, prepare
        * the send buffer for sending ACKs.
        */
        if(block == 0) {
            tport = ntohs(rframe.udp_hdr.uh_sport);
            sframe.u.tftp.th_opcode = htons(TFTP_ACK);
            slen = 4;
        }
        
        /*
         * If this block is out of sequence, we ignore it.
         * However, if we missed the first block, return
         * with an error.
         */
        if(ntohs(rframe.u.tftp.th_u.tu_block) != block + 1) {
            if(block == 0)
                return -1;
            continue;
        }
        
        /*
         * Burn the received data into the flash ROM.
         */
        if(rlen > 4) {
//          sevseg_data0=block&0xff;
//          sevseg_data1=block>>8;
          flash_write(block ,rframe.u.tftp.th_data,rlen - 4);
//            FlashPage(block << 1, rframe.u.tftp.th_data, rlen - 4);
/*            if(rlen > 260)
                FlashPage((block << 1) + 1, &rframe.u.tftp.th_data[256], rlen - 260);
*/
        }
        
        /*
         * Update our block counter.
         */
        block++;
        sframe.u.tftp.th_u.tu_block = htons(block);
        
    } while(rlen >= 516);
    
    /*
     * Send the last ACK.
     */
    UdpOutput(server_ip, tport, sport, slen);

    return 0;
}

/*@}*/
