@ECHO Relocating hexfile ...
@..\Tools\HEXBIN2.EXE eboot.hex eboot.bin I 0000
@..\Tools\BIN2HEX.EXE /I0xE000 EBOOT.BIN eboot_co.hex
@del eboot.bin
@copy EBOOT_CO.HEX eboot_conv.hex
@del EBOOT_CO.HEX
rem @pause