/*************************************************************************
	> File Name: process_ctrl.h
	> Author: 
	> Mail: 
	> Created Time: Sat 08 Jul 2017 09:36:34 AM CST
 ************************************************************************/

#ifndef _PROCESS_CTRL_H
#define _PROCESS_CTRL_H


#include "sw/drivers/drvic/pca9555.h"
#include "sw/modules/flyingStart/src/32b/flyingStart.h"

#include "sw/drivers/drvic/fsm.h"

#ifdef QEP
#include "sw/modules/ctrl/src/32b/ctrl.h"
#include "sw/modules/enc/src/32b/enc.h"
#include "sw/modules/slip/src/32b/slip.h"

#include "sw/drivers/drvic/spintac_position.h"

//#include "sw/modules/spintac/src/32b/spintac_pos_conv.h"
//#include "sw/modules/spintac/src/32b/spintac_pos_ctl.h"
//#include "sw/modules/spintac/src/32b/spintac_pos_move.h"
//#include "sw/modules/spintac/src/32b/spintac_pos_plan.h"

#else
#include "sw/modules/ctrl/src/32b/ctrl.h"
#endif

#include "hal.h"
#include "user.h"
#include "sw/drivers/drvic/motor.h"
#include "sw/drivers/drvic/modbus/mb.h"


