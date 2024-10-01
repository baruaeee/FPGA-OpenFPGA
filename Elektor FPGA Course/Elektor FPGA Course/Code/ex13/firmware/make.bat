@echo Compile...
@echo.
@echo ex13...
@sdcc ex13.c -c --model-small
@echo Linking...
@sdcc ex13.rel --model-small
@echo.
@echo Deleting old HEx....
@echo.
@del ex13.hex
@echo.
@echo Copying IHX to HEX
@echo.
@ren ex13.ihx ex13.hex
@pause