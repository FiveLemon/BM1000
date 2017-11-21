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
//! \file   solutions/instaspin_foc/src/proj_lab10e.c
//! \brief Flying start project
//!
//! (C) Copyright 2011, Texas Instruments, Inc.

//! \defgroup PROJ_LAB10e PROJ_LAB10e
//@{

//! \defgroup PROJ_LAB10e_OVERVIEW Project Overview
//!
//! Flying Start (Rotor already moving)
//!
// **************************************************************************
// the includes

// system includes
#include <math.h>
#include "main.h"

#ifdef FLASH
#pragma CODE_SECTION(mainISR,"ramfuncs");
#endif

// Include header files used in the main function

// **************************************************************************
// the defines
#define LED_BLINK_FREQ_Hz   100
//(uint_least32_t)(USER_ISR_FREQ_Hz / LED_BLINK_FREQ_Hz)
// **************************************************************************
// the globals


//bool Flag_Latch_softwareUpdate = true;

CTRL_Handle ctrlHandle;

#ifdef CSM_ENABLE
#pragma DATA_SECTION(halHandle,"rom_accessed_data");
#endif
HAL_Handle halHandle;



PROCTRL_Obj    MyProcessCtrl;
PROCTRL_Handle proctrlHandle;


#ifdef CSM_ENABLE
#pragma DATA_SECTION(gUserParams,"rom_accessed_data");
#endif
USER_Params gUserParams;

HAL_PwmData_t gPwmData = {_IQ(0.0), _IQ(0.0), _IQ(0.0)};

HAL_AdcData_t gAdcData;

//HAL_DacData_t gDacData;



#ifdef FAST_ROM_V1p6
CTRL_Obj *controller_obj;
#else
#ifdef CSM_ENABLE
#pragma DATA_SECTION(ctrl,"rom_accessed_data");
#endif
CTRL_Obj ctrl;				//v1p7 format
#endif

uint16_t gLEDcnt = 0;


#ifdef FLASH
// Used for running BackGround in flash, and ISR in RAM
extern uint16_t *RamfuncsLoadStart, *RamfuncsLoadEnd, *RamfuncsRunStart;

#ifdef CSM_ENABLE
extern uint16_t *econst_start, *econst_end, *econst_ram_load;
extern uint16_t *switch_start, *switch_end, *switch_ram_load;
#endif
#endif



// **************************************************************************
// the functions

void main(void)
{
  uint_least8_t estNumber = 0;

#ifdef FAST_ROM_V1p6
  uint_least8_t ctrlNumber = 0;
#endif

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

  proctrlHandle = PROCTRL_init(&MyProcessCtrl,sizeof(MyProcessCtrl));
  MOTOR_CtrlVersion_Init(proctrlHandle->motorHandle);

  // initialize the controller
#ifdef FAST_ROM_V1p6
  ctrlHandle = CTRL_initCtrl(ctrlNumber, estNumber);  		//v1p6 format (06xF and 06xM devices)
#else
  ctrlHandle = CTRL_initCtrl(estNumber,&ctrl,sizeof(ctrl));	//v1p7 format default
#endif

  {
    CTRL_Version version;

    // get the version number
    CTRL_getVersion(ctrlHandle, &version);
    MOTOR_setCtrlVersion(proctrlHandle->motorHandle, &version);
  }

  PROCTRL_setCtrlHandle(proctrlHandle, ctrlHandle);
  PROCTRL_setUserParams(proctrlHandle, &gUserParams);
  PROCTRL_setHalHandle(proctrlHandle, halHandle);


  PROCTRL_setupFlyingStart(proctrlHandle);
  PROCTRL_setupModbus(proctrlHandle);
  PROCTRL_setupMotors(proctrlHandle);
  PROCTRL_setupFSM(proctrlHandle);


  // initialize the user parameters
  USER_setSysParams(&gUserParams);
  // set the hardware abstraction layer parameters
  HAL_setParams(halHandle,&gUserParams);

  USER_setParams(&gUserParams);
  USER_setWaitTimeParams(&gUserParams);
  USER_checkDefErrors(&gUserParams);

  // Setup Board Address
  USER_setMotorIDs(&gUserParams, HAL_getBoardAddr(halHandle));
  MB_setSlaveAddress(proctrlHandle->modbusHandle, (HAL_getBoardAddr(halHandle) + 0x11) );

  // Initial Motor Parameter must be after Get Board Address
  USER_setMotorParams(&gUserParams);

  // choice board current shut resister value by Board Address
  USER_setBoardParams(&gUserParams);

  // must be after BoardParams function
  HAL_setupAdcParams(halHandle,&gUserParams);

  // check for errors in user parameters
  USER_checkForErrors(&gUserParams);

  // store user parameter error in global variable
  MOTOR_setMotorErrorCode(proctrlHandle->motorHandle, USER_getErrorCode(&gUserParams));


  #ifndef F2802xF
  // set DAC parameters
  HAL_setDacParameters(halHandle, &gDacData);
  #endif

  // setup faults
  HAL_setupFaults(halHandle);

  // initialize the interrupt vector table
  HAL_initIntVectorTable(halHandle);

  HAL_enableSciaInt(halHandle);

  HAL_enableTimer1Int(halHandle, &Timer1ISR);

  // enable the ADC interrupts
  HAL_enableAdcInts(halHandle);

  // enable global interrupts
  HAL_enableGlobalInts(halHandle);

  // enable debug interrupts
  HAL_enableDebugInt(halHandle);

  // disable the PWM
  HAL_disablePwm(halHandle);


  PCA955x_Configure(halHandle->pca955xHandle, PCA955x_PortNum_Port0, 0x00);
  PCA955x_Configure(halHandle->pca955xHandle, PCA955x_PortNum_Port1, 0xff);
  PCA955x_WriteCommand(halHandle->pca955xHandle, PCA955x_PortNum_Port0, 0x50);
  PCA955x_WriteCommand(halHandle->pca955xHandle, PCA955x_PortNum_Port0, 0xac);

  for(;;)
  {

  // Waiting for enable system flag to be set
   while(!(proctrlHandle->motorHandle->Flag_enableSys))
   {

   MB_Poll(proctrlHandle->modbusHandle);
   // do not allow code execution if there is a user parameter error
   PROCTRL_CheckMotorError(proctrlHandle);

   };

   // enable DC bus compensation
   CTRL_setFlag_enableDcBusComp(ctrlHandle, true);

   FSM_getPortStatus(proctrlHandle->fsmHandle);

   FSM_ParamInit(proctrlHandle->fsmHandle);

   PROCTRL_getScaleActors(proctrlHandle, &gUserParams);

   // set the default controller parameters
   CTRL_setParams(ctrlHandle,&gUserParams);

   // Enable the Library internal PI.  Iq is referenced by the speed PI now
   CTRL_setFlag_enableSpeedCtrl(ctrlHandle, true);

   // enable/disable the use of motor parameters being loaded from user.h (Rs measure condition)
   CTRL_setFlag_enableUserMotorParams(ctrlHandle, proctrlHandle->motorHandle->Flag_enableUserParams);

   // enable/disable Rs recalibration during motor startup
   EST_setFlag_enableRsRecalc(ctrlHandle->estHandle, proctrlHandle->motorHandle->Flag_enableRsRecalc);

   // enable/disable automatic calculation of bias values
   CTRL_setFlag_enableOffset(ctrlHandle, proctrlHandle->motorHandle->Flag_enableOffsetcalc);

	// loop while the enable system flag is true
   while(proctrlHandle->motorHandle->Flag_enableSys)
   {
	 MB_Poll(proctrlHandle->modbusHandle);
	 PROCTRL_MainLoop(proctrlHandle, &gUserParams);

   } // end of while(gFlag_enableSys) loop

    // disable the PWM
    HAL_disablePwm(halHandle);
    proctrlHandle->motorHandle->Flag_Run_Identify = false;

  } // end of for(;;) loop

} // end of main() function

