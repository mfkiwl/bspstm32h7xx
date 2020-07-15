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
** ��   ��   ��: stm32_drv_i2c.h
**
** ��   ��   ��: Jiao.jinxing
**
** �ļ���������: 2020 �� 04 �� 07 ��
**
** ��        ��: STM32 оƬ I2C ��������ͷ�ļ�
*********************************************************************************************************/

#ifndef STM32_DRV_I2C_H
#define STM32_DRV_I2C_H

#ifdef __cplusplus
extern "C" {
#endif

ms_err_t stm32_i2c_bus_dev_create(const char *path, ms_uint8_t channel);

void stm32_i2c_ev_irqhandler(ms_uint8_t channel);
void stm32_i2c_er_irqhandler(ms_uint8_t channel);

#ifdef __cplusplus
}
#endif

#endif                                                                  /*  STM32_DRV_I2C_H             */
/*********************************************************************************************************
  END
*********************************************************************************************************/