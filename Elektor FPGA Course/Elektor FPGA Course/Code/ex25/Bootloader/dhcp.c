/*
 * Copyright (C) 2001-2002 by egnite Software GmbH. All rights reserved.
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
 *
 * -
 * Portions Copyright (c) 1983, 1993 by
 *  The Regents of the University of California.  All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions
 * are met:
 * 1. Redistributions of source code must retain the above copyright
 *    notice, this list of conditions and the following disclaimer.
 * 2. Redistributions in binary form must reproduce the above copyright
 *    notice, this list of conditions and the following disclaimer in the
 *    documentation and/or other materials provided with the distribution.
 * 3. All advertising materials mentioning features or use of this software
 *    must display the following acknowledgement:
 *  This product includes software developed by the University of
 *  California, Berkeley and its contributors.
 * 4. Neither the name of the University nor the names of its contributors
 *    may be used to endorse or promote products derived from this software
 *    without specific prior written permission.
 *
 * THIS SOFTWARE IS PROVIDED BY THE REGENTS AND CONTRIBUTORS ``AS IS'' AND
 * ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
 * IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
 * ARE DISCLAIMED.  IN NO EVENT SHALL THE REGENTS OR CONTRIBUTORS BE LIABLE
 * FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
 * DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS
 * OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION)
 * HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT
 * LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY
 * OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF
 * SUCH DAMAGE.
 * -
 * Portions Copyright (c) 1993 by Digital Equipment Corporation.
 *
 * Permission to use, copy, modify, and distribute this software for any
 * purpose with or without fee is hereby granted, provided that the above
 * copyright notice and this permission notice appear in all copies, and that
 * the name of Digital Equipment Corporation not be used in advertising or
 * publicity pertaining to distribution of the document or software without
 * specific, written prior permission.
 * 
 * THE SOFTWARE IS PROVIDED "AS IS" AND DIGITAL EQUIPMENT CORP. DISCLAIMS ALL
 * WARRANTIES WITH REGARD TO THIS SOFTWARE, INCLUDING ALL IMPLIED WARRANTIES
 * OF MERCHANTABILITY AND FITNESS.   IN NO EVENT SHALL DIGITAL EQUIPMENT
 * CORPORATION BE LIABLE FOR ANY SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL
 * DAMAGES OR ANY DAMAGES WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR
 * PROFITS, WHETHER IN AN ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS
 * ACTION, ARISING OUT OF OR IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS
 * SOFTWARE.
 */

/*
 * $Log: dhcp.c,v $
 * Revision 1.1  2002/08/01 17:34:29  harald
 * First check in
 *
 */

#include <string.h>

#include "eboot.h"
#include "ip.h"
#include "dhcp.h"

/*!
 * \addtogroup xgDhcp
 */
/*@{*/

u_char code cookie[4] = { 0x63, 0x82, 0x53, 0x63 };

/*!
 * \brief Initialize the global send frame for DHCP requests.
 *
 * \return Size of the frame.
 */
u_short DhcpFrameInit(void)
{
    u_short i;
    BOOTPHDR xdata *bp = &sframe.u.bootp;
    u_char xdata *op = bp->bp_options;

    for(i = 0; i < sizeof(BOOTFRAME); i++)
        *((u_char xdata *)&sframe + i) = 0;

    bp->bp_op = 1;
    bp->bp_xid = 0x04030201;
    bp->bp_htype = 1;
    bp->bp_hlen = sizeof(mac);
    for(i = 0; i < 6; i++)
        bp->bp_chaddr[i] = mac[i];
    for(i = 0; i < 4; i++)
        *op++ = cookie[i];

    *op++ = DHCPOPT_MSGTYPE;
    *op++ = 1;
    *op++ = DHCP_DISCOVER;

    *op++ = DHCPOPT_END;

    return sizeof(BOOTPHDR) - sizeof(sframe.u.bootp.bp_options) + 8;
}

u_short DhcpRequestFrame(void)
{
    BOOTPHDR xdata *bp = &sframe.u.bootp;
    u_char xdata *op = &bp->bp_options[6];

    *op++ = DHCP_REQUEST;

    *op++ = DHCPOPT_REQUESTIP;
    *op++ = 4;
/*    *op++ = (u_char)rframe.u.bootp.bp_yiaddr;
    *op++ = (u_char)(rframe.u.bootp.bp_yiaddr >> 8);
    *op++ = (u_char)(rframe.u.bootp.bp_yiaddr >> 16);
    *op++ = (u_char)(rframe.u.bootp.bp_yiaddr >> 24);*/
    *((u_long xdata*)op)=rframe.u.bootp.bp_yiaddr;
    op+=sizeof(u_long);

    *op++ = DHCPOPT_SID;
    *op++ = 4;
/*    *op++ = (u_char)sid;
    *op++ = (u_char)(sid >> 8);
    *op++ = (u_char)(sid >> 16);
    *op++ = (u_char)(sid >> 24);*/
    *((u_long xdata*)op)=sid;
    op+=sizeof(u_long);

    *op++ = DHCPOPT_END;

    return sizeof(BOOTPHDR) - sizeof(sframe.u.bootp.bp_options) + 20;
}

