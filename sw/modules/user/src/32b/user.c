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
//! \file   solutions/instaspin_foc/src/user.c
//! \brief Contains the function for setting initialization data to the CTRL, HAL, and EST modules
//!
//! (C) Copyright 2012, Texas Instruments, Inc.


// **************************************************************************
// the includes

#include <math.h>
#include "user.h"
#include "sw/modules/ctrl/src/32b/ctrl.h"


// **************************************************************************
// the defines

// The Board Params Define
//IQ_FULL_SCALE_CURRENT_A     IQ_FULL_SCALE_VOLTAGE_V     ADC_FULL_SCALE_CURRENT_A     ADC_FULL_SCALE_VOLTAGE_V
#define BM1000_100mR_Board {2.0,  500.0, 3.96,   454.0}
#define BM1000_20mR_Board  {10.0, 500.0, 19.89,  454.0}
#define BM1000_8mR_Board   {25.0, 500.0, 49.725, 454.0}

//MOTOR_TYPE     POLE_PAIRS Rr         Rs          Ls_d          Ls_q         RATED_FLUX  MAGNETIZING_CURRENT RES_EST IND_EST  MAX_CURRENT  FLUX_EST_FREQ_Hz
#define My_Motor_6W      {MOTOR_Type_Induction, 2, 255.69,     306.0905,   0.4444863,    0.4444863,    3.1299,     0.1244159,       0.05,   NULL,     0.3,         5.0}
#define My_Motor_15W     {MOTOR_Type_Induction, 2, 163.844971, 115.852562, 0.307418883,  0.307418883,  3.1299,     0.199999928,     0.05,   NULL,     0.3,         5.0}
#define My_Motor_20W     {MOTOR_Type_Induction, 2, 175.751907, 106.236,    0.200103074,  0.200103074,  3.1299,     0.277212858,     0.05,   NULL,     0.3,         5.0}
#define My_Motor_25W     {MOTOR_Type_Induction, 2, 101.2162,   94.0951004, 0.3180124748, 0.3180124748, 3.1299,     0.235005856,     0.05,   NULL,     0.3,         5.0}
#define My_Motor_25WB    {MOTOR_Type_Induction, 2, 150.17395,  87.6870346, 0.103483535,  0.103483535,  3.1299,     0.240853429,     0.05,   NULL,     0.3,         5.0}
#define My_Motor_90W     {MOTOR_Type_Induction, 2, 25.47448,   17.84702,   0.07420402,   0.07420402,   3.1299,     0.7426178,       0.2,    NULL,     1.6,         5.0}
#define My_Motor_120W    {MOTOR_Type_Induction, 2, 34.1684952, 17.2417736, 0.0492000505, 0.0492000505, 3.1299,     0.773149729,     0.2,    NULL,     1.15,        5.0}
#define My_Motor_180W    {MOTOR_Type_Induction, 2, 16.0559978, 8.17313385, 0.0257577542, 0.0257577542, 3.1299,     1.01525545,      0.3,    NULL,     1.2,         5.0}
#define My_Motor_200W    {MOTOR_Type_Pm       , 4, NULL,       10.0687551, 0.0175193269, 0.0175193269, 1.17422569, NULL,            0.2,    -0.2,     2.0,        20.0}
#define My_Motor_400W    {MOTOR_Type_Induction, 2, NULL,       NULL,       NULL,         NULL,         3.1299,     NULL,            0.1,    NULL,     0.2,         5.0}
#define My_Motor_1000W   {MOTOR_Type_Induction, 1, 1.45710015, 2.07180119, 0.0245932639, 0.0245932639, 3.1299,     2.67377782,      1.0,    NULL,     5.0,         5.0}
#define My_Motor_2000W   {MOTOR_Type_Induction, 1, 0.971859396,1.27026629, 0.0116005935, 0.0116005935, 3.1299,     2.7904315,       1.0,    NULL,     5.0,         5.0}


// **************************************************************************
// the typedefs
const UserMotor_Params MOTOR_DATA[]={
		My_Motor_1000W, //
		My_Motor_90W,
		My_Motor_15W, //
		My_Motor_15W,
		My_Motor_6W,
		My_Motor_25WB, //
		My_Motor_180W //


};

const UserBoard_Params BOARD_Params[]={
		BM1000_20mR_Board,
		BM1000_20mR_Board,
		BM1000_100mR_Board,
		BM1000_100mR_Board,
		BM1000_100mR_Board,
		BM1000_20mR_Board,
		BM1000_20mR_Board
};


// **************************************************************************
// the functions
void USER_setSysParams(USER_Params *pUserParams)
{
  pUserParams->offsetPole_rps = USER_OFFSET_POLE_rps;
  pUserParams->ctrlFreq_Hz = USER_CTRL_FREQ_Hz;
  pUserParams->numCurrentSensors = USER_NUM_CURRENT_SENSORS;
  pUserParams->numVoltageSensors = USER_NUM_VOLTAGE_SENSORS;
  pUserParams->systemFreq_MHz = USER_SYSTEM_FREQ_MHz;
  pUserParams->pwmPeriod_usec = USER_PWM_PERIOD_usec;
}

void USER_setParams(USER_Params *pUserParams)
{

  pUserParams->numIsrTicksPerCtrlTick = USER_NUM_ISR_TICKS_PER_CTRL_TICK;
  pUserParams->numCtrlTicksPerCurrentTick = USER_NUM_CTRL_TICKS_PER_CURRENT_TICK;
  pUserParams->numCtrlTicksPerEstTick = USER_NUM_CTRL_TICKS_PER_EST_TICK;
  pUserParams->numCtrlTicksPerSpeedTick = USER_NUM_CTRL_TICKS_PER_SPEED_TICK;
  pUserParams->numCtrlTicksPerTrajTick = USER_NUM_CTRL_TICKS_PER_TRAJ_TICK;

  pUserParams->fluxPole_rps = USER_FLUX_POLE_rps;

  pUserParams->zeroSpeedLimit = (1.0/pUserParams->iqFullScaleFreq_Hz);

  pUserParams->forceAngleFreq_Hz = (1.0 * pUserParams->zeroSpeedLimit * pUserParams->iqFullScaleFreq_Hz);

  pUserParams->maxAccel_Hzps = USER_MAX_ACCEL_Hzps;

  pUserParams->maxAccel_est_Hzps = USER_MAX_ACCEL_EST_Hzps;

  pUserParams->directionPole_rps = USER_DIRECTION_POLE_rps;

  pUserParams->speedPole_rps = USER_SPEED_POLE_rps;

  pUserParams->dcBusPole_rps = USER_DCBUS_POLE_rps;

  pUserParams->fluxFraction = USER_FLUX_FRACTION;

  pUserParams->indEst_speedMaxFraction = USER_SPEEDMAX_FRACTION_FOR_L_IDENT;

  pUserParams->voltageFilterPole_rps = USER_VOLTAGE_FILTER_POLE_rps;

  pUserParams->maxVsMag_pu = USER_MAX_VS_MAG_PU;

  pUserParams->estKappa = USER_EST_KAPPAQ;

  pUserParams->powerWarpGain = USER_POWERWARP_GAIN;

  pUserParams->IdRatedFraction_ratedFlux = USER_IDRATED_FRACTION_FOR_RATED_FLUX;
  pUserParams->IdRatedFraction_indEst = USER_IDRATED_FRACTION_FOR_L_IDENT;
  pUserParams->IdRated_delta = USER_IDRATED_DELTA;

  pUserParams->estFreq_Hz = USER_EST_FREQ_Hz;

  pUserParams->RoverL_estFreq_Hz = USER_R_OVER_L_EST_FREQ_Hz;

  pUserParams->trajFreq_Hz = USER_TRAJ_FREQ_Hz;

  pUserParams->ctrlPeriod_sec = USER_CTRL_PERIOD_sec;


  return;
} // end of USER_setParams() function

void USER_setWaitTimeParams(USER_Params *pUserParams)
{

  pUserParams->ctrlWaitTime[CTRL_State_Error]         = 0;
  pUserParams->ctrlWaitTime[CTRL_State_Idle]          = 0;
  pUserParams->ctrlWaitTime[CTRL_State_OffLine]       = (uint_least32_t)( 5.0 * USER_CTRL_FREQ_Hz);
  pUserParams->ctrlWaitTime[CTRL_State_OnLine]        = 0;

  pUserParams->estWaitTime[EST_State_Error]           = 0;
  pUserParams->estWaitTime[EST_State_Idle]            = 0;
  pUserParams->estWaitTime[EST_State_RoverL]          = (uint_least32_t)( 8.0 * USER_EST_FREQ_Hz);
  pUserParams->estWaitTime[EST_State_Rs]              = 0;
  pUserParams->estWaitTime[EST_State_RampUp]          = (uint_least32_t)((5.0 + (pUserParams->fluxEstFreq_Hz) / USER_MAX_ACCEL_EST_Hzps) * USER_EST_FREQ_Hz);
  pUserParams->estWaitTime[EST_State_IdRated]         = (uint_least32_t)(30.0 * USER_EST_FREQ_Hz);
  pUserParams->estWaitTime[EST_State_RatedFlux_OL]    = (uint_least32_t)( 0.2 * USER_EST_FREQ_Hz);
  pUserParams->estWaitTime[EST_State_RatedFlux]       = 0;
  pUserParams->estWaitTime[EST_State_RampDown]        = (uint_least32_t)( 2.0 * USER_EST_FREQ_Hz);
  pUserParams->estWaitTime[EST_State_LockRotor]       = 0;
  pUserParams->estWaitTime[EST_State_Ls]              = 0;
  pUserParams->estWaitTime[EST_State_Rr]              = (uint_least32_t)(20.0 * USER_EST_FREQ_Hz);
  pUserParams->estWaitTime[EST_State_MotorIdentified] = 0;
  pUserParams->estWaitTime[EST_State_OnLine]          = 0;

  pUserParams->FluxWaitTime[EST_Flux_State_Error]     = 0;
  pUserParams->FluxWaitTime[EST_Flux_State_Idle]      = 0;
  pUserParams->FluxWaitTime[EST_Flux_State_CL1]       = (uint_least32_t)(10.0 * USER_EST_FREQ_Hz);
  pUserParams->FluxWaitTime[EST_Flux_State_CL2]       = (uint_least32_t)( 0.2 * USER_EST_FREQ_Hz);
  pUserParams->FluxWaitTime[EST_Flux_State_Fine]      = (uint_least32_t)( 4.0 * USER_EST_FREQ_Hz);
  pUserParams->FluxWaitTime[EST_Flux_State_Done]      = 0;

  pUserParams->LsWaitTime[EST_Ls_State_Error]        = 0;
  pUserParams->LsWaitTime[EST_Ls_State_Idle]         = 0;
  pUserParams->LsWaitTime[EST_Ls_State_RampUp]       = (uint_least32_t)( 3.0 * USER_EST_FREQ_Hz);
  pUserParams->LsWaitTime[EST_Ls_State_Init]         = (uint_least32_t)( 3.0 * USER_EST_FREQ_Hz);
  pUserParams->LsWaitTime[EST_Ls_State_Coarse]       = (uint_least32_t)( 0.2 * USER_EST_FREQ_Hz);
  pUserParams->LsWaitTime[EST_Ls_State_Fine]         = (uint_least32_t)(20.0 * USER_EST_FREQ_Hz);
  pUserParams->LsWaitTime[EST_Ls_State_Done]         = 0;

  pUserParams->RsWaitTime[EST_Rs_State_Error]        = 0;
  pUserParams->RsWaitTime[EST_Rs_State_Idle]         = 0;
  pUserParams->RsWaitTime[EST_Rs_State_RampUp]       = (uint_least32_t)( 1.0 * USER_EST_FREQ_Hz);
  pUserParams->RsWaitTime[EST_Rs_State_Coarse]       = (uint_least32_t)( 2.0 * USER_EST_FREQ_Hz);
  pUserParams->RsWaitTime[EST_Rs_State_Fine]         = (uint_least32_t)( 7.0 * USER_EST_FREQ_Hz);
  pUserParams->RsWaitTime[EST_Rs_State_Done]         = 0;

  return;
}


void USER_setMotorParams(USER_Params *pUserParams)
{

  pUserParams->motor_type = MOTOR_DATA[pUserParams->motor_ID].motor_type;
  pUserParams->motor_numPolePairs = MOTOR_DATA[pUserParams->motor_ID].motor_numPolePairs;
  pUserParams->motor_ratedFlux = MOTOR_DATA[pUserParams->motor_ID].motor_ratedFlux;
  pUserParams->motor_Rr = MOTOR_DATA[pUserParams->motor_ID].motor_Rr;
  pUserParams->motor_Rs = MOTOR_DATA[pUserParams->motor_ID].motor_Rs;
  pUserParams->motor_Ls_d = MOTOR_DATA[pUserParams->motor_ID].motor_Ls_d;
  pUserParams->motor_Ls_q = MOTOR_DATA[pUserParams->motor_ID].motor_Ls_q;

  pUserParams->IdRated = MOTOR_DATA[pUserParams->motor_ID].IdRated;
  pUserParams->maxCurrent_resEst = MOTOR_DATA[pUserParams->motor_ID].maxCurrent_resEst;
  pUserParams->maxCurrent_indEst = MOTOR_DATA[pUserParams->motor_ID].maxCurrent_indEst;
  pUserParams->maxCurrent = MOTOR_DATA[pUserParams->motor_ID].maxCurrent;
  pUserParams->fluxEstFreq_Hz = MOTOR_DATA[pUserParams->motor_ID].fluxEstFreq_Hz;

  return;
} // end of USER_setMotorParams() function


void USER_setBoardParams(USER_Params *pUserParams)
{

#ifndef QEP
  pUserParams->iqFullScaleFreq_Hz = (400.0); //Hz = (RPM * Poles) / 120
#else
  pUserParams->iqFullScaleFreq_Hz = (pUserParams->motor_numPolePairs*125.0); //Hz = (RPM * Poles) / 120
#endif

  pUserParams->iqFullScaleCurrent_A = BOARD_Params[pUserParams->motor_ID].iqFullScaleCurrent_A;
  pUserParams->iqFullScaleVoltage_V = BOARD_Params[pUserParams->motor_ID].iqFullScaleVoltage_V;

  pUserParams->maxNegativeIdCurrent_a =  (-0.5 * (pUserParams->maxCurrent));

  pUserParams->voltage_sf = (float_t)((BOARD_Params[pUserParams->motor_ID].adcFullScaleVoltage_V)/(pUserParams->iqFullScaleVoltage_V));

  pUserParams->current_sf = (float_t)((BOARD_Params[pUserParams->motor_ID].adcFullScaleCurrent_A)/(pUserParams->iqFullScaleCurrent_A));

  pUserParams->maxCurrentSlope_powerWarp =  (0.3*(pUserParams->maxCurrent_resEst)/(pUserParams->iqFullScaleCurrent_A)/USER_TRAJ_FREQ_Hz);
  pUserParams->maxCurrentSlope = ((pUserParams->maxCurrent_resEst)/(pUserParams->iqFullScaleCurrent_A)/USER_TRAJ_FREQ_Hz);

  return;

} // end of USER_setBoardParams() function

void USER_checkBoardParamsErrors(USER_Params *pUserParams)
{

  if(pUserParams->voltage_sf >= 128.0)
	{
	  USER_setErrorCode(pUserParams, USER_ErrorCode_voltage_sf_High);
	}

  if(pUserParams->voltage_sf < 0.1)
	{
	  USER_setErrorCode(pUserParams, USER_ErrorCode_voltage_sf_Low);
	}

  if((pUserParams->current_sf) >= 128.0)
	{
	  USER_setErrorCode(pUserParams, USER_ErrorCode_current_sf_High);
	}

  if((pUserParams->current_sf) < 0.1)
	{
	  USER_setErrorCode(pUserParams, USER_ErrorCode_current_sf_Low);
	}

  if(pUserParams->maxCurrentSlope > 1.0)
    {
      USER_setErrorCode(pUserParams, USER_ErrorCode_maxCurrentSlope_High);
    }

  if(pUserParams->maxCurrentSlope <= 0.0)
    {
      USER_setErrorCode(pUserParams, USER_ErrorCode_maxCurrentSlope_Low);
    }

  if(pUserParams->maxCurrentSlope_powerWarp > 1.0)
    {
      USER_setErrorCode(pUserParams, USER_ErrorCode_maxCurrentSlope_powerWarp_High);
    }

  if(pUserParams->maxCurrentSlope_powerWarp <= 0.0)
    {
      USER_setErrorCode(pUserParams, USER_ErrorCode_maxCurrentSlope_powerWarp_Low);
    }



  if(pUserParams->maxNegativeIdCurrent_a > 0.0)
    {
      USER_setErrorCode(pUserParams, USER_ErrorCode_maxNegativeIdCurrent_a_High);
    }


  // Only for debug testing, only be commented
//  USER_setErrorCode(pUserParams, USER_ErrorCode_NoError);

  return;
} // end of USER_checkForErrors() function

void USER_checkMotorParamsError(USER_Params *pUserParams)
{

  if((pUserParams->motor_ratedFlux > 0.0) && (pUserParams->motor_type == MOTOR_Type_Pm))
	{
	  if(pUserParams->iqFullScaleVoltage_V >= ((float_t)USER_EST_FREQ_Hz * pUserParams->motor_ratedFlux * 0.7))
		{
		  USER_setErrorCode(pUserParams, USER_ErrorCode_iqFullScaleVoltage_V_High);
		}
	}

  if((pUserParams->motor_ratedFlux > 0.0) && (pUserParams->motor_type == MOTOR_Type_Induction))
	{
	  if(pUserParams->iqFullScaleVoltage_V >= ((float_t)USER_EST_FREQ_Hz * pUserParams->motor_ratedFlux * 0.05))
		{
		  USER_setErrorCode(pUserParams, USER_ErrorCode_iqFullScaleVoltage_V_High);
		}
	}


  if(pUserParams->zeroSpeedLimit > 1.0)
	{
	  USER_setErrorCode(pUserParams, USER_ErrorCode_zeroSpeedLimit_High);
	}

  if(pUserParams->zeroSpeedLimit <= 0.0)
	{
	  USER_setErrorCode(pUserParams, USER_ErrorCode_zeroSpeedLimit_Low);
	}

  if(pUserParams->forceAngleFreq_Hz > ((float_t)USER_EST_FREQ_Hz))
	{
	  USER_setErrorCode(pUserParams, USER_ErrorCode_forceAngleFreq_Hz_High);
	}

  if(pUserParams->forceAngleFreq_Hz <= 0.0)
	{
	  USER_setErrorCode(pUserParams, USER_ErrorCode_forceAngleFreq_Hz_Low);
	}



  if((pUserParams->motor_type != MOTOR_Type_Induction) && (pUserParams->motor_type != MOTOR_Type_Pm))
    {
      USER_setErrorCode(pUserParams, USER_ErrorCode_motor_type_Unknown);
    }

  if((pUserParams->motor_numPolePairs) < 1)
    {
      USER_setErrorCode(pUserParams, USER_ErrorCode_motor_numPolePairs_Low);
    }

  if((pUserParams->motor_ratedFlux != 0.0) && (pUserParams->motor_type == MOTOR_Type_Pm))
    {
      if(pUserParams->motor_ratedFlux > (pUserParams->iqFullScaleFreq_Hz * 65536.0 / (float_t)USER_EST_FREQ_Hz / 0.7))
        {
          USER_setErrorCode(pUserParams, USER_ErrorCode_motor_ratedFlux_High);
        }

      if(pUserParams->motor_ratedFlux < (pUserParams->iqFullScaleVoltage_V / (float_t)USER_EST_FREQ_Hz / 0.7))
        {
          USER_setErrorCode(pUserParams, USER_ErrorCode_motor_ratedFlux_Low);
        }
    }

  if((pUserParams->motor_ratedFlux != 0.0) && (pUserParams->motor_type == MOTOR_Type_Induction))
    {
      if(pUserParams->motor_ratedFlux > (pUserParams->iqFullScaleFreq_Hz * 65536.0 / (float_t)USER_EST_FREQ_Hz / 0.05))
        {
          USER_setErrorCode(pUserParams, USER_ErrorCode_motor_ratedFlux_High);
        }

      if(pUserParams->motor_ratedFlux < (pUserParams->iqFullScaleVoltage_V / (float_t)USER_EST_FREQ_Hz / 0.05))
        {
          USER_setErrorCode(pUserParams, USER_ErrorCode_motor_ratedFlux_Low);
        }
    }

  if(pUserParams->motor_type == MOTOR_Type_Pm)
    {
      if((pUserParams->motor_Rr) > 0.0)
        {
          USER_setErrorCode(pUserParams, USER_ErrorCode_motor_Rr_High);
        }

      if((pUserParams->motor_Rr) < 0.0)
        {
          USER_setErrorCode(pUserParams, USER_ErrorCode_motor_Rr_Low);
        }
    }

  if(((pUserParams->motor_Rr) != 0.0) && (pUserParams->motor_type == MOTOR_Type_Induction))
    {
      if((pUserParams->motor_Rr) > (0.7 * 65536.0 * pUserParams->iqFullScaleVoltage_V / (pUserParams->iqFullScaleCurrent_A)))
        {
          USER_setErrorCode(pUserParams, USER_ErrorCode_motor_Rr_High);
        }

      if((pUserParams->motor_Rr) < (0.7 * pUserParams->iqFullScaleVoltage_V / ((pUserParams->iqFullScaleCurrent_A) * 65536.0)))
        {
          USER_setErrorCode(pUserParams, USER_ErrorCode_motor_Rr_Low);
        }
    }

  if(pUserParams->motor_type == MOTOR_Type_Pm)
    {
      if(pUserParams->maxCurrent_indEst > 0.0)
        {
          USER_setErrorCode(pUserParams, USER_ErrorCode_maxCurrent_indEst_High);
        }

      if((pUserParams->maxCurrent_indEst) < (-(pUserParams->maxCurrent)))
        {
          USER_setErrorCode(pUserParams, USER_ErrorCode_maxCurrent_indEst_Low);
        }
    }

  if(pUserParams->motor_type == MOTOR_Type_Induction)
    {
      if((pUserParams->maxCurrent_indEst) > 0.0)
        {
          USER_setErrorCode(pUserParams, USER_ErrorCode_maxCurrent_indEst_High);
        }

      if((pUserParams->maxCurrent_indEst) < 0.0)
        {
          USER_setErrorCode(pUserParams, USER_ErrorCode_maxCurrent_indEst_Low);
        }
    }


  if(pUserParams->motor_type == MOTOR_Type_Pm)
    {
      if((pUserParams->IdRated) > 0.0)
        {
          USER_setErrorCode(pUserParams, USER_ErrorCode_IdRated_High);
        }

      if((pUserParams->IdRated) < 0.0)
        {
          USER_setErrorCode(pUserParams, USER_ErrorCode_IdRated_Low);
        }
    }

  if(pUserParams->motor_type == MOTOR_Type_Induction)
    {
      if((pUserParams->IdRated) > (pUserParams->maxCurrent))
        {
          USER_setErrorCode(pUserParams, USER_ErrorCode_IdRated_High);
        }

      if((pUserParams->IdRated) < 0.0)
        {
          USER_setErrorCode(pUserParams, USER_ErrorCode_IdRated_Low);
        }
    }

  if(pUserParams->motor_type == MOTOR_Type_Induction)
    {
      if(USER_IDRATED_FRACTION_FOR_RATED_FLUX > ((pUserParams->iqFullScaleCurrent_A) / (1.2 * (pUserParams->maxCurrent))))
        {
          USER_setErrorCode(pUserParams, USER_ErrorCode_IdRatedFraction_ratedFlux_High);
        }

      if(USER_IDRATED_FRACTION_FOR_RATED_FLUX < 0.1)
        {
          USER_setErrorCode(pUserParams, USER_ErrorCode_IdRatedFraction_ratedFlux_Low);
        }
    }

  if(pUserParams->motor_type == MOTOR_Type_Induction)
    {
      if(USER_IDRATED_FRACTION_FOR_L_IDENT > ((pUserParams->iqFullScaleCurrent_A) / (pUserParams->maxCurrent)))
        {
          USER_setErrorCode(pUserParams, USER_ErrorCode_IdRatedFraction_indEst_High);
        }

      if(USER_IDRATED_FRACTION_FOR_L_IDENT < 0.1)
        {
          USER_setErrorCode(pUserParams, USER_ErrorCode_IdRatedFraction_indEst_Low);
        }
    }

  if(pUserParams->motor_type == MOTOR_Type_Induction)
    {
      if(USER_IDRATED_DELTA > ((pUserParams->iqFullScaleCurrent_A) / ((float_t)USER_NUM_ISR_TICKS_PER_CTRL_TICK * (pUserParams->maxCurrent))))
        {
          USER_setErrorCode(pUserParams, USER_ErrorCode_IdRated_delta_High);
        }

      if(USER_IDRATED_DELTA < 0.0)
        {
          USER_setErrorCode(pUserParams, USER_ErrorCode_IdRated_delta_Low);
        }
    }

  if((pUserParams->iqFullScaleFreq_Hz > (4.0 * USER_VOLTAGE_FILTER_POLE_Hz)) ||
    (pUserParams->iqFullScaleFreq_Hz >= ((128.0 * (pUserParams->iqFullScaleCurrent_A)) / (0.02 * (pUserParams->maxCurrent)))) ||
    (pUserParams->iqFullScaleFreq_Hz >= ((128.0 * (pUserParams->iqFullScaleCurrent_A)) / (2.0 * (pUserParams->maxCurrent) * USER_CTRL_PERIOD_sec))) ||
    (pUserParams->iqFullScaleFreq_Hz >= (128.0 * (float_t)pUserParams->motor_numPolePairs * 1000.0 / 60.0)))
    {
	  USER_setErrorCode(pUserParams, USER_ErrorCode_iqFullScaleFreq_Hz_High);
    }

  if((pUserParams->iqFullScaleFreq_Hz < 50.0) ||
    (pUserParams->iqFullScaleFreq_Hz < (pUserParams->fluxEstFreq_Hz)) ||
    (pUserParams->iqFullScaleFreq_Hz < USER_SPEED_POLE_rps) ||
    (pUserParams->iqFullScaleFreq_Hz <= ((float_t)(pUserParams->motor_numPolePairs) * 1000.0 / (60.0 * 128.0))) ||
    (pUserParams->iqFullScaleFreq_Hz < (USER_MAX_ACCEL_Hzps / ((float_t)USER_TRAJ_FREQ_Hz))) ||
    (pUserParams->iqFullScaleFreq_Hz < (USER_MAX_ACCEL_EST_Hzps / ((float_t)USER_TRAJ_FREQ_Hz))) ||
    (pUserParams->iqFullScaleFreq_Hz < ((float_t)USER_R_OVER_L_EST_FREQ_Hz)))
    {
	  USER_setErrorCode(pUserParams, USER_ErrorCode_iqFullScaleFreq_Hz_Low);
    }


  if((pUserParams->motor_Rs) != 0.0)
    {
      if((pUserParams->motor_Rs) > (0.7 * 65536.0 * pUserParams->iqFullScaleVoltage_V / (pUserParams->iqFullScaleCurrent_A)))
        {
          USER_setErrorCode(pUserParams, USER_ErrorCode_motor_Rs_High);
        }

      if((pUserParams->motor_Rs) < (0.7 * pUserParams->iqFullScaleVoltage_V / ((pUserParams->iqFullScaleCurrent_A) * 65536.0)))
        {
          USER_setErrorCode(pUserParams, USER_ErrorCode_motor_Rs_Low);
        }
    }


  if(((pUserParams->motor_Rs) != 0.0) && ((pUserParams->motor_Ls_d) != 0.0) && ((pUserParams->motor_Ls_q) != 0.0))
    {
      if(((float_t)USER_CTRL_FREQ_Hz <= ((pUserParams->motor_Rs) / ((pUserParams->motor_Ls_d) + 1e-9))) ||
        ((float_t)USER_CTRL_FREQ_Hz <= ((pUserParams->motor_Rs) / ((pUserParams->motor_Ls_q) + 1e-9))))
        {
          USER_setErrorCode(pUserParams, USER_ErrorCode_ctrlFreq_Hz_Low);
        }
    }

  if((pUserParams->iqFullScaleVoltage_V <= 0.0) ||
    (pUserParams->iqFullScaleVoltage_V <= (0.5 * (pUserParams->maxCurrent) * (pUserParams->motor_Ls_d) * USER_VOLTAGE_FILTER_POLE_rps)) ||
    (pUserParams->iqFullScaleVoltage_V <= (0.5 * (pUserParams->maxCurrent) * (pUserParams->motor_Ls_q) * USER_VOLTAGE_FILTER_POLE_rps)))
    {
      USER_setErrorCode(pUserParams, USER_ErrorCode_iqFullScaleVoltage_V_Low);
    }

  if(USER_SPEEDMAX_FRACTION_FOR_L_IDENT > ((pUserParams->iqFullScaleCurrent_A) / (pUserParams->maxCurrent)))
    {
      USER_setErrorCode(pUserParams, USER_ErrorCode_indEst_speedMaxFraction_High);
    }

  if(USER_SPEEDMAX_FRACTION_FOR_L_IDENT <= 0.0)
    {
      USER_setErrorCode(pUserParams, USER_ErrorCode_indEst_speedMaxFraction_Low);
    }

  if(((pUserParams->motor_Ls_d)) != 0.0)
    {
      if((pUserParams->motor_Ls_d) > (0.7 * 65536.0 * pUserParams->iqFullScaleVoltage_V / ((pUserParams->iqFullScaleCurrent_A) * USER_VOLTAGE_FILTER_POLE_rps)))
        {
          USER_setErrorCode(pUserParams, USER_ErrorCode_motor_Ls_d_High);
        }

      if((pUserParams->motor_Ls_d) < (0.7 * pUserParams->iqFullScaleVoltage_V / ((pUserParams->iqFullScaleCurrent_A) * USER_VOLTAGE_FILTER_POLE_rps * 65536.0)))
        {
          USER_setErrorCode(pUserParams, USER_ErrorCode_motor_Ls_d_Low);
        }
    }

  if((pUserParams->motor_Ls_d) != 0.0)
    {
      if(((float_t)USER_CTRL_FREQ_Hz >= (128.0 * pUserParams->iqFullScaleVoltage_V / (0.5 * ((pUserParams->motor_Ls_d) + 1e-9) * (pUserParams->iqFullScaleCurrent_A)))))
        {
          USER_setErrorCode(pUserParams, USER_ErrorCode_ctrlFreq_Hz_High);
        }
    }

  if((pUserParams->motor_Ls_q) != 0.0)
    {
      if((pUserParams->motor_Ls_q) > (0.7 * 65536.0 * pUserParams->iqFullScaleVoltage_V / ((pUserParams->iqFullScaleCurrent_A) * USER_VOLTAGE_FILTER_POLE_rps)))
        {
          USER_setErrorCode(pUserParams, USER_ErrorCode_motor_Ls_q_High);
        }

      if((pUserParams->motor_Ls_q) < (0.7 * pUserParams->iqFullScaleVoltage_V / ((pUserParams->iqFullScaleCurrent_A) * USER_VOLTAGE_FILTER_POLE_rps * 65536.0)))
        {
          USER_setErrorCode(pUserParams, USER_ErrorCode_motor_Ls_q_Low);
        }
    }

  if((pUserParams->motor_Ls_q) != 0.0)
    {
      if(((float_t)USER_CTRL_FREQ_Hz >= (128.0 * pUserParams->iqFullScaleVoltage_V / (0.5 * ((pUserParams->motor_Ls_q) + 1e-9) * (pUserParams->iqFullScaleCurrent_A)))))
        {
          USER_setErrorCode(pUserParams, USER_ErrorCode_ctrlFreq_Hz_High);
        }
    }


  if(((pUserParams->iqFullScaleCurrent_A) < (pUserParams->IdRated)) ||
    ((pUserParams->iqFullScaleCurrent_A) < (pUserParams->maxCurrent_resEst)) ||
    ((pUserParams->iqFullScaleCurrent_A) < pUserParams->maxCurrent_indEst) ||
    ((pUserParams->iqFullScaleCurrent_A) < (pUserParams->maxCurrent)))
    {
	  USER_setErrorCode(pUserParams, USER_ErrorCode_iqFullScaleCurrent_A_Low);
    }


  if((pUserParams->maxCurrent_resEst) > (pUserParams->maxCurrent))
    {
      USER_setErrorCode(pUserParams, USER_ErrorCode_maxCurrent_resEst_High);
    }

  if((pUserParams->maxCurrent_resEst) < 0.0)
    {
      USER_setErrorCode(pUserParams, USER_ErrorCode_maxCurrent_resEst_Low);
    }

  if(pUserParams->maxNegativeIdCurrent_a < (-(pUserParams->maxCurrent)))
    {
      USER_setErrorCode(pUserParams, USER_ErrorCode_maxNegativeIdCurrent_a_Low);
    }

  if(((float_t)USER_CTRL_FREQ_Hz < pUserParams->iqFullScaleFreq_Hz) ||
    ((float_t)USER_CTRL_FREQ_Hz < USER_OFFSET_POLE_rps) ||
    ((float_t)USER_CTRL_FREQ_Hz < 250.0) ||
    ((float_t)USER_CTRL_FREQ_Hz <= (2.0 * (pUserParams->iqFullScaleFreq_Hz) * (pUserParams->maxCurrent) / (128.0 * (pUserParams->iqFullScaleCurrent_A)))))
    {
      USER_setErrorCode(pUserParams, USER_ErrorCode_ctrlFreq_Hz_Low);
    }

  if((pUserParams->fluxEstFreq_Hz) > pUserParams->iqFullScaleFreq_Hz)
    {
      USER_setErrorCode(pUserParams, USER_ErrorCode_fluxEstFreq_Hz_High);
    }

  if(((pUserParams->fluxEstFreq_Hz) < 0.0) ||
    ((pUserParams->fluxEstFreq_Hz) < (pUserParams->zeroSpeedLimit * (pUserParams->iqFullScaleFreq_Hz))))
    {
      USER_setErrorCode(pUserParams, USER_ErrorCode_fluxEstFreq_Hz_Low);
    }

  if(((pUserParams->iqFullScaleCurrent_A) <= 0.0) ||
    ((pUserParams->iqFullScaleCurrent_A) <= (0.02 * (pUserParams->maxCurrent) * (pUserParams->iqFullScaleFreq_Hz) / 128.0)) ||
    ((pUserParams->iqFullScaleCurrent_A) <= (2.0 * (pUserParams->maxCurrent) * (pUserParams->iqFullScaleFreq_Hz) * USER_CTRL_PERIOD_sec / 128.0)))
    {
	  USER_setErrorCode(pUserParams, USER_ErrorCode_iqFullScaleCurrent_A_Low);
    }

  if((pUserParams->maxCurrent) > (pUserParams->iqFullScaleCurrent_A))
    {
      USER_setErrorCode(pUserParams, USER_ErrorCode_maxCurrent_High);
    }

  if((pUserParams->maxCurrent) <= 0.0)
    {
      USER_setErrorCode(pUserParams, USER_ErrorCode_maxCurrent_Low);
    }

  if(((float_t)USER_EST_FREQ_Hz < pUserParams->maxCurrent) ||
	((float_t)USER_EST_FREQ_Hz < USER_VOLTAGE_FILTER_POLE_rps) ||
	((float_t)USER_EST_FREQ_Hz < USER_DCBUS_POLE_rps) ||
	((float_t)USER_EST_FREQ_Hz < USER_FLUX_POLE_rps) ||
	((float_t)USER_EST_FREQ_Hz < USER_DIRECTION_POLE_rps) ||
	((float_t)USER_EST_FREQ_Hz < USER_SPEED_POLE_rps) ||
	((float_t)USER_EST_FREQ_Hz < 0.2))
	{
	  USER_setErrorCode(pUserParams, USER_ErrorCode_estFreq_Hz_Low);
	}


  if(USER_MAX_ACCEL_Hzps > ((float_t)USER_TRAJ_FREQ_Hz * (pUserParams->iqFullScaleFreq_Hz)))
	{
	  USER_setErrorCode(pUserParams, USER_ErrorCode_maxAccel_Hzps_High);
	}

  if(USER_MAX_ACCEL_Hzps <= 0.0)
	{
	  USER_setErrorCode(pUserParams, USER_ErrorCode_maxAccel_Hzps_Low);
	}

  if(USER_MAX_ACCEL_EST_Hzps > ((float_t)USER_TRAJ_FREQ_Hz * (pUserParams->iqFullScaleFreq_Hz)))
	{
	  USER_setErrorCode(pUserParams, USER_ErrorCode_maxAccel_est_Hzps_High);
	}

  if((USER_SPEED_POLE_rps > (pUserParams->iqFullScaleFreq_Hz)) ||
	(USER_SPEED_POLE_rps > ((float_t)USER_EST_FREQ_Hz)))
	{
	  USER_setErrorCode(pUserParams, USER_ErrorCode_speedPole_rps_High);
	}

  if(USER_VOLTAGE_FILTER_POLE_Hz < ((pUserParams->iqFullScaleFreq_Hz) / 4.0))
	{
	  USER_setErrorCode(pUserParams, USER_ErrorCode_voltageFilterPole_Hz_Low);
	}

  if(USER_R_OVER_L_EST_FREQ_Hz > (pUserParams->iqFullScaleFreq_Hz))
	{
	  USER_setErrorCode(pUserParams, USER_ErrorCode_RoverL_estFreq_Hz_High);
	}

  if(((float_t)USER_TRAJ_FREQ_Hz < 1.0) ||
	((float_t)USER_TRAJ_FREQ_Hz < USER_MAX_ACCEL_Hzps / pUserParams->iqFullScaleFreq_Hz) ||
	((float_t)USER_TRAJ_FREQ_Hz < USER_MAX_ACCEL_EST_Hzps / pUserParams->iqFullScaleFreq_Hz))
	{
	  USER_setErrorCode(pUserParams, USER_ErrorCode_trajFreq_Hz_Low);
	}

  return;
} // end of check MotorParams Error




void USER_setMotorIDs(USER_Params *pUserParams, const uint_least8_t motor_ID)
{
  pUserParams->motor_ID = motor_ID;
  return;
}


void USER_checkDefErrors(USER_Params *pUserParams)
{
  USER_setErrorCode(pUserParams, USER_ErrorCode_NoError);

  if(USER_NUM_PWM_TICKS_PER_ISR_TICK > 3)
	{
	  USER_setErrorCode(pUserParams, USER_ErrorCode_numPwmTicksPerIsrTick_High);
	}

  if(USER_NUM_PWM_TICKS_PER_ISR_TICK < 1)
	{
	  USER_setErrorCode(pUserParams, USER_ErrorCode_numPwmTicksPerIsrTick_Low);
	}

  if(USER_NUM_ISR_TICKS_PER_CTRL_TICK < 1)
	{
	  USER_setErrorCode(pUserParams, USER_ErrorCode_numIsrTicksPerCtrlTick_Low);
	}

  if(USER_NUM_CTRL_TICKS_PER_CURRENT_TICK < 1)
	{
	  USER_setErrorCode(pUserParams, USER_ErrorCode_numCtrlTicksPerCurrentTick_Low);
	}

  if(USER_NUM_CTRL_TICKS_PER_EST_TICK < 1)
	{
	  USER_setErrorCode(pUserParams, USER_ErrorCode_numCtrlTicksPerEstTick_Low);
	}

  if((USER_NUM_CTRL_TICKS_PER_SPEED_TICK < 1) ||
	(USER_NUM_CTRL_TICKS_PER_SPEED_TICK < USER_NUM_CTRL_TICKS_PER_CURRENT_TICK))
	{
	  USER_setErrorCode(pUserParams, USER_ErrorCode_numCtrlTicksPerSpeedTick_Low);
	}

  if(USER_NUM_CTRL_TICKS_PER_TRAJ_TICK < 1)
	{
	  USER_setErrorCode(pUserParams, USER_ErrorCode_numCtrlTicksPerTrajTick_Low);
	}

  if(USER_NUM_CURRENT_SENSORS > 3)
	{
	  USER_setErrorCode(pUserParams, USER_ErrorCode_numCurrentSensors_High);
	}

  if(USER_NUM_CURRENT_SENSORS < 2)
	{
	  USER_setErrorCode(pUserParams, USER_ErrorCode_numCurrentSensors_Low);
	}

  if(USER_NUM_VOLTAGE_SENSORS > 3)
	{
	  USER_setErrorCode(pUserParams, USER_ErrorCode_numVoltageSensors_High);
	}

  if(USER_NUM_VOLTAGE_SENSORS < 3)
	{
	  USER_setErrorCode(pUserParams, USER_ErrorCode_numVoltageSensors_Low);
	}

  if(USER_OFFSET_POLE_rps > ((float_t)USER_CTRL_FREQ_Hz))
	{
	  USER_setErrorCode(pUserParams, USER_ErrorCode_offsetPole_rps_High);
	}

  if(USER_OFFSET_POLE_rps <= 0.0)
	{
	  USER_setErrorCode(pUserParams, USER_ErrorCode_offsetPole_rps_Low);
	}

  if(USER_FLUX_POLE_rps > ((float_t)USER_EST_FREQ_Hz))
	{
	  USER_setErrorCode(pUserParams, USER_ErrorCode_fluxPole_rps_High);
	}

  if(USER_FLUX_POLE_rps <= 0.0)
	{
	  USER_setErrorCode(pUserParams, USER_ErrorCode_fluxPole_rps_Low);
	}

  if(USER_MAX_ACCEL_EST_Hzps <= 0.0)
	{
	  USER_setErrorCode(pUserParams, USER_ErrorCode_maxAccel_est_Hzps_Low);
	}

  if(USER_DIRECTION_POLE_rps > ((float_t)USER_EST_FREQ_Hz))
	{
	  USER_setErrorCode(pUserParams, USER_ErrorCode_directionPole_rps_High);
	}

  if(USER_DIRECTION_POLE_rps <= 0.0)
	{
	  USER_setErrorCode(pUserParams, USER_ErrorCode_directionPole_rps_Low);
	}


  if(USER_SPEED_POLE_rps <= 0.0)
	{
	  USER_setErrorCode(pUserParams, USER_ErrorCode_speedPole_rps_Low);
	}

  if(USER_DCBUS_POLE_rps > ((float_t)USER_EST_FREQ_Hz))
	{
	  USER_setErrorCode(pUserParams, USER_ErrorCode_dcBusPole_rps_High);
	}

  if(USER_DCBUS_POLE_rps <= 0.0)
	{
	  USER_setErrorCode(pUserParams, USER_ErrorCode_dcBusPole_rps_Low);
	}

  if(USER_FLUX_FRACTION > 1.2)
	{
	  USER_setErrorCode(pUserParams, USER_ErrorCode_fluxFraction_High);
	}

  if(USER_FLUX_FRACTION < 0.05)
	{
	  USER_setErrorCode(pUserParams, USER_ErrorCode_fluxFraction_Low);
	}

  if(USER_POWERWARP_GAIN > 2.0)
	{
	  USER_setErrorCode(pUserParams, USER_ErrorCode_powerWarpGain_High);
	}

  if(USER_POWERWARP_GAIN < 1.0)
	{
	  USER_setErrorCode(pUserParams, USER_ErrorCode_powerWarpGain_Low);
	}

  if(USER_SYSTEM_FREQ_MHz > 90.0)
	{
	  USER_setErrorCode(pUserParams, USER_ErrorCode_systemFreq_MHz_High);
	}

  if(USER_SYSTEM_FREQ_MHz <= 0.0)
	{
	  USER_setErrorCode(pUserParams, USER_ErrorCode_systemFreq_MHz_Low);
	}

  if(USER_PWM_FREQ_kHz > (1000.0 * USER_SYSTEM_FREQ_MHz / 100.0))
	{
	  USER_setErrorCode(pUserParams, USER_ErrorCode_pwmFreq_kHz_High);
	}

  if(USER_PWM_FREQ_kHz < (1000.0 * USER_SYSTEM_FREQ_MHz / 65536.0))
	{
	  USER_setErrorCode(pUserParams, USER_ErrorCode_pwmFreq_kHz_Low);
	}

  if(USER_VOLTAGE_FILTER_POLE_Hz > ((float_t)USER_EST_FREQ_Hz / MATH_PI))
	{
	  USER_setErrorCode(pUserParams, USER_ErrorCode_voltageFilterPole_Hz_High);
	}

  if(USER_MAX_VS_MAG_PU > (4.0 / 3.0))
	{
	  USER_setErrorCode(pUserParams, USER_ErrorCode_maxVsMag_pu_High);
	}

  if(USER_MAX_VS_MAG_PU <= 0.0)
	{
	  USER_setErrorCode(pUserParams, USER_ErrorCode_maxVsMag_pu_Low);
	}

  if(USER_EST_KAPPAQ > 1.5)
	{
	  USER_setErrorCode(pUserParams, USER_ErrorCode_estKappa_High);
	}

  if(USER_EST_KAPPAQ < 1.5)
	{
	  USER_setErrorCode(pUserParams, USER_ErrorCode_estKappa_Low);
	}

} // end of USER_checkDefErrors() function


USER_ErrorCode_e USER_getErrorCode(USER_Params *pUserParams)
{
  return(pUserParams->errorCode);
} // end of USER_getErrorCode() function


void USER_setErrorCode(USER_Params *pUserParams,const USER_ErrorCode_e errorCode)
{
  pUserParams->errorCode = errorCode;

  return;
} // end of USER_setErrorCode() function


// end of file

