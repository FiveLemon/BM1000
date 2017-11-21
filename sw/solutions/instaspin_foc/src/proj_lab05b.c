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
//! \file   solutions/instaspin_foc/src/proj_lab05b.c
//! \brief Adjusting the speed controller
//!
//! (C) Copyright 2011, Texas Instruments, Inc.

//! \defgroup PROJ_LAB05b PROJ_LAB05b
//@{

//! \defgroup PROJ_LAB05b_OVERVIEW Project Overview
//!
//! Adjusting the supplied speed controller
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

#define LED_BLINK_FREQ_Hz   5


// **************************************************************************
// the globals

uint_least16_t gCounter_updateGlobals = 0;

bool Flag_Latch_softwareUpdate = true;

CTRL_Handle ctrlHandle;

#ifdef CSM_ENABLE
#pragma DATA_SECTION(halHandle,"rom_accessed_data");
#endif
HAL_Handle halHandle;

PROCTRL_Obj  MyProcessCtrl;
PROCTRL_Handle proctrlHandle;


uint32_t DispData;

#ifdef CSM_ENABLE
#pragma DATA_SECTION(gUserParams,"rom_accessed_data");
#endif
USER_Params gUserParams;

HAL_PwmData_t gPwmData = {_IQ(0.0), _IQ(0.0), _IQ(0.0)};

HAL_AdcData_t gAdcData;

_iq gMaxCurrentSlope = _IQ(0.0);

#ifdef FAST_ROM_V1p6
CTRL_Obj *controller_obj;
#else
#ifdef CSM_ENABLE
#pragma DATA_SECTION(ctrl,"rom_accessed_data");
#endif
CTRL_Obj ctrl;				//v1p7 format
#endif

uint16_t gLEDcnt = 0;


//volatile MOTOR_Vars_t gMotorVars = MOTOR_Vars_INIT;

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
  uint_least8_t ctrlNumber = 1;
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
  controller_obj = (CTRL_Obj *)ctrlHandle;
#else
  ctrlHandle = CTRL_initCtrl(estNumber,&ctrl,sizeof(ctrl));	//v1p7 format default
#endif


  {
    CTRL_Version version;

    // get the version number
    CTRL_getVersion(ctrlHandle,&version);
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


  GPIO_setLow(halHandle->gpioHandle,GPIO_Number_8);
  HAL_turnLedOn(halHandle,(GPIO_Number_e)HAL_Gpio_LED2);


  // set the default controller parameters
  CTRL_setParams(ctrlHandle,&gUserParams);

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

    // set the default controller parameters (Reset the control to re-identify the motor)
    CTRL_setParams(ctrlHandle,&gUserParams);
    proctrlHandle->motorHandle->Flag_Run_Identify = false;

  } // end of for(;;) loop

} // end of main() function


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
	//HAL_toggleLed(halHandle,(GPIO_Number_e)HAL_Gpio_LED2);

	PROCTRL_getChipTemperture(proctrlHandle, &gAdcData);
	PROCTRL_getDCbusVoltage(proctrlHandle, &gAdcData);
    }

  }

  PROCTRL_getSensorData(proctrlHandle, &gAdcData);

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