/*!
 * \brief Retrive the specified DCHP option.
 *
 * \param opt  Option to look for.
 * \param ptr  Pointer to the buffer that receives the option value.
 * \param size Size of the buffer.
 *
 * \return Size of the retrieved option value or zero,
 *         if the specified option couldn't be found.
 */
u_char DhcpGetOption(u_char opt, void *ptr, u_char size)
{
    register u_char xdata *cp;
    u_char i;

    cp = rframe.u.bootp.bp_options + 4;
    for(;;) {
        if(*cp == DHCPOPT_PAD) {
            cp++;
            continue;
        }
        if(*cp == DHCPOPT_END)
            break;
        if(*cp == opt) {
            if(*(cp + 1) < size)
                size = *(cp + 1);
            for(i = 0; i < size; i++)
                *(((u_char *)ptr) + i) = *(cp + i + 2);
            return *(cp + 1);
        }
        cp++;
        cp += *cp;
        cp++;
    }
    return 0;
}

/*!
 * \brief Query any DHCP server on the local net.
 *
 * On success, this routine will fill some global
 * variables:
 *
 * - local_ip 
 * - server_ip
 * - bootfile
 * - netmask
 * - broadcast
 * - gateway
 * - dns
 * - sid
 * 
 * \return 0 on success, -1 otherwise.
 */
int DhcpQuery(void)
{
    u_char type;
    u_char retry;
    int rlen;
    int slen;
    u_char i;
    u_char xdata *cp;

    /*
     * Discovery loop.
     */
    slen = DhcpFrameInit();
    for(rlen = retry = 0; rlen == 0 && retry < 8; retry++) {
        if(UdpOutput(INADDR_BROADCAST, DHCP_SERVERPORT, DHCP_CLIENTPORT, slen) < 0)
            return -1;
        if((rlen = UdpInput(DHCP_CLIENTPORT, 1000)) < 0) 
            break;
        if(rlen &&
           rframe.u.bootp.bp_xid == sframe.u.bootp.bp_xid &&
           DhcpGetOption(DHCPOPT_MSGTYPE, &type, 1) == 1 && 
           type == DHCP_OFFER)
               break;
        rlen = 0;
    }
    if(rlen == 0) {
        return -1;
    }

    DhcpGetOption(DHCPOPT_SID, &sid, 4);

    /*
     * Request loop.
     */
    slen = DhcpRequestFrame();
    for(rlen = retry = 0; rlen == 0 && retry < 10; retry++) {
        if(UdpOutput(INADDR_BROADCAST, DHCP_SERVERPORT, DHCP_CLIENTPORT, slen) < 0)
            return -1;
        if((rlen = UdpInput(DHCP_CLIENTPORT, 1000)) < 0)
            return -1;
        if(rlen &&
           rframe.u.bootp.bp_xid == sframe.u.bootp.bp_xid &&
           DhcpGetOption(DHCPOPT_MSGTYPE, &type, 1) == 1 && 
           type == DHCP_ACK) 
                break;
        rlen = 0;
    }
    if(rlen == 0) {
        return -1;
    }

    local_ip = rframe.u.bootp.bp_yiaddr;
    server_ip = rframe.u.bootp.bp_siaddr;
    for(cp = rframe.u.bootp.bp_file, i = 0; *cp && i < sizeof(bootfile) - 1; cp++, i++)
        bootfile[i] = *cp;
    bootfile[i] = 0;
    

    DhcpGetOption(DHCPOPT_NETMASK, &netmask, 4);
    DhcpGetOption(DHCPOPT_BROADCAST, &broadcast, 4);
    DhcpGetOption(DHCPOPT_GATEWAY, &gateway, 4);
    DhcpGetOption(DHCPOPT_DNS, &dns, 4);
    DhcpGetOption(DHCPOPT_SID, &sid, 4);
    DhcpGetOption(DHCPOPT_BFILESIZE, &bfs, 2);

    return 0;
}

/*@}*/