// mainISR
interrupt void mainISR(void)
{

  // acknowledge the ADC interrupt
  HAL_acqAdcInt(halHandle,ADC_IntNumber_1);

  // convert the ADC data
  HAL_readAdcData(halHandle,&gAdcData);

  // run the flying start
  FS_run(ctrlHandle, proctrlHandle->fsHandle);

  // run the controller
  CTRL_run(ctrlHandle,halHandle,&gAdcData,&gPwmData);


  if(proctrlHandle->motorHandle->Flag_RunState == false)
  {

    if(BRAKE_getBrakeState(ctrlHandle->brakeHandle) == false)
    {
	  gPwmData.Tabc.value[0] = _IQ(0.0);
	  gPwmData.Tabc.value[1] = _IQ(0.0);
	  gPwmData.Tabc.value[2] = _IQ(0.0);
	  // disable the PWM
	  HAL_disablePwm(halHandle);
	  // PID_setUi(ctrlHandle->pidHandle_spd, 0);
    }
  }

  // write the PWM compare values
  HAL_writePwmData(halHandle,&gPwmData);



  // setup the controller
  CTRL_setup(ctrlHandle);


  #ifndef F2802xF
  // connect inputs of the PWMDAC module.
  gDacData.value[0] = gAdcData.I.value[0];
  gDacData.value[1] = Iq_pu;
  gDacData.value[2] = gMotorVars.speed_est_pu;
  gDacData.value[3] = gMotorVars.angle_est_pu;

  HAL_writeDacData(halHandle,&gDacData);
  #endif

  // toggle status LED (100Hz @  ISR 10kHz)
  if(++gLEDcnt >= 100)
  {
	  static uint16_t MeasCnt = 0;
	//HAL_toggleLed(halHandle,(GPIO_Number_e)HAL_Gpio_LED2);
	gLEDcnt = 0;

    if(FSM_RunTimeState(proctrlHandle->fsmHandle) == true)
    {
	  FSM_RunTimeCnt(proctrlHandle->fsmHandle);
    }

    if(++MeasCnt >= 10 )
    {
    MeasCnt = 0;
	HAL_toggleLed(halHandle,(GPIO_Number_e)HAL_Gpio_PWM);

	PROCTRL_getChipTemperture(proctrlHandle, &gAdcData);
	PROCTRL_getDCbusVoltage(proctrlHandle, &gAdcData);
    }

  }


  PROCTRL_getSensorData(proctrlHandle, &gAdcData);

  //check the PCA9555 INT
  PROCTRL_PollExtInt(proctrlHandle);


  return;
} // end of mainISR() function


interrupt void Timer1ISR(void)
{

    MB_RTUTimerFSM(proctrlHandle->modbusHandle);
	TIMER_clearFlag(halHandle->timerHandle[1]);
    //TIMER_stop(halHandle->timerHandle[1]);

}

interrupt void UART_TxReadyISR(void)
{

    MB_RTUTransmitFSM(proctrlHandle->modbusHandle);

	SCI_clearTxFifoInt(halHandle->sciHandle);
	PIE_clearInt(halHandle->pieHandle,PIE_GroupNumber_9);

}

interrupt void UART_RxISR(void)
{
    MB_RTUReceiveFSM(proctrlHandle->modbusHandle);

	SCI_clearRxFifoOvf(halHandle->sciHandle);
	SCI_clearRxFifoInt(halHandle->sciHandle);
	PIE_clearInt(halHandle->pieHandle,PIE_GroupNumber_9);

}




//@} //defgroup
// end of file



