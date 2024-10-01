
set mydir "C:/HGB_Work/Elektor/ex9/sim"

vlib work


vcom -93                 \
    ${mydir}/../T51/fpga/InputSync.vhd        \
    ${mydir}/../T51/T51_Pack.vhd              \
    ${mydir}/../T51/fpga/iram_cyclone.vhd     \
    ${mydir}/../T51/fpga/T51_RAM_altera.vhd   \
    ${mydir}/../T51/T51_RAM.vhd               \
    ${mydir}/../T51/T51_MD.vhd                \
    ${mydir}/../T51/T51_ALU.vhd               \
    ${mydir}/../T51/T51_Glue.vhd              \
    ${mydir}/../T51/T51_Port.vhd              \
    ${mydir}/../T51/T51_TC01.vhd              \
    ${mydir}/../T51/T51_TC2.vhd               \
    ${mydir}/../T51/T51_UART.vhd              \
    ${mydir}/../T51/T51.vhd                   \
    ${mydir}/../T51/fpga/rom_cyclone.vhd      \
    ${mydir}/../T51/fpga/xram_cyclone.vhd     \
    ${mydir}/../T51/fpga/sevenseg_if.vhd      \
    ${mydir}/../T51/unitPs2Keyboard/src/PS2Keyboard-e.vhd \
    ${mydir}/../T51/unitPs2Keyboard/src/PS2Keyboard-a.vhd \
    ${mydir}/../T51/fpga/T8052.vhd            \
    ${mydir}/../T51/fpga/altpll0.vhd          \
    ${mydir}/../T51/unitVGA/src/vidmem.vhd                    \
    ${mydir}/../T51/unitVGA/src/CGRAM.vhd                     \
    ${mydir}/../T51/unitVGA/src/Grafikkarte-e.vhd             \
    ${mydir}/../T51/unitVGA/src/Grafikkarte-a.vhd             \
    ${mydir}/../T51/fpga/T8052_Toplevel.vhd   \
    ${mydir}/../T51/fpga/T8052_Toplevel_TB.vhd
    
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
add wave -noupdate -divider {VGA}
add wave -noupdate -format Logic -radix hexadecimal /dut/gc/*
add wave -noupdate -divider {7-Seg}
add wave -noupdate -format Logic -radix hexadecimal /dut/u0/sevseg/*
add wave -noupdate -divider {PS2}
add wave -noupdate -format Logic -radix hexadecimal /dut/u0/ps2kbd/*

TreeUpdate [SetDefaultTree]
configure wave -signalnamewidth 1  
#WaveRestoreZoom {823202229 ps} {824185439 ps}