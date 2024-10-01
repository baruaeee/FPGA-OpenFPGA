@echo Compile...
@echo.
@echo ex14...
@sdcc ex14.c -c --model-small
@echo Linking...
@sdcc ex14.rel --model-small
@echo.
@echo Deleting old HEx....
@echo.
@del ex14.hex
@echo.
@echo Copying IHX to HEX
@echo.
@ren ex14.ihx ex14.hex
@pause