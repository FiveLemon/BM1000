/* --COPYRIGHT--,BSD
 * Copyright (c) 2012, Texas Instruments Incorporated
 * All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions
 * are met:
 *
 * *  Redistributions of source code must retain the above copyright
 *    notice, this list of conditions and the following disclaimer.
 *
 * *  Redistributions in binary form must reproduce the above copyright
 *    notice, this list of conditions and the following disclaimer in the
 *    documentation and/or other materials provided with the distribution.
 *
 * *  Neither the name of Texas Instruments Incorporated nor the names of
 *    its contributors may be used to endorse or promote products derived
 *    from this software without specific prior written permission.
 *
 * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
 * AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO,
 * THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR
 * PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR
 * CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL,
 * EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO,
 * PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS;
 * OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY,
 * WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR
 * OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE,
 * EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 * --/COPYRIGHT--*/
//! \file   solutions/instaspin_foc/src/proj_lab01.c
//! \brief CPU and Inverter Set-up and introduction to interfacing to the ROM library
//!
//! (C) Copyright 2011, Texas Instruments, Inc.

//! \defgroup PROJ_LAB01 PROJ_LAB01
//@{

//! \defgroup PROJ_LAB01_OVERVIEW Project Overview
//!
//! CPU and Inverter Set-up and introduction to interfacing to the ROM library
//!

//
// **************************************************************************
// the includes

// system includes
#include <math.h>


// modules
#include "sw/modules/math/src/32b/math.h"
#include "sw/modules/memCopy/src/memCopy.h"


// drivers


// platforms
#include "main.h"


// **************************************************************************
// the defines

#define LED_BLINK_FREQ_Hz   1

// **************************************************************************
// the globals

uint_least32_t gLEDcnt = 0;                   // Counter used to divide down the ISR rate for visually blinking an LED

uint16_t sdataA[2];    // Send data for SCI-A
char rdataA[2];
uint16_t asdf;



MB_Handle MyMBhandle;
MB_Obj  My_ModBus;



#ifdef CSM_ENABLE
#pragma DATA_SECTION(halHandle,"rom_accessed_data");
#endif
HAL_Handle halHandle;                         // Handle to the Inverter hardware abstraction layer

#ifdef CSM_ENABLE
#pragma DATA_SECTION(gUserParams,"rom_accessed_data");
#endif
USER_Params gUserParams;                      // Contains the user.h settings

HAL_PwmData_t gPwmData = {0,0,0};             // Contains PWM duty cycles in global Q format

HAL_AdcData_t gAdcData = {0,0,0,0,0,0,0};     // Contains Current and Voltage ADC readings in global Q format

volatile MOTOR_Vars_t gMotorVars = MOTOR_Vars_INIT;

#ifdef FLASH
// Used for running BackGround in flash, and ISR in RAM
extern uint16_t *RamfuncsLoadStart, *RamfuncsLoadEnd, *RamfuncsRunStart;

#ifdef CSM_ENABLE
extern uint16_t *econst_start, *econst_end, *econst_ram_load;
extern uint16_t *switch_start, *switch_end, *switch_ram_load;
#endif
#endif


#ifdef DRV8301_SPI
// Watch window interface to the 8301 SPI
DRV_SPI_8301_Vars_t gDrvSpi8301Vars;
#endif

#ifdef DRV8305_SPI
// Watch window interface to the 8305 SPI
DRV_SPI_8305_Vars_t gDrvSpi8305Vars;
#endif

// **************************************************************************
// the functions
void scia_msg(char * msg);




