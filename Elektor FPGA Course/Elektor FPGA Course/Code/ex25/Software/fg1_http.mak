########################################################
#
# Flexgate(R) TCP/IP-Stack V2.0 Demo for Elektor FPGA-Webserver
#
# This Makefile generates a simple Webserver with
# dynamic pages on a standard FlexGate I.
#
# Before using this software, the IPs of the FlexGate must be set
# (fg1_http.c). Default is:   IP: 192.168.1.156
# (Remark: Gateway and Subnet not required for a webserver)
#
# The Stack should be compiled with all options disabled
# (for minimum memory usage, see tcpip/net.h)
#
# (C) 2004 Wickenhaeuser
# (C) 2006 Andreas Voggeneder
#
#
######################################################

# The drivers:
# The demo itself
# The driver for the A/D-Converter (requires correct CPU type set, see C51FLAGS
# HTML-stuff

L51FLAGS = -r$0,$0000
SIOTYPE = D
MODEL = small
A51FLAGS = -g
C51FLAGS = -dCPU_NSEC=18750 -dFLEXGATE 

tcpip\open_ether.obj: tcpip\open_ether.c tcpip\net.h
tcpip\net.obj: tcpip\net.c tcpip\net.h 
tcpip\netutil.obj: tcpip\netutil.c tcpip\net.h
tcpip\web_serv.obj: tcpip\web_serv.c tcpip\net.h
tcpip\dhcp.obj: tcpip\dhcp.c tcpip\dhcp.h  tcpip\net.h
fg1_http.obj: fg1_http.c tcpip\net.h lcd.h fpga_reg.h
i2c.obj: i2c.c i2c.h
lcd.obj: lcd.c lcd.h
home.obj: home.html tcpip\net.h
reply.obj: reply.html tcpip\net.h
#form.obj: form.html tcpip\net.h
io.obj: io.html tcpip\net.h
ad_disp.obj: ad_disp.html tcpip\net.h
fg1_http.bin: tcpip\open_ether.obj tcpip\net.obj tcpip\netutil.obj tcpip\web_serv.obj tcpip\dhcp.obj fg1_http.obj i2c.obj lcd.obj home.obj reply.obj io.obj ad_disp.obj