/*
       if(CTRL_isError(ctrlHandle))
          {
            // set the enable controller flag to false
            CTRL_setFlag_enableCtrl(ctrlHandle,false);

            // set the enable system flag to false
            gMotorVars.Flag_enableSys = false;

            // disable the PWM
            HAL_disablePwm(halHandle);
          }
        else
          {
            // update the controller state
            bool flag_ctrlStateChanged = CTRL_updateState(ctrlHandle);

            // enable or disable the control
            CTRL_setFlag_enableCtrl(ctrlHandle, gMotorVars.Flag_Run_Identify);

            if(flag_ctrlStateChanged)
              {
                CTRL_State_e ctrlState = CTRL_getState(ctrlHandle);

                if(ctrlState == CTRL_State_OffLine)
                  {
                    // enable the PWM
                    HAL_enablePwm(halHandle);
                  }
                else if(ctrlState == CTRL_State_OnLine)
                  {
                    if(gMotorVars.Flag_enableOffsetcalc == true)
                    {
                      // update the ADC bias values
                      HAL_updateAdcBias(halHandle);
                    }
                    else
                    {
                      // set the current bias
                      HAL_setBias(halHandle,HAL_SensorType_Current,0,_IQ(I_A_offset));
                      HAL_setBias(halHandle,HAL_SensorType_Current,1,_IQ(I_B_offset));
                      HAL_setBias(halHandle,HAL_SensorType_Current,2,_IQ(I_C_offset));

                      // set the voltage bias
                      HAL_setBias(halHandle,HAL_SensorType_Voltage,0,_IQ(V_A_offset));
                      HAL_setBias(halHandle,HAL_SensorType_Voltage,1,_IQ(V_B_offset));
                      HAL_setBias(halHandle,HAL_SensorType_Voltage,2,_IQ(V_C_offset));
                    }

                    // Return the bias value for currents
                    gMotorVars.I_bias.value[0] = HAL_getBias(halHandle,HAL_SensorType_Current,0);
                    gMotorVars.I_bias.value[1] = HAL_getBias(halHandle,HAL_SensorType_Current,1);
                    gMotorVars.I_bias.value[2] = HAL_getBias(halHandle,HAL_SensorType_Current,2);

                    // Return the bias value for voltages
                    gMotorVars.V_bias.value[0] = HAL_getBias(halHandle,HAL_SensorType_Voltage,0);
                    gMotorVars.V_bias.value[1] = HAL_getBias(halHandle,HAL_SensorType_Voltage,1);
                    gMotorVars.V_bias.value[2] = HAL_getBias(halHandle,HAL_SensorType_Voltage,2);

                    // enable the PWM
                    HAL_enablePwm(halHandle);
                  }
                else if(ctrlState == CTRL_State_Idle)
                  {
                    // disable the PWM
                    HAL_disablePwm(halHandle);
                    gMotorVars.Flag_Run_Identify = false;
                  }

                if((CTRL_getFlag_enableUserMotorParams(ctrlHandle) == true) &&
                  (ctrlState > CTRL_State_Idle) &&
                  (gMotorVars.CtrlVersion.minor == 6))
                  {
                    // call this function to fix 1p6
                    USER_softwareUpdate1p6(ctrlHandle, );
                  }

              }
          }




        if(EST_isMotorIdentified(obj->estHandle))
          {
            // set the current ramp
            EST_setMaxCurrentSlope_pu(obj->estHandle,gMaxCurrentSlope);
            gMotorVars.Flag_MotorIdentified = true;

            // set the speed reference
            CTRL_setSpd_ref_krpm(ctrlHandle,gMotorVars.SpeedRef_krpm);

            // set the speed acceleration
            CTRL_setMaxAccel_pu(ctrlHandle,_IQmpy(MAX_ACCEL_KRPMPS_SF,gMotorVars.MaxAccel_krpmps));
            if(Flag_Latch_softwareUpdate)
            {
              Flag_Latch_softwareUpdate = false;

              USER_calcPIgains(ctrlHandle, &gUserParams);

              // initialize the watch window kp and ki current values with pre-calculated values
              gMotorVars.Kp_Idq = CTRL_getKp(ctrlHandle,CTRL_Type_PID_Id);
              gMotorVars.Ki_Idq = CTRL_getKi(ctrlHandle,CTRL_Type_PID_Id);

              // initialize the watch window kp and ki values with pre-calculated values
              gMotorVars.Kp_spd = CTRL_getKp(ctrlHandle,CTRL_Type_PID_spd);
              gMotorVars.Ki_spd = CTRL_getKi(ctrlHandle,CTRL_Type_PID_spd);
            }

          }
        else
          {
            Flag_Latch_softwareUpdate = true;

            // the estimator sets the maximum current slope during identification
            gMaxCurrentSlope = EST_getMaxCurrentSlope_pu(obj->estHandle);
          }


        // when appropriate, update the global variables
        if(gCounter_updateGlobals >= NUM_MAIN_TICKS_FOR_GLOBAL_VARIABLE_UPDATE)
          {
            // reset the counter
            gCounter_updateGlobals = 0;

            updateGlobalVariables_motor(ctrlHandle);
          }

        // recalculate Kp and Ki gains to fix the R/L limitation of 2000.0, and Kp limit to 0.11
        recalcKpKi(ctrlHandle, &gUserParams);

        if(CTRL_getMotorType(ctrlHandle) == MOTOR_Type_Induction)
          {
            // set electrical frequency limit to zero while identifying an induction motor
            setFeLimitZero(ctrlHandle);

            // calculate Dir_qFmt for acim motors
            acim_Dir_qFmtCalc(ctrlHandle);
          }

        // update Kp and Ki gains
        updateKpKiGains(ctrlHandle);

        // enable/disable the forced angle
        EST_setFlag_enableForceAngle(obj->estHandle,gMotorVars.Flag_enableForceAngle);

        // enable or disable power warp
        CTRL_setFlag_enablePowerWarp(ctrlHandle,gMotorVars.Flag_enablePowerWarp);






void updateGlobalVariables_motor(CTRL_Handle handle)
{
  CTRL_Obj *obj = (CTRL_Obj *)handle;

  // get the speed estimate
  gMotorVars.Speed_krpm = EST_getSpeed_krpm(obj->estHandle);

  // get the real time speed reference coming out of the speed trajectory generator
  gMotorVars.SpeedTraj_krpm = _IQmpy(CTRL_getSpd_int_ref_pu(handle),EST_get_pu_to_krpm_sf(obj->estHandle));

  // get the torque estimate
  gMotorVars.Torque_Nm = USER_computeTorque_Nm(handle, gTorque_Flux_Iq_pu_to_Nm_sf, gTorque_Ls_Id_Iq_pu_to_Nm_sf);

  // get the magnetizing current
  gMotorVars.MagnCurr_A = EST_getIdRated(obj->estHandle);

  // get the rotor resistance
  gMotorVars.Rr_Ohm = EST_getRr_Ohm(obj->estHandle);

  // get the stator resistance
  gMotorVars.Rs_Ohm = EST_getRs_Ohm(obj->estHandle);

  // get the stator inductance in the direct coordinate direction
  gMotorVars.Lsd_H = EST_getLs_d_H(obj->estHandle);

  // get the stator inductance in the quadrature coordinate direction
  gMotorVars.Lsq_H = EST_getLs_q_H(obj->estHandle);

  // get the flux in V/Hz in floating point
  gMotorVars.Flux_VpHz = EST_getFlux_VpHz(obj->estHandle);

  // get the flux in Wb in fixed point
  gMotorVars.Flux_Wb = USER_computeFlux(handle, gFlux_pu_to_Wb_sf);

  // get the controller state
  gMotorVars.CtrlState = CTRL_getState(handle);

  // get the estimator state
  gMotorVars.EstState = EST_getState(obj->estHandle);

  // Get the DC buss voltage
  gMotorVars.VdcBus_kV = _IQmpy(gAdcData.dcBus,_IQ(USER_IQ_FULL_SCALE_VOLTAGE_V/1000.0));

  return;
} // end of updateGlobalVariables_motor() function


void updateKpKiGains(CTRL_Handle handle)
{
  if((gMotorVars.CtrlState == CTRL_State_OnLine) && (gMotorVars.Flag_MotorIdentified == true) && (Flag_Latch_softwareUpdate == false))
    {
      // set the kp and ki speed values from the watch window
      CTRL_setKp(handle,CTRL_Type_PID_spd,gMotorVars.Kp_spd);
      CTRL_setKi(handle,CTRL_Type_PID_spd,gMotorVars.Ki_spd);

      // set the kp and ki current values for Id and Iq from the watch window
      CTRL_setKp(handle,CTRL_Type_PID_Id,gMotorVars.Kp_Idq);
      CTRL_setKi(handle,CTRL_Type_PID_Id,gMotorVars.Ki_Idq);
      CTRL_setKp(handle,CTRL_Type_PID_Iq,gMotorVars.Kp_Idq);
      CTRL_setKi(handle,CTRL_Type_PID_Iq,gMotorVars.Ki_Idq);
	}

  return;
} // end of updateKpKiGains() function



 */

//@} //defgroup
// end of file