void main(void)
{


  // Only used if running from FLASH
  // Note that the variable FLASH is defined by the project
  #ifdef FLASH
  // Copy time critical code and Flash setup code to RAM
  // The RamfuncsLoadStart, RamfuncsLoadEnd, and RamfuncsRunStart
  // symbols are created by the linker. Refer to the linker files.
  memCopy((uint16_t *)&RamfuncsLoadStart,(uint16_t *)&RamfuncsLoadEnd,(uint16_t *)&RamfuncsRunStart);

  #ifdef CSM_ENABLE
    //copy .econst to unsecure RAM
    if(*econst_end - *econst_start)
      {
        memCopy((uint16_t *)&econst_start,(uint16_t *)&econst_end,(uint16_t *)&econst_ram_load);
      }

    //copy .switch ot unsecure RAM
    if(*switch_end - *switch_start)
      {
        memCopy((uint16_t *)&switch_start,(uint16_t *)&switch_end,(uint16_t *)&switch_ram_load);
      }
  #endif
  #endif

  // initialize the hardware abstraction layer
  halHandle = HAL_init(&hal,sizeof(hal));


  MyMBhandle = MB_init(&My_ModBus, sizeof(My_ModBus));

  MB_setSciHandle(MyMBhandle, halHandle->sciHandle);
  MB_setTimHandle(MyMBhandle, halHandle->timerHandle[1]);
  MB_setGpioHandle(MyMBhandle, halHandle->gpioHandle);
  MB_setSlaveAddress(MyMBhandle, 0x01);


  // initialize the user parameters
  USER_setParams(&gUserParams);

  // set the hardware abstraction layer parameters
  HAL_setParams(halHandle,&gUserParams);

  USER_setMotorParams(&gUserParams);

  // check for errors in user parameters
  USER_checkForErrors(&gUserParams);

  // store user parameter error in global variable
  gMotorVars.UserErrorCode = USER_getErrorCode(&gUserParams);

  // do not allow code execution if there is a user parameter error
  if(gMotorVars.UserErrorCode != USER_ErrorCode_NoError)
    {
      for(;;)
        {
          gMotorVars.Flag_enableSys = false;
        }
    }



#ifdef LAUNCHPAD
  // Setup GPIOs 0 and 1 as outputs for use in project lab1 only.
  // This is specific to the launchpad because its LEDs are also used by the PWM channels.
  HAL_setupLaunchPadGpio0and1(halHandle);
#endif

  // setup faults
  HAL_setupFaults(halHandle);


  // initialize the interrupt vector table
  HAL_initIntVectorTable(halHandle);


  // enable the ADC interrupts
  HAL_enableAdcInts(halHandle);

  HAL_enableSciaInt(halHandle);

  HAL_enableTimer1Int(halHandle, &Timer1ISR);

  // enable global interrupts
  HAL_enableGlobalInts(halHandle);


  // enable debug interrupts
  HAL_enableDebugInt(halHandle);

  // disable the PWM
  HAL_disablePwm(halHandle);


#ifdef DRV8301_SPI
  // turn on the DRV8301 if present
  HAL_enableDrv(halHandle);
  // initialize the DRV8301 interface
  HAL_setupDrvSpi(halHandle,&gDrvSpi8301Vars);
#endif

#ifdef DRV8305_SPI
  // turn on the DRV8305 if present
  HAL_enableDrv(halHandle);
  // initialize the DRV8305 interface
  HAL_setupDrvSpi(halHandle,&gDrvSpi8305Vars);
#endif

  //GPIO_setLow(halHandle->gpioHandle,GPIO_Number_8);
  MB_PortTimersEnable(MyMBhandle);


  // For ever loop
  while(true)
	  {
       MB_Poll(MyMBhandle);
	  };


} // end of main() function


interrupt void mainISR(void)
{


  // toggle status LED
  if(++gLEDcnt >= (uint_least32_t)(USER_ISR_FREQ_Hz / LED_BLINK_FREQ_Hz))
  {
    //HAL_toggleLed(halHandle,(GPIO_Number_e)HAL_Gpio_LED2);
    gLEDcnt = 0;
    //TIMER_start(halHandle->timerHandle[1]);
    //scia_msg(msg);


  }


  // acknowledge the ADC interrupt
  HAL_acqAdcInt(halHandle,ADC_IntNumber_1);


  // convert the ADC data
  HAL_readAdcData(halHandle,&gAdcData);


  // ADC processing and pwm result code goes here


  // write the PWM compare values
  HAL_writePwmData(halHandle,&gPwmData);


  return;
} // end of mainISR() function


void scia_msg(char * msg)
{
    int i;
    i = 0;
    while(msg[i] != '\0')
    {
    	SCI_putDataBlocking(halHandle->sciHandle,msg[i]);
        i++;
    }
}

interrupt void Timer1ISR(void)
{

    MB_RTUTimerFSM(MyMBhandle);
	TIMER_clearFlag(halHandle->timerHandle[1]);
    //TIMER_stop(halHandle->timerHandle[1]);

}

interrupt void UART_TxReadyISR(void)
{

    MB_RTUTransmitFSM(MyMBhandle);

	SCI_clearTxFifoInt(halHandle->sciHandle);
	PIE_clearInt(halHandle->pieHandle,PIE_GroupNumber_9);

}

interrupt void UART_RxISR(void)
{
    MB_RTUReceiveFSM(MyMBhandle);

	SCI_clearRxFifoOvf(halHandle->sciHandle);
	SCI_clearRxFifoInt(halHandle->sciHandle);
	PIE_clearInt(halHandle->pieHandle,PIE_GroupNumber_9);

}



//@} //defgroup
// end of file




