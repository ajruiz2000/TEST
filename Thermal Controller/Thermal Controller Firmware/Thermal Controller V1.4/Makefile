# MPLAB IDE generated this makefile for use with GNU make.
# Project: D32.mcp
# Date: Thu Apr 26 12:23:13 2012

AS = pic32-as.exe
CC = pic32-gcc.exe
LD = pic32-ld.exe
AR = pic32-ar.exe
HX = pic32-bin2hex.exe
RM = rm

D32.hex : D32.elf
	$(HX) "D32.elf"

D32.elf : Objects/usb_descriptors.o Objects/main.o Objects/usb_device.o Objects/usb_function_cdc.o Objects/D32.o Objects/NesLab.o Objects/Athena.o Objects/UpDown.o Objects/Julabo.o
	$(CC) -mprocessor=32MX460F512L "Objects\usb_descriptors.o" "Objects\main.o" "Objects\usb_device.o" "Objects\usb_function_cdc.o" "Objects\D32.o" "Objects\NesLab.o" "Objects\Athena.o" "Objects\UpDown.o" "Objects\Julabo.o" -o"D32.elf" -Wl,-L"C:\Program Files\Microchip\MPLAB C30\lib",--defsym=__MPLAB_BUILD=1,-Map="D32.map"

Objects/usb_descriptors.o : usb_descriptors.c Include/GenericTypeDefs.h Include/Compiler.h Include/p32xxxx.h usb_config.h Include/USB/usb.h Include/Compiler.h usb_config.h Include/usb/usb_common.h Include/usb/usb_ch9.h Include/usb/usb_device.h Include/usb/usb_common.h Include/usb/usb_ch9.h Include/usb/usb_hal.h Include/USB/usb_hal_pic32.h Include/Compiler.h Include/USB/usb_function_cdc.h Include/USB/usb.h
	$(CC) -mprocessor=32MX460F512L -x c -c "usb_descriptors.c" -o".\Objects\usb_descriptors.o" -MMD -MF".\Objects\usb_descriptors.d" -I"C:\Users\Anthony\Desktop\UBW32_v1_3_1" -I"C:\Users\Anthony\Desktop\UBW32_v1_3_1\Include" -I"C:\Documents and Settings\User\Desktop\UBW32_v1_3\Include" -I"C:\Documents and Settings\Aaron\Desktop\UBW32_v1_3\USB" -I"C:\Documents and Settings\Aaron\Desktop\UBW32_v1_3\Include" -I"." -I"..\microchip\include" -g

Objects/main.o : main.c Include/Compiler.h usb_config.h Include/USB/usb_device.h Include/USB/usb_common.h Include/USB/usb_ch9.h Include/USB/usb.h Include/Compiler.h usb_config.h Include/usb/usb_common.h Include/usb/usb_ch9.h Include/usb/usb_device.h Include/usb/usb_common.h Include/usb/usb_ch9.h Include/usb/usb_hal.h Include/USB/usb_hal_pic32.h Include/Compiler.h Include/USB/usb_function_cdc.h Include/USB/usb.h HardwareProfile.h D32.h UpDown.h Athena.h NesLab.h Julabo.h main.h Errors.h
	$(CC) -mprocessor=32MX460F512L -x c -c "main.c" -o".\Objects\main.o" -MMD -MF".\Objects\main.d" -I"C:\Users\Anthony\Desktop\UBW32_v1_3_1" -I"C:\Users\Anthony\Desktop\UBW32_v1_3_1\Include" -I"C:\Documents and Settings\User\Desktop\UBW32_v1_3\Include" -I"C:\Documents and Settings\Aaron\Desktop\UBW32_v1_3\USB" -I"C:\Documents and Settings\Aaron\Desktop\UBW32_v1_3\Include" -I"." -I"..\microchip\include" -g

Objects/usb_device.o : USB/usb_device.c Include/GenericTypeDefs.h Include/Compiler.h Include/p32xxxx.h Include/USB/USB.h Include/Compiler.h usb_config.h Include/usb/usb_common.h Include/usb/usb_ch9.h Include/usb/usb_device.h Include/usb/usb_common.h Include/usb/usb_ch9.h Include/usb/usb_hal.h Include/USB/usb_hal_pic32.h Include/Compiler.h HardwareProfile.h Include/Compiler.h
	$(CC) -mprocessor=32MX460F512L -x c -c "USB\usb_device.c" -o".\Objects\usb_device.o" -MMD -MF".\Objects\usb_device.d" -I"C:\Users\Anthony\Desktop\UBW32_v1_3_1" -I"C:\Users\Anthony\Desktop\UBW32_v1_3_1\Include" -I"C:\Documents and Settings\User\Desktop\UBW32_v1_3\Include" -I"C:\Documents and Settings\Aaron\Desktop\UBW32_v1_3\USB" -I"C:\Documents and Settings\Aaron\Desktop\UBW32_v1_3\Include" -I"." -I"..\microchip\include" -g

Objects/usb_function_cdc.o : USB/CDC\ Device\ Driver/usb_function_cdc.c Include/USB/usb.h Include/GenericTypeDefs.h Include/Compiler.h Include/p32xxxx.h usb_config.h Include/usb/usb_common.h Include/usb/usb_ch9.h Include/usb/usb_device.h Include/usb/usb_common.h Include/usb/usb_ch9.h Include/usb/usb_hal.h Include/USB/usb_hal_pic32.h Include/USB/usb_function_cdc.h Include/USB/usb.h
	$(CC) -mprocessor=32MX460F512L -x c -c "USB\CDC Device Driver\usb_function_cdc.c" -o".\Objects\usb_function_cdc.o" -MMD -MF".\Objects\usb_function_cdc.d" -I"C:\Users\Anthony\Desktop\UBW32_v1_3_1" -I"C:\Users\Anthony\Desktop\UBW32_v1_3_1\Include" -I"C:\Documents and Settings\User\Desktop\UBW32_v1_3\Include" -I"C:\Documents and Settings\Aaron\Desktop\UBW32_v1_3\USB" -I"C:\Documents and Settings\Aaron\Desktop\UBW32_v1_3\Include" -I"." -I"..\microchip\include" -g

Objects/D32.o : D32.c Include/GenericTypeDefs.h Include/Compiler.h Include/p32xxxx.h usb_config.h Include/USB/usb_device.h Include/USB/usb_common.h Include/USB/usb_ch9.h Include/USB/usb.h Include/Compiler.h usb_config.h Include/usb/usb_common.h Include/usb/usb_ch9.h Include/usb/usb_device.h Include/usb/usb_common.h Include/usb/usb_ch9.h Include/usb/usb_hal.h Include/USB/usb_hal_pic32.h Include/Compiler.h Include/USB/usb_function_cdc.h Include/USB/usb.h HardwareProfile.h D32.h Athena.h UpDown.h Errors.h Main.h Julabo.h
	$(CC) -mprocessor=32MX460F512L -x c -c "D32.c" -o".\Objects\D32.o" -MMD -MF".\Objects\D32.d" -I"C:\Users\Anthony\Desktop\UBW32_v1_3_1" -I"C:\Users\Anthony\Desktop\UBW32_v1_3_1\Include" -I"C:\Documents and Settings\User\Desktop\UBW32_v1_3\Include" -I"C:\Documents and Settings\Aaron\Desktop\UBW32_v1_3\USB" -I"C:\Documents and Settings\Aaron\Desktop\UBW32_v1_3\Include" -I"." -I"..\microchip\include" -g

Objects/NesLab.o : NesLab.c NesLab.h Errors.h Main.h HardwareProfile.h Include/Compiler.h
	$(CC) -mprocessor=32MX460F512L -x c -c "NesLab.c" -o".\Objects\NesLab.o" -MMD -MF".\Objects\NesLab.d" -I"C:\Users\Anthony\Desktop\UBW32_v1_3_1" -I"C:\Users\Anthony\Desktop\UBW32_v1_3_1\Include" -I"C:\Documents and Settings\User\Desktop\UBW32_v1_3\Include" -I"C:\Documents and Settings\Aaron\Desktop\UBW32_v1_3\USB" -I"C:\Documents and Settings\Aaron\Desktop\UBW32_v1_3\Include" -I"." -I"..\microchip\include" -g

Objects/Athena.o : Athena.c Athena.h NesLab.h Julabo.h Errors.h Main.h ini.h HardwareProfile.h Include/Compiler.h
	$(CC) -mprocessor=32MX460F512L -x c -c "Athena.c" -o".\Objects\Athena.o" -MMD -MF".\Objects\Athena.d" -I"C:\Users\Anthony\Desktop\UBW32_v1_3_1" -I"C:\Users\Anthony\Desktop\UBW32_v1_3_1\Include" -I"C:\Documents and Settings\User\Desktop\UBW32_v1_3\Include" -I"C:\Documents and Settings\Aaron\Desktop\UBW32_v1_3\USB" -I"C:\Documents and Settings\Aaron\Desktop\UBW32_v1_3\Include" -I"." -I"..\microchip\include" -g

Objects/UpDown.o : UpDown.c main.h Athena.h
	$(CC) -mprocessor=32MX460F512L -x c -c "UpDown.c" -o".\Objects\UpDown.o" -MMD -MF".\Objects\UpDown.d" -I"C:\Users\Anthony\Desktop\UBW32_v1_3_1" -I"C:\Users\Anthony\Desktop\UBW32_v1_3_1\Include" -I"C:\Documents and Settings\User\Desktop\UBW32_v1_3\Include" -I"C:\Documents and Settings\Aaron\Desktop\UBW32_v1_3\USB" -I"C:\Documents and Settings\Aaron\Desktop\UBW32_v1_3\Include" -I"." -I"..\microchip\include" -g

Objects/Julabo.o : Julabo.c Julabo.h Errors.h Main.h HardwareProfile.h Include/Compiler.h
	$(CC) -mprocessor=32MX460F512L -x c -c "Julabo.c" -o".\Objects\Julabo.o" -MMD -MF".\Objects\Julabo.d" -I"C:\Users\Anthony\Desktop\UBW32_v1_3_1" -I"C:\Users\Anthony\Desktop\UBW32_v1_3_1\Include" -I"C:\Documents and Settings\User\Desktop\UBW32_v1_3\Include" -I"C:\Documents and Settings\Aaron\Desktop\UBW32_v1_3\USB" -I"C:\Documents and Settings\Aaron\Desktop\UBW32_v1_3\Include" -I"." -I"..\microchip\include" -g

clean : 
	$(RM) "Objects\usb_descriptors.o" "Objects\main.o" "Objects\usb_device.o" "Objects\usb_function_cdc.o" "Objects\D32.o" "Objects\NesLab.o" "Objects\Athena.o" "Objects\UpDown.o" "Objects\Julabo.o" "D32.elf" "D32.hex"

