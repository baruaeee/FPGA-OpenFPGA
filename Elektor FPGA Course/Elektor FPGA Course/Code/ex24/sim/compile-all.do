
set mydir "./"
set ethdir "../rtl/Ethernet/OC"

vlib work

vlog  -work work ${ethdir}/eth_clockgen.v       \
                 ${ethdir}/eth_crc.v             \
                 ${ethdir}/eth_defines.v         \
                 ${ethdir}/eth_fifo.v            \
                 ${ethdir}/eth_maccontrol.v      \
                 ${ethdir}/eth_macstatus.v       \
                 ${ethdir}/eth_miim.v            \
                 ${ethdir}/eth_outputcontrol.v   \
                 ${ethdir}/eth_random.v          \
                 ${ethdir}/eth_receivecontrol.v  \
                 ${ethdir}/eth_register.v        \
                 ${ethdir}/eth_registers.v       \
                 ${ethdir}/eth_rxaddrcheck.v     \
                 ${ethdir}/eth_rxcounters.v      \
                 ${ethdir}/eth_rxethmac.v        \
                 ${ethdir}/eth_rxstatem.v        \
                 ${ethdir}/eth_shiftreg.v        \
                 ${ethdir}/eth_top.v             \
                 ${ethdir}/eth_transmitcontrol.v \
                 ${ethdir}/eth_txcounters.v      \
                 ${ethdir}/eth_txethmac.v        \
                 ${ethdir}/eth_txstatem.v        \
                 ${ethdir}/eth_wishbone.v        \
                 ${ethdir}/timescale.v           \

vlog  -work work ${ethdir}/eth_phy_defines.v   \
                 ${ethdir}/eth_phy.v

vcom -93                 \
    ${mydir}/../rtl/fpga/InputSync.vhd        \
    ${mydir}/../rtl/T51_Pack.vhd              \
    ${mydir}/../rtl/fpga/iram_cyclone.vhd     \
    ${mydir}/../rtl/fpga/T51_RAM_altera.vhd   \
    ${mydir}/../rtl/T51_RAM.vhd               \
    ${mydir}/../rtl/T51_MD.vhd                \
    ${mydir}/../rtl/T51_ALU.vhd               \
    ${mydir}/../rtl/T51_Glue.vhd              \
    ${mydir}/../rtl/T51_Port.vhd              \
    ${mydir}/../rtl/T51_TC01.vhd              \
    ${mydir}/../rtl/T51_TC2.vhd               \
    ${mydir}/../rtl/T51_UART.vhd              \
    ${mydir}/../rtl/T51.vhd                   \
    ${mydir}/../rtl/fpga/rom_cyclone14k.vhd   \
    ${mydir}/../rtl/fpga/sevenseg_if.vhd      \
    ${mydir}/../rtl/unitPs2Keyboard/src/PS2Keyboard-e.vhd \
    ${mydir}/../rtl/unitPs2Keyboard/src/PS2Keyboard-a.vhd \
    ${mydir}/../rtl/Ethernet/Ethernet_RAM.vhd  \
    ${mydir}/../rtl/Ethernet/eth_spram_256x32.vhd \
    ${mydir}/../rtl/Ethernet/Ethernet_verilog.vhd  \
    ${mydir}/../rtl/fpga/T8052_Ethernet.vhd       \
    ${mydir}/../rtl/fpga/altpll0.vhd          \
    ${mydir}/../rtl/fpga/T8052_Toplevel_Ethernet.vhd   \
    ${mydir}/../tb/sram.vhd                   \
    ${mydir}/../tb/T8052_Toplevel_Flash_TB.vhd

vcom -93   ${mydir}/../rtl/fpga/bootrom.vhd
    
