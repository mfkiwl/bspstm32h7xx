/*********************************************************************************************************
**
**                                ����������Ϣ�������޹�˾
**
**                                  ΢�Ͱ�ȫʵʱ����ϵͳ
**
**                                      MS-RTOS(TM)
**
**                               Copyright All Rights Reserved
**
**--------------�ļ���Ϣ--------------------------------------------------------------------------------
**
** ��   ��   ��: includes.h
**
** ��   ��   ��: Jiao.jinxing
**
** �ļ���������: 2020 �� 04 �� 07 ��
**
** ��        ��: �弶���ͷ�ļ�
*********************************************************************************************************/

#ifndef __BSP_INCLUDES_H
#define __BSP_INCLUDES_H

#ifdef __cplusplus
extern "C" {
#endif

/*********************************************************************************************************
  ͨ��ͷ�ļ�
*********************************************************************************************************/

#include "config.h"

#include "stm32h7xx_ll_bus.h"
#include "stm32h7xx_ll_usart.h"
#include "stm32h7xx_ll_gpio.h"
#include "stm32h7xx_ll_dma.h"
#include "stm32h7xx_ll_rcc.h"

#include "stm32h7xx_hal.h"
#include "stm32h7xx_hal_uart.h"
#include "stm32h7xx_hal_usart.h"
#include "stm32h7xx_hal_gpio.h"
#include "stm32h7xx_hal_rcc.h"
#include "stm32h7xx_hal_cortex.h"
#include "stm32h7xx_hal_smartcard.h"
#include "stm32h7xx_hal_dma2d.h"

#include "core_cm7.h"

/*********************************************************************************************************
  �弶���ͷ�ļ�
*********************************************************************************************************/

#if defined(STM32H750_DEMO)

#include "stm32h750_demo.h"

#elif defined(IOT_PI_PRO)

#include "iot_pi_pro.h"

#endif

/*********************************************************************************************************
  ��������
*********************************************************************************************************/

void SystemClock_Config(void);

const ms_flashfs_partition_t *ms_bsp_flash_part_info(void);
ms_uint32_t ms_bsp_flash_data_sector(ms_uint32_t data_sector_id);
ms_uint32_t ms_bsp_flash_addr_to_sector(ms_addr_t addr);

void        ms_bsp_printk_init(void);

#ifdef __cplusplus
}
#endif

#endif                                                                  /*  __BSP_INCLUDES_H            */
/*********************************************************************************************************
  END
*********************************************************************************************************/