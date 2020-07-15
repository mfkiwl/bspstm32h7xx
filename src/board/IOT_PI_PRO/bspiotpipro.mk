#*********************************************************************************************************
#
#                                 ����������Ϣ�������޹�˾
#
#                                   ΢�Ͱ�ȫʵʱ����ϵͳ
#
#                                       MS-RTOS(TM)
#
#                               Copyright All Rights Reserved
#
#--------------�ļ���Ϣ--------------------------------------------------------------------------------
#
# ��   ��   ��: bspiotpipro.mk
#
# ��   ��   ��: Jiao.jinxing
#
# �ļ���������: 2020 �� 01 �� 02 ��
#
# ��        ��: IoT Pi Pro Makefile
#*********************************************************************************************************

#*********************************************************************************************************
# Clear setting
#*********************************************************************************************************
include $(CLEAR_VARS_MK)

#*********************************************************************************************************
# Target
#*********************************************************************************************************
LOCAL_TARGET_NAME := bspiotpipro.elf

#*********************************************************************************************************
# Source list
#*********************************************************************************************************
LOCAL_SRCS := \
$(STM32H7HAL_SRCS) \
src/common/bsp_lib.c \
src/driver/stm32_drv_sd.c \
src/driver/stm32_drv_fb.c \
src/driver/stm32_drv_touch.c \
src/driver/stm32_drv_gpio.c \
src/driver/stm32h7_drv_i2c.c \
src/driver/stm32_drv_netif.c \
src/driver/stm32_drv_wdg.c \
src/driver/stm32_drv_uart.c \
src/driver/stm32_drv_rtc.c \
src/board/IOT_PI_PRO/iot_pi_pro_init.c \
src/board/IOT_PI_PRO/iot_pi_pro_irq.c \
src/board/IOT_PI_PRO/iot_pi_pro_sd.c \
src/board/IOT_PI_PRO/iot_pi_pro_lcd.c \
src/board/IOT_PI_PRO/iot_pi_pro_uart.c \
src/board/IOT_PI_PRO/iot_pi_pro_esp8266.c \
src/board/IOT_PI_PRO/iot_pi_pro_i2c.c \
src/board/IOT_PI_PRO/iot_pi_pro_ts.c \
src/Drivers/CMSIS/Device/ST/STM32H7xx/Source/Templates/system_stm32h7xx.c \
src/startup/startup_stm32h750xx.S

#*********************************************************************************************************
# Header file search path (eg. LOCAL_INC_PATH := -I"Your header files search path")
#*********************************************************************************************************
LOCAL_INC_PATH := \
$(STM32H7HAL_INC_PATH) \
-I"./src/board/IOT_PI_PRO" \
-I"./src/Drivers/BSP/Components" \
-I"./src/Drivers/BSP/Components/Common" \
-I"$(MSRTOS_BASE_PATH)/libmsdriver/src"

#*********************************************************************************************************
# Pre-defined macro (eg. -DYOUR_MARCO=1)
#*********************************************************************************************************
LOCAL_DSYMBOL := \
$(STM32H7HAL_DSYMBOL) \
-D__MS_KERNEL_SPACE \
-DSTM32H750xx \
-DUSE_USB_HS=1 \
-DHSE_VALUE=25000000 \
-DIOT_PI_PRO

#*********************************************************************************************************
# Compiler flags
#*********************************************************************************************************
LOCAL_CFLAGS   := 
LOCAL_CXXFLAGS := 

#*********************************************************************************************************
# Depend library (eg. LOCAL_DEPEND_LIB := -la LOCAL_DEPEND_LIB_PATH := -L"Your library search path")
#*********************************************************************************************************
LOCAL_DEPEND_LIB      := -lmslauncher -llittlefs -lfatfs -lnet_lwip -lnet_esp_at -lstusbhost -lmsdriver
LOCAL_DEPEND_LIB_PATH := \
$(STM32H7HAL_DEPEND_LIB_PATH) \
-L"$(MSRTOS_BASE_PATH)/libmsdriver/$(OUTDIR)"

#*********************************************************************************************************
# Link script file
#*********************************************************************************************************
LOCAL_LD_SCRIPT := MS-RTOS.ld

#*********************************************************************************************************
# C++ config
#*********************************************************************************************************
LOCAL_USE_CXX        := no
LOCAL_USE_CXX_EXCEPT := no

#*********************************************************************************************************
# Code coverage config
#*********************************************************************************************************
LOCAL_USE_GCOV := no

#*********************************************************************************************************
# User link command
#*********************************************************************************************************
LOCAL_PRE_LINK_CMD   := 
LOCAL_POST_LINK_CMD  := 
LOCAL_PRE_STRIP_CMD  := 
LOCAL_POST_STRIP_CMD := 

include $(BSP_MK)

#*********************************************************************************************************
# End
#*********************************************************************************************************