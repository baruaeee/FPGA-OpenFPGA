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
 * Portions Copyright (C) 2000 David J. Hudson <dave@humbug.demon.co.uk>
 *
 * This file is distributed in the hope that it will be useful, but WITHOUT
 * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
 * FITNESS FOR A PARTICULAR PURPOSE.
 *
 * You can redistribute this file and/or modify it under the terms of the GNU
 * General Public License (GPL) as published by the Free Software Foundation;
 * either version 2 of the License, or (at your discretion) any later version.
 * See the accompanying file "copying-gpl.txt" for more details.
 *
 * As a special exception to the GPL, permission is granted for additional
 * uses of the text contained in this file.  See the accompanying file
 * "copying-liquorice.txt" for details.
 *
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
 * $Log: ip.c,v $
 * Revision 1.1  2002/08/01 17:34:30  harald
 * First check in
 *
 */

#include "eboot.h"
#include "arp.h"
#include "ip.h"


unsigned int ip_check(u_char xdata* ps, u_short len);

/*!
 * \addtogroup xgStack
 */
/*@{*/

/*!
 * \brief Calculates a partial IP checksum over a block of data.
 *
 * Note that this returns the checksum in network byte order, and thus does
 * not need to be converted via hton16(), etc.  Of course this means that
 * we mustn't use this value for normal arithmetic!
 *
 * This is a partial checksum because it doesn't take the 1's complement
 * of the overall sum.
 *
 * \note by Harald Kipp: Yes, it looks wrong. I assume that this will not 
 *       work for all packet sizes. Not yet confirmed.
 */


/*!
 * \brief Receive an IP packet with the specified protocol type.
 *
 * This function calls EtherInput(). Any incoming Ethernet 
 * frame, which is not of the specified type will be discarded.
 *
 * \param proto Protocol type.
 * \param tms   Return with timeout after the specified
 *              number of waiting loops. On a 14 Mhz ATmega
 *              this value represents approximately the number
 *              of milliseconds to wait.
 *
 * \return The number of bytes received, 0 on timeout 
 *         or -1 in case of a failure.
 */
int IpInput(u_char proto, u_short tms)
{
    int rc = 0;
    IPHDR xdata *ip;
    u_short ip_hdrlen;
    u_long dst;
    u_char bcast;

    for(;;) {

        /*
         * Return 0, if no frame is available.
         */
        if((rc = EtherInput(ETHERTYPE_IP, tms)) <= 0) {
            break;
        }
        ip = &rframe.ip_hdr;

        /*
         * Silently discard datagrams of different IP version
         * and fragmented datagrams.
         */
        if(ip->ip_v != IPVERSION) {
            continue;
        }
        if((ntohs(ip->ip_off) & (IP_MF | IP_OFFMASK)) != 0) {
            continue;
        }

        ip_hdrlen = ip->ip_hl * 4;

        /*
         * Check for broadcast.
         */
        dst = ip->ip_dst;

        if(dst == 0xffffffff || (local_ip && (dst | netmask) == 0xffffffff)) 
            bcast = 1;

        /*
         * Silently discard datagrams for other destinations.
         */
        else if(dst == 0 || dst != local_ip) {
            continue;
        }

        else
            bcast = 0;

        /*
         * Check the requested protocol.
         */
        if(ip->ip_p == proto) {
            rc = htons(ip->ip_len) - (ip_hdrlen);
            break;
        }
    }
    return  rc;
}

/*!
 * \brief
 *
 * \return 0 on success, -1 otherwise.
 */
int IpOutput(u_long dip, u_char proto, u_short len)
{
    u_char xdata dmac[6];

    IPHDR xdata *ip = &sframe.ip_hdr;

    ip->ip_v = 4;
    ip->ip_hl = sizeof(IPHDR) >> 2;
    ip->ip_len = htons(sizeof(IPHDR) + len);
    ip->ip_ttl = 0x40;
    ip->ip_p = proto;
    ip->ip_dst = dip;
    ip->ip_src = local_ip;
    ip->ip_id++;
    ip->ip_sum = 0;
//    ip->ip_sum = IpChkSum(0, ip, sizeof(IPHDR));
    ip->ip_sum=~ip_check((u_char xdata*)ip,sizeof(IPHDR));

    if(ArpRequest(dip, dmac))
        return -1;

    return EtherOutput(dmac, ETHERTYPE_IP, sizeof(IPHDR) + len);
}

/*@}*/