vsim -t ps work.testbench52 
#do wave2.do
#add wave -r /*
onerror {resume}
add wave -noupdate -divider {TB}
add wave -noupdate -format Logic -radix hexadecimal /*
add wave -noupdate -divider {CORE Sigs}
add wave -noupdate -format Logic -radix hexadecimal /testbench52/dut/u0/clk
add wave -noupdate -format Literal -height 15 -radix hexadecimal /testbench52/dut/u0/core51/Generic_MODEL/ram/irama(7)
add wave -noupdate -format Literal -height 15 -radix hexadecimal /testbench52/dut/u0/core51/Generic_MODEL/ram/irama(6)
add wave -noupdate -format Literal -height 15 -radix hexadecimal /testbench52/dut/u0/core51/Generic_MODEL/ram/irama(5)
add wave -noupdate -format Literal -height 15 -radix hexadecimal /testbench52/dut/u0/core51/Generic_MODEL/ram/irama(4)
add wave -noupdate -format Literal -height 15 -radix hexadecimal /testbench52/dut/u0/core51/Generic_MODEL/ram/irama(3)
add wave -noupdate -format Literal -height 15 -radix hexadecimal /testbench52/dut/u0/core51/Generic_MODEL/ram/irama(2)
add wave -noupdate -format Literal -height 15 -radix hexadecimal /testbench52/dut/u0/core51/Generic_MODEL/ram/irama(1)
add wave -noupdate -format Literal -height 15 -radix hexadecimal /testbench52/dut/u0/core51/Generic_MODEL/ram/irama(0)
add wave -noupdate -format Literal -radix hexadecimal /testbench52/dut/u0/core51/acc
add wave -noupdate -format Literal -radix hexadecimal /testbench52/dut/u0/core51/b
add wave -noupdate -format Literal -radix hexadecimal /testbench52/dut/u0/core51/psw
add wave -noupdate -format Logic -radix hexadecimal /testbench52/dut/u0/core51/psw0
add wave -noupdate -format Literal -radix hexadecimal /testbench52/dut/u0/core51/ip
add wave -noupdate -format Literal -radix hexadecimal /testbench52/dut/u0/core51/sp
add wave -noupdate -format Literal -radix hexadecimal /testbench52/dut/u0/core51/dpl
add wave -noupdate -format Literal -radix hexadecimal /testbench52/dut/u0/core51/dph
add wave -noupdate -divider {8052}  
add wave -noupdate -format Logic -radix hexadecimal /dut/u0/*  
add wave -noupdate -divider {T51}  
add wave -noupdate -format Logic -radix hexadecimal /dut/u0/core51/*  
add wave -noupdate -divider {RAM}  
#add wave -noupdate -format Logic -radix hexadecimal /testbench52/dut/u0/core51/ram/clk
#add wave -noupdate -format Logic -radix hexadecimal /testbench52/dut/u0/core51/ram/rst_n
#add wave -noupdate -format Logic -radix hexadecimal /testbench52/dut/u0/core51/ram/are
#add wave -noupdate -format Logic -radix hexadecimal /testbench52/dut/u0/core51/ram/wr
#add wave -noupdate -format Literal -radix hexadecimal /testbench52/dut/u0/core51/ram/din
#add wave -noupdate -format Literal -radix hexadecimal /testbench52/dut/u0/core51/ram/int_addra
#add wave -noupdate -format Literal -radix hexadecimal /testbench52/dut/u0/core51/ram/int_addra_r
#add wave -noupdate -format Literal -radix hexadecimal /testbench52/dut/u0/core51/ram/int_addrb
#add wave -noupdate -format Literal -radix hexadecimal /testbench52/dut/u0/core51/ram/mem_a
#add wave -noupdate -format Literal -radix hexadecimal /testbench52/dut/u0/core51/ram/mem_b
#add wave -noupdate -format Literal -radix hexadecimal -expand /testbench52/dut/u0/core51/ram/irama
#add wave -noupdate -format Literal -radix hexadecimal /testbench52/dut/u0/core51/ram/iramb
#add wave -noupdate -format Literal -radix hexadecimal /testbench52/dut/u0/core51/ram/int_addra_r_i  
#add wave -noupdate -format Literal -radix hexadecimal /testbench52/dut/u0/core51/ram/Addr
add wave -noupdate -format Logic -radix hexadecimal /testbench52/dut/u0/core51/Generic_MODEL/ram/*
add wave -noupdate -divider {ALU}  
add wave -noupdate -format Logic -radix hexadecimal /dut/u0/core51/alu/*  
add wave -noupdate -divider {MD}  
add wave -noupdate -format Logic -radix hexadecimal /dut/u0/core51/alu/md/*  
add wave -noupdate -divider {GLUE51}
add wave -noupdate -format Logic -radix hexadecimal /dut/u0/glue51/*
add wave -noupdate -divider {TC01}
add wave -noupdate -format Logic -radix hexadecimal /dut/u0/tc01/*
add wave -noupdate -divider {TC2}
add wave -noupdate -format Logic -radix hexadecimal /dut/u0/tc2/*              
add wave -noupdate -divider {UART}
add wave -noupdate -format Logic -radix hexadecimal /dut/u0/uart/*
#add wave -noupdate -divider {VGA}
#add wave -noupdate -format Logic -radix hexadecimal /dut/gc/*
add wave -noupdate -divider {7-Seg}
add wave -noupdate -format Logic -radix hexadecimal /dut/u0/use_7seg/sevseg/*
#add wave -noupdate -divider {PS2}
#add wave -noupdate -format Logic -radix hexadecimal /dut/u0/ps2kbd/*
add wave -noupdate -divider {Ethernet}
add wave -noupdate -format Logic -radix hexadecimal /dut/u0/eth/enet/*
add wave -noupdate -divider {Wishbone}
add wave -noupdate -format Logic -radix hexadecimal /dut/u0/eth/enet/eth1/wishbone/*
add wave -noupdate -divider {Ethreg1}
add wave -noupdate -format Logic -radix hexadecimal /dut/u0/eth/enet/eth1/ethreg1/*
add wave -noupdate -divider {Moder 0}
add wave -noupdate -format Logic -radix hexadecimal /dut/u0/eth/enet/eth1/ethreg1/MODER_0/*
add wave -noupdate -divider {MIIM}                                                     
add wave -noupdate -format Logic -radix hexadecimal /dut/u0/eth/enet/eth1/miim1/*


TreeUpdate [SetDefaultTree]
configure wave -signalnamewidth 1  
#WaveRestoreZoom {823202229 ps} {824185439 ps}