#ifdef __cplusplus
extern "C" { 
#endif

//! \brief Defines the speed acceleration scale factor.
//!
//#define MAX_ACCEL_KRPMPS_SF  _IQ((pUserParams->motor_numPolePairs)*1000.0/USER_TRAJ_FREQ_Hz/USER_IQ_FULL_SCALE_FREQ_Hz/60.0)
//! \brief Defines the number of main iterations before global variables are updated
//!
//#define NUM_MAIN_TICKS_FOR_GLOBAL_VARIABLE_UPDATE  1
typedef enum {
	First_Quadrant = 0,
	Second_Quadrant,
	Third_Quadrant,
	Fourth_Quadrant

} Quadrant_e;



typedef struct _PROCTRL_Obj_
{
  HAL_Handle          halHandle;
  CTRL_Handle         ctrlHandle;
  pUSER_Params        pUserParams;

  // define Flying Start (FS) variables
  FS_Obj              fs;
  FS_Handle           fsHandle;

  MB_Obj              My_ModBus;
  MB_Handle           modbusHandle;

  MOTOR_Obj           MotorVars;
  MOTOR_Handle        motorHandle;

  FSM_Obj             MyFSM;
  FSM_Handle          fsmHandle;

  HAL_AdcData_t       AdcData;
  HAL_PwmData_t       PwmData;


#ifdef USE_SpinTAC
  ST_Obj              st_obj;
  ST_Handle           stHandle;

  ENC_Handle          encHandle;
  ENC_Obj             enc;

  SLIP_Handle         slipHandle;
  SLIP_Obj            slip;
#endif

  //bool                Ext_Int_Flag;
  uint16_t            IsrRunCnt;
 // bool                global_update_flag;


  _iq                 Flux_pu_to_Wb_sf;
  _iq                 Flux_pu_to_VpHz_sf;
  _iq                 Torque_Ls_Id_Iq_pu_to_Nm_sf;
  _iq                 Torque_Flux_Iq_pu_to_Nm_sf;

} PROCTRL_Obj;

typedef struct _PROCTRL_Obj_ *PROCTRL_Handle;





PROCTRL_Handle PROCTRL_init(void *pMemory,const size_t numBytes);

void PROCTRL_setHalHandle(PROCTRL_Handle handle, HAL_Handle hal_handle);
void PROCTRL_setCtrlHandle(PROCTRL_Handle handle, CTRL_Handle ctrlHandle);
void PROCTRL_setUserParams(PROCTRL_Handle handle, pUSER_Params pUserParams);
void PROCTRL_setMotorHandle(PROCTRL_Handle handle, MOTOR_Handle motorHandle);

void PROCTRL_setupFlyingStart(PROCTRL_Handle handle);
void PROCTRL_setupSpinTAC(PROCTRL_Handle handle);
void PROCTRL_setupModbus(PROCTRL_Handle handle);
void PROCTRL_setupMotors(PROCTRL_Handle handle);
void PROCTRL_setupFSM(PROCTRL_Handle handle);

void PROCTRL_getSensorData(PROCTRL_Handle handle, const HAL_AdcData_t *pAdcData);

//=========================================================================//
void motor_RunCtrl(PROCTRL_Handle handle);
void motor_StopCtrl(CTRL_Handle handle);

//! \brief     Recalculate Kp and Ki gains to fix the R/L limitation of 2000.0 and Kp limitation of 0.11
//!
void recalcKpKi(CTRL_Handle handle, USER_Params *pUserParams);
//! \brief     Set electrical frequency limit to zero while identifying an induction motor
//!
void setFeLimitZero(CTRL_Handle handle, USER_Params *pUserParams);
//! \brief     Calculates Dir_qFmt for ACIM
//!
void acim_Dir_qFmtCalc(CTRL_Handle handle);

void runRsOnLine(PROCTRL_Handle handle,  USER_Params *pUserParams);

void PROCTRL_updateKpKiGains(PROCTRL_Handle handle);

void PROCTRL_CheckMotorError(PROCTRL_Handle handle);
void PROCTRL_CheckRelayOnFlag(PROCTRL_Handle handle);
void PROCTRL_CheckEmgStop(PROCTRL_Handle handle);
void PROCTRL_chkError(PROCTRL_Handle handle, USER_Params *pUserParams);
void PROCTRL_chkMotorIdentified(PROCTRL_Handle handle, USER_Params *pUserParams);


void PROCTRL_UpdateMotorSpeed(PROCTRL_Handle handle);
void PROCTRL_UpdateMotorTorque(PROCTRL_Handle handle);
void PROCTRL_UpdateMotorVar(PROCTRL_Handle handle);
void PROCTRL_Update_Est_State(PROCTRL_Handle handle);
void PROCTRL_UpdateCurrentAmpVar(PROCTRL_Handle handle);
void PROCTRL_UpdateVoltageVar(PROCTRL_Handle handle);
void PROCTRL_UpdateIqRef(PROCTRL_Handle handle);

void PROCTRL_getBoardBias(PROCTRL_Handle handle);
void PROCTRL_setBoardBias(PROCTRL_Handle handle, const float *Offset);

void PROCTRL_getScaleActors(PROCTRL_Handle handle, USER_Params *pUserParams);

void PROCTRL_setDcBrakeEnable(PROCTRL_Handle handle);
void PROCTRL_setDcBrakeCurrent(PROCTRL_Handle handle);

void PROCTRL_getDCbusVoltage(PROCTRL_Handle handle, HAL_AdcData_t *adcData);
void PROCTRL_getChipTemperture(PROCTRL_Handle handle, HAL_AdcData_t *adcData);

void PROCTRL_MainLoop(PROCTRL_Handle handle, USER_Params *pUserParams);
//==============================================================================//
#ifdef USE_SpinTAC
//! \brief      Setups SpinTAC Positon Plan
extern void ST_setupPosPlan(ST_Handle);

//! \brief      Runs SpinTAC Positon Convert
extern void ST_runPosConv(PROCTRL_Handle handle);

//! \brief      Runs SpinTAC Positon Control
extern void ST_runPosCtl(ST_Handle, CTRL_Handle);

//! \brief      Runs SpinTAC Positon Move
extern void ST_runPosMove(PROCTRL_Handle handle);

//! \brief      Runs SpinTAC Positon Plan
extern void ST_runPosPlan(PROCTRL_Handle handle);

void PROCTRL_UpdateSpinTAC(PROCTRL_Handle handle);

void Find_ZeroPoint(PROCTRL_Handle handle);

#endif





inline void PROCTRL_clrOverCurrent(PROCTRL_Handle handle)
{
  PROCTRL_Obj *obj = (PROCTRL_Obj *)handle;

  FSM_clrOverCurrentReg(obj->fsmHandle);

  return;
}

inline void PROCTRL_ShutDown(PROCTRL_Handle handle)
{
  PROCTRL_Obj *obj = (PROCTRL_Obj *)handle;

  FSM_ShutDowm(obj->fsmHandle);

  return;
}


inline void PROCTRL_RunInISR(PROCTRL_Handle handle)
{
  PROCTRL_Obj *obj = (PROCTRL_Obj *)handle;


  // toggle status LED (100Hz @  ISR 10kHz)
  if(++(obj->IsrRunCnt) >= 100)
  {
    static uint16_t MeasCnt = 0;

    obj->IsrRunCnt = 0;

	if(FSM_RunTimeState(obj->fsmHandle) == true)
	{
	  FSM_RunTimeCnt(obj->fsmHandle);
	}




	if(++MeasCnt >= 10 )
	{
	 MeasCnt = 0;

	PROCTRL_getChipTemperture(handle, &(obj->AdcData));
	PROCTRL_getDCbusVoltage(handle, &(obj->AdcData));
	}

  }

  PROCTRL_getSensorData(handle, &(obj->AdcData));

  return;
}



//! \brief      Recalculates Inductances with the correct Q Format
//! \param[in]  handle       The controller (CTRL) handle
extern void USER_softwareUpdate1p6(CTRL_Handle handle, USER_Params *pUserParams);


//! \brief      Updates Id and Iq PI gains
//! \param[in]  handle       The controller (CTRL) handle
extern void USER_calcPIgains(CTRL_Handle handle, USER_Params *pUserParams);


//! \brief      Computes the scale factor needed to convert from torque created by Ld, Lq, Id and Iq, from per unit to Nm
//! \return     The scale factor to convert torque from (Ld - Lq) * Id * Iq from per unit to Nm, in IQ24 format
extern _iq USER_computeTorque_Ls_Id_Iq_pu_to_Nm_sf(USER_Params *pUserParams);


//! \brief      Computes the scale factor needed to convert from torque created by flux and Iq, from per unit to Nm
//! \return     The scale factor to convert torque from Flux * Iq from per unit to Nm, in IQ24 format
extern _iq USER_computeTorque_Flux_Iq_pu_to_Nm_sf(USER_Params *pUserParams);


//! \brief      Computes the scale factor needed to convert from per unit to Wb
//! \return     The scale factor to convert from flux per unit to flux in Wb, in IQ24 format
extern _iq USER_computeFlux_pu_to_Wb_sf(USER_Params *pUserParams);


//! \brief      Computes the scale factor needed to convert from per unit to V/Hz
//! \return     The scale factor to convert from flux per unit to flux in V/Hz, in IQ24 format
extern _iq USER_computeFlux_pu_to_VpHz_sf(USER_Params *pUserParams);


//! \brief      Computes Flux in Wb or V/Hz depending on the scale factor sent as parameter
//! \param[in]  handle       The controller (CTRL) handle
//! \param[in]  sf           The scale factor to convert flux from per unit to Wb or V/Hz
//! \return     The flux in Wb or V/Hz depending on the scale factor sent as parameter, in IQ24 format
extern _iq USER_computeFlux(CTRL_Handle handle, const _iq sf);

//! \brief      Computes Torque in Nm
//! \param[in]  handle          The controller (CTRL) handle
//! \param[in]  torque_Flux_sf  The scale factor to convert torque from (Ld - Lq) * Id * Iq from per unit to Nm
//! \param[in]  torque_Ls_sf    The scale factor to convert torque from Flux * Iq from per unit to Nm
//! \return     The torque in Nm, in IQ24 format
extern _iq USER_computeTorque_Nm(CTRL_Handle handle, const _iq torque_Flux_sf, const _iq torque_Ls_sf);


//! \brief      Computes Torque in lbin
//! \param[in]  handle          The controller (CTRL) handle
//! \param[in]  torque_Flux_sf  The scale factor to convert torque from (Ld - Lq) * Id * Iq from per unit to lbin
//! \param[in]  torque_Ls_sf    The scale factor to convert torque from Flux * Iq from per unit to lbin
//! \return     The torque in lbin, in IQ24 format
extern _iq USER_computeTorque_lbin(CTRL_Handle handle, const _iq torque_Flux_sf, const _iq torque_Ls_sf);


#ifdef __cplusplus 
}
#endif


#endif
