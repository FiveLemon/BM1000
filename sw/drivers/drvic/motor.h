
#ifndef _MOTOR_H
#define _MOTOR_H


// **************************************************************************
// the includes

#include "sw/modules/ctrl/src/32b/ctrl.h"
// drivers
#ifdef QEP
//#include "sw/modules/ctrl/src/32b/ctrlQEP.h"
#include "sw/drivers/drvic/spintac_position.h"
#endif

#include "hal.h"
#include "user.h"



#ifdef __cplusplus
extern "C" {
#endif



// **************************************************************************
// the typedefs

typedef enum
{
	MOTOR_Flag_enableSys               = (1<<0),
	MOTOR_Flag_Run_Identify            = (1<<1),
	MOTOR_Flag_MotorIdentified         = (1<<2),
	MOTOR_Flag_enableForceAngle        = (1<<3),
	MOTOR_Flag_ZeroPiont_Identify      = (1<<4),
	MOTOR_Flag_enableRsRecalc          = (1<<5),
	MOTOR_Flag_enableUserParams        = (1<<6),
	MOTOR_Flag_enableOffsetcalc        = (1<<7),
	MOTOR_Flag_enablePowerWarp         = (1<<8),
	MOTOR_Flag_enableSpeedCtrl         = (1<<9),
	MOTOR_Flag_enableRun               = (1<<10),
	MOTOR_Flag_RunState                = (1<<11),
	MOTOR_Flag_enableFlyingStart       = (1<<12),
	MOTOR_FlagNumber                   = 13
} MOTOR_MotorFlag_e;


typedef struct _MOTOR_Obj_
{

  bool Flag_enableSys;
  bool Flag_Run_Identify;
  bool Flag_MotorIdentified;
  bool Flag_enableForceAngle;
  bool Flag_ZeroPiont_Identify;
  bool Flag_enableRsRecalc;
  bool Flag_enableUserParams;
  bool Flag_enableOffsetcalc;
  bool Flag_enablePowerWarp;
  bool Flag_enableSpeedCtrl;
  bool Flag_enableRun;
  bool Flag_RunState;
  bool Flag_enableFlyingStart;
  bool Flag_ContactSensor;
  bool RunPositionProfile;
  bool getSensor;
  bool Flag_UseSpinTAC;
  bool Flag_MotorParamsEst;

  CTRL_State_e CtrlState;
  EST_State_e EstState;

  USER_ErrorCode_e UserErrorCode;

  CTRL_Version CtrlVersion;


  _iq SpeedRef_krpm;

  _iq      MaxAccel_krpmps;
  _iq      MaxDecel_krpmps;
  _iq20    MaxJrk_krpmps2;

  _iq      MaxCurrentRatio_pu;

  _iq      Speed_krpm;
  _iq      Flux_Wb;
  _iq      Torque_Nm;


  float_t Rr_Ohm;
  float_t Rs_Ohm;
  float_t Lsd_H;
  float_t Lsq_H;
  float_t MaxCurr_A;
  float_t MagnCurr_A;

  float_t Flux_VpHz;
  float_t RsOnLine_Ohm;

  _iq     OverModulation;
  _iq     RsOnLineCurrent_A;
  _iq     Speed_Krpm_per_pu;


  _iq     Kp_Idq;
  _iq     Ki_Idq;
  _iq     Kp_spd;
  _iq     Ki_spd;


  _iq     Vd;
  _iq     Vq;
  _iq     Vs;
  _iq     Id_A;
  _iq     Iq_A;
  _iq     Is_A;

  _iq IdRef_A;
  _iq IqRef_A;
  _iq Ibrake_Ratio;


  MATH_vec3 I_bias;
  MATH_vec3 V_bias;


  _iq       Sensor0_Value;
  _iq       Sensor1_Value;
  uint16_t  SwitchSensor;

  _iq       ZeroPoint_Value;

  _iq20     ChipTemp;
  _iq       VdcBus_kV;
  uint16_t  MotorID;


#ifdef USE_SpinTAC
  ST_Vars_t SpinTAC;

  int32_t  PosStepInt_MRev;
  _iq      PosStepFrac_MRev;
  _iq      PositionError_MRev;

  _iq      MaxVel_krpm;

  _iq      ZeroPoint_position;
  int32_t  ZeroPoint_rollover;

#endif


} MOTOR_Obj;

typedef struct _MOTOR_Obj_ *MOTOR_Handle;

//! \brief Enumeration for the R/W modes
//!

MOTOR_Handle Motor_init(void *pMemory, const size_t numBytes);

void MOTOR_CtrlVersion_Init(MOTOR_Handle handle);
void MOTOR_MotorVars_Init(MOTOR_Handle handle);
uint16_t MOTOR_getMotorFlag(MOTOR_Handle handle);
void MOTOR_setMotorFlag(MOTOR_Handle handle, const uint16_t MotorFlag);

void MOTOR_getMaxCurrent(MOTOR_Handle handle, USER_Params *pUserParams);
void MOTOR_SpinTAC_Vars_Init(MOTOR_Handle handle);
//====================================================================
inline void MOTOR_setMotorErrorCode(MOTOR_Handle handle, USER_ErrorCode_e errorCode)
{
	MOTOR_Obj *obj = (MOTOR_Obj *)handle;

  obj->UserErrorCode = errorCode;

  return;

}

inline USER_ErrorCode_e MOTOR_getMotorErrorCode(MOTOR_Handle handle)
{
	MOTOR_Obj *obj = (MOTOR_Obj *)handle;

  return (obj->UserErrorCode);

}

inline void MOTOR_setCtrlVersion(MOTOR_Handle handle, CTRL_Version *version)
{
  MOTOR_Obj *obj = (MOTOR_Obj *)handle;

  obj->CtrlVersion = *version;

  return;
}

inline void MOTOR_setMotorOverModulation(MOTOR_Handle handle, const _iq Modultion)
{
  MOTOR_Obj *obj = (MOTOR_Obj *)handle;

  obj->OverModulation = Modultion;

  return;
}

inline void MOTOR_setFalg_SpeedCtrl(MOTOR_Handle handle, const bool state)
{
  MOTOR_Obj *obj = (MOTOR_Obj *)handle;

  obj->Flag_enableSpeedCtrl = state;

  return;
}

inline void MOTOR_setMaxAccel_krpmps(MOTOR_Handle handle, const _iq MaxAccel_krpmps)
{
  MOTOR_Obj *obj = (MOTOR_Obj *)handle;

  obj->MaxAccel_krpmps = MaxAccel_krpmps;
  return;
}

inline void MOTOR_setFlag_PowerWarp(MOTOR_Handle handle, const bool state)
{
  MOTOR_Obj *obj = (MOTOR_Obj *)handle;

  obj->Flag_enablePowerWarp = state;
  return;
}

inline float MOTOR_getMotorRr_Ohm(MOTOR_Handle handle)
{
  MOTOR_Obj *obj = (MOTOR_Obj *)handle;

  return (obj->Rr_Ohm);
}

inline float MOTOR_getMotorRs_Ohm(MOTOR_Handle handle)
{
  MOTOR_Obj *obj = (MOTOR_Obj *)handle;

  return (obj->Rs_Ohm);
}

inline float MOTOR_getMotorLsd_H(MOTOR_Handle handle)
{
  MOTOR_Obj *obj = (MOTOR_Obj *)handle;

  return (obj->Lsd_H);
}

inline float MOTOR_getMotorLsq_H(MOTOR_Handle handle)
{
  MOTOR_Obj *obj = (MOTOR_Obj *)handle;

  return (obj->Lsq_H);
}

inline void MOTOR_setMOTOR_getMaxCurr_A(MOTOR_Handle handle, const float Crrent_A)
{
  MOTOR_Obj *obj = (MOTOR_Obj *)handle;

  obj->MaxCurr_A = Crrent_A;

  return;
}

inline float MOTOR_getMotorMaxCurr_A(MOTOR_Handle handle)
{
  MOTOR_Obj *obj = (MOTOR_Obj *)handle;

  return (obj->MaxCurr_A);
}

inline float MOTOR_getMotorMagnCurr_A(MOTOR_Handle handle)
{
  MOTOR_Obj *obj = (MOTOR_Obj *)handle;

  return (obj->MagnCurr_A);
}

//
inline _iq MOTOR_getMaxCurrentRatio(MOTOR_Handle handle)
{
  MOTOR_Obj *obj = (MOTOR_Obj *)handle;

  return(obj->MaxCurrentRatio_pu);

} // end of MOTOR_getMaxCurrentRatio() function

inline _iq MOTOR_getDcBus_Voltage(MOTOR_Handle handle)
{
  MOTOR_Obj *obj = (MOTOR_Obj *)handle;

  return(obj->VdcBus_kV);
}

inline _iq MOTOR_getMotorTorque_Nm(MOTOR_Handle handle)
{
  MOTOR_Obj *obj = (MOTOR_Obj *)handle;

  return (obj->Torque_Nm);
}

inline _iq MOTOR_getAnalogSensor1(MOTOR_Handle handle)
{
  MOTOR_Obj *obj = (MOTOR_Obj *)handle;

  return (obj->Sensor0_Value);

}

inline _iq MOTOR_getAnalogSensor2(MOTOR_Handle handle)
{
  MOTOR_Obj *obj = (MOTOR_Obj *)handle;

  return (obj->Sensor1_Value);
}

inline _iq20 MOTOR_getChipTemp(MOTOR_Handle handle)
{
  MOTOR_Obj *obj = (MOTOR_Obj *)handle;

  return (obj->ChipTemp);
}

inline _iq MOTOR_getSpeed_Kp(MOTOR_Handle handle)
{
  MOTOR_Obj *obj = (MOTOR_Obj *)handle;

  return (obj->Kp_spd);
}

inline _iq MOTOR_getSpeed_Ki(MOTOR_Handle handle)
{
  MOTOR_Obj *obj = (MOTOR_Obj *)handle;

  return (obj->Ki_spd);
}

inline _iq MOTOR_getCurrent_Kp(MOTOR_Handle handle)
{
  MOTOR_Obj *obj = (MOTOR_Obj *)handle;

  return (obj->Kp_Idq);
}

inline _iq MOTOR_getCurrent_Ki(MOTOR_Handle handle)
{
  MOTOR_Obj *obj = (MOTOR_Obj *)handle;

  return (obj->Ki_Idq);
}

inline void MOTOR_setIqRef(MOTOR_Handle handle, const _iq IqRef_A)
{
  MOTOR_Obj *obj = (MOTOR_Obj *)handle;

  obj->IqRef_A = IqRef_A;

  return;
}

inline void MOTOR_setMotorID(MOTOR_Handle handle, const uint16_t Motor_ID)
{
  MOTOR_Obj *obj = (MOTOR_Obj *)handle;

  obj->MotorID = Motor_ID;

  return;
}

inline uint16_t MOTOR_getMotorID(MOTOR_Handle handle)
{
  MOTOR_Obj *obj = (MOTOR_Obj *)handle;

  return (obj->MotorID);
}

#ifdef USE_SpinTAC

inline _iq20 MOTOR_getCtlBw_radps(MOTOR_Handle handle)
{
  MOTOR_Obj *obj = (MOTOR_Obj *)handle;

  return (obj->SpinTAC.PosCtlBw_radps);
}

inline void MOTOR_setCtlBw_radps(MOTOR_Handle handle, const _iq20 CtlBw_radps)
{
  MOTOR_Obj *obj = (MOTOR_Obj *)handle;

  obj->SpinTAC.PosCtlBw_radps = CtlBw_radps;

  return;
}

#endif

//==============================================================

inline void MOTOR_setSysEnable(MOTOR_Handle handle)
{
  MOTOR_Obj *obj = (MOTOR_Obj *)handle;

  obj->Flag_enableSys = true;

  return;
}

inline void MOTOR_clrSysEnable(MOTOR_Handle handle)
{
  MOTOR_Obj *obj = (MOTOR_Obj *)handle;

  obj->Flag_enableSys = false;

  return;
}

inline void MOTOR_setRunIdentify(MOTOR_Handle handle)
{
  MOTOR_Obj *obj = (MOTOR_Obj *)handle;

  obj->Flag_Run_Identify = true;

  return;
}

inline void MOTOR_clrRunIdentify(MOTOR_Handle handle)
{
  MOTOR_Obj *obj = (MOTOR_Obj *)handle;

  obj->Flag_Run_Identify = false;

  return;
}


inline void MOTOR_enablePowerWarp(MOTOR_Handle handle)
{
  MOTOR_Obj *obj = (MOTOR_Obj *)handle;

  obj->Flag_enablePowerWarp = true;

  return;
}


inline void MOTOR_disablePowerWarp(MOTOR_Handle handle)
{
  MOTOR_Obj *obj = (MOTOR_Obj *)handle;

  obj->Flag_enablePowerWarp = false;

  return;
}


inline void MOTOR_setFalg_FlyingStart(MOTOR_Handle handle)
{
  MOTOR_Obj *obj = (MOTOR_Obj *)handle;

  obj->Flag_enableFlyingStart = true;

  return;
}

inline void MOTOR_clrFalg_FlyingStart(MOTOR_Handle handle)
{
  MOTOR_Obj *obj = (MOTOR_Obj *)handle;

  obj->Flag_enableFlyingStart = false;

  return;
}

inline void MOTOR_enableFlag_UserParams(MOTOR_Handle handle)
{
  MOTOR_Obj *obj = (MOTOR_Obj *)handle;

  obj->Flag_enableUserParams = true;

  return;
}

inline void MOTOR_disableFlag_UserParams(MOTOR_Handle handle)
{
  MOTOR_Obj *obj = (MOTOR_Obj *)handle;

  obj->Flag_enableUserParams = false;

  return;
}


inline void MOTOR_setFlag_MotorParamsEst(MOTOR_Handle handle)
{
  MOTOR_Obj *obj = (MOTOR_Obj *)handle;

  obj->Flag_MotorParamsEst  = true;

  return;
}

inline void MOTOR_clrFlag_MotorParamsEst(MOTOR_Handle handle)
{
  MOTOR_Obj *obj = (MOTOR_Obj *)handle;

  obj->Flag_MotorParamsEst  = false;

  return;
}


inline void MOTOR_setForceAngle(MOTOR_Handle handle, const bool state)
{
	MOTOR_Obj *obj = (MOTOR_Obj *)handle;

  obj->Flag_enableForceAngle = state;

  return;
}

inline bool MOTOR_getForceAngle(MOTOR_Handle handle)
{
	MOTOR_Obj *obj = (MOTOR_Obj *)handle;

  return(obj->Flag_enableForceAngle);
}

inline bool MOTOR_getSysEnable(MOTOR_Handle handle)
{
	MOTOR_Obj *obj = (MOTOR_Obj *)handle;

  return (obj->Flag_enableSys);
}

inline void MOTOR_setMotorRefSpeed(MOTOR_Handle handle, const _iq SpeedRef_krpm)
{
   MOTOR_Obj *obj = (MOTOR_Obj *)handle;

   obj->SpeedRef_krpm = SpeedRef_krpm;

   return;
}

inline void MOTOR_setMotorRunFlag(MOTOR_Handle handle, const bool State)
{
  MOTOR_Obj *obj = (MOTOR_Obj *)handle;

  obj->Flag_enableRun  = State;
  return;
}

inline bool MOTOR_getMotorRunFlag(MOTOR_Handle handle)
{
  MOTOR_Obj *obj = (MOTOR_Obj *)handle;

 return (obj->Flag_enableRun);

}

inline bool MOTOR_getMotorRunState(MOTOR_Handle handle)
{
  MOTOR_Obj *obj = (MOTOR_Obj *)handle;

 return (obj->Flag_RunState);

}

inline bool MOTOR_getFlag_MotorParamsEst(MOTOR_Handle handle)
{
  MOTOR_Obj *obj = (MOTOR_Obj *)handle;

  return (obj->Flag_MotorParamsEst);
}

inline void MOTOR_setMotorMaxAccel(MOTOR_Handle handle, const _iq MaxAccel_krpmps)
{
  MOTOR_Obj *obj = (MOTOR_Obj *)handle;

  obj->MaxAccel_krpmps = MaxAccel_krpmps;

  return;
}

inline void MOTOR_setMotorMaxDecel(MOTOR_Handle handle, const _iq MaxDecel_krpmps)
{
  MOTOR_Obj *obj = (MOTOR_Obj *)handle;

  obj->MaxDecel_krpmps = MaxDecel_krpmps;

  return;
}

inline void MOTOR_setMotorMaxJrk(MOTOR_Handle handle, const _iq20 MaxJrk_krpmps2)
{
  MOTOR_Obj *obj = (MOTOR_Obj *)handle;

  obj->MaxJrk_krpmps2 = MaxJrk_krpmps2;

  return;
}


inline void MOTOR_setMotorSpd_Kp(MOTOR_Handle handle, _iq Kp_spd)
{
  MOTOR_Obj *obj = (MOTOR_Obj *)handle;

  obj->Kp_spd = Kp_spd;

  return;
}

inline void MOTOR_setMotorSpd_Ki(MOTOR_Handle handle, _iq Ki_spd)
{
  MOTOR_Obj *obj = (MOTOR_Obj *)handle;

  obj->Ki_spd = Ki_spd;

  return;
}

inline void MOTOR_setCurrent_Kp(MOTOR_Handle handle, _iq Kp_Idq)
{
  MOTOR_Obj *obj = (MOTOR_Obj *)handle;

  obj->Kp_Idq = Kp_Idq;

  return;
}

inline void MOTOR_setCurrent_Ki(MOTOR_Handle handle, _iq Ki_Idq)
{
  MOTOR_Obj *obj = (MOTOR_Obj *)handle;

  obj->Ki_Idq = Ki_Idq;

  return;
}


inline _iq MOTOR_getMotorSpeed(MOTOR_Handle handle)
{
  MOTOR_Obj *obj = (MOTOR_Obj *)handle;

  return (obj->Speed_krpm);

}


inline _iq MOTOR_getMotorRefSpeed(MOTOR_Handle handle)
{
  MOTOR_Obj *obj = (MOTOR_Obj *)handle;

  return (obj->SpeedRef_krpm);

}

inline _iq MOTOR_getMotorMaxAccel(MOTOR_Handle handle)
{
  MOTOR_Obj *obj = (MOTOR_Obj *)handle;

  return (obj->MaxAccel_krpmps);
}

inline _iq MOTOR_getMotorMaxDecel(MOTOR_Handle handle)
{
  MOTOR_Obj *obj = (MOTOR_Obj *)handle;

  return (obj->MaxDecel_krpmps);
}

inline _iq20 MOTOR_getMotorMaxJrk(MOTOR_Handle handle)
{
  MOTOR_Obj *obj = (MOTOR_Obj *)handle;

  return (obj->MaxJrk_krpmps2);
}

inline void MOTOR_setIbrake_Ratio(MOTOR_Handle handle, const _iq Ratio)
{
  MOTOR_Obj *obj = (MOTOR_Obj *)handle;

  obj->Ibrake_Ratio = _IQsat(Ratio, _IQ(1.5), _IQ(-1.5));

  return;
}

inline _iq MOTOR_getIbrake_Ratio(MOTOR_Handle handle)
{
  MOTOR_Obj *obj = (MOTOR_Obj *)handle;

  return (obj->Ibrake_Ratio);
}


inline void MOTOR_setMaxCurrentRatio(MOTOR_Handle handle, const _iq MaxCurrentRatio)
{
  MOTOR_Obj *obj = (MOTOR_Obj *)handle;
  //_iq MaxRatio;

  obj->MaxCurrentRatio_pu = _IQsat(MaxCurrentRatio, _IQ(3.5), _IQ(0.0));

  return;
} // end of MOTOR_setMaxCurrentRatio() function

inline CTRL_State_e MOTOR_getCtrlState(MOTOR_Handle handle)
{
  MOTOR_Obj *obj = (MOTOR_Obj *)handle;

  return (obj->CtrlState);
}

inline EST_State_e MOTOR_getEstState(MOTOR_Handle handle)
{
  MOTOR_Obj *obj = (MOTOR_Obj *)handle;

  return (obj->EstState);
}

inline uint16_t MOTOR_getCtrlVer_TargetProc(MOTOR_Handle handle)
{
  MOTOR_Obj *obj = (MOTOR_Obj *)handle;

  return (uint16_t)(obj->CtrlVersion.targetProc);
}

inline uint16_t MOTOR_getCtrlVer_major(MOTOR_Handle handle)
{
  MOTOR_Obj *obj = (MOTOR_Obj *)handle;

  return (obj->CtrlVersion.major);
}

inline uint16_t MOTOR_getCtrlVer_minor(MOTOR_Handle handle)
{
  MOTOR_Obj *obj = (MOTOR_Obj *)handle;

  return (obj->CtrlVersion.minor);
}



#ifdef __cplusplus 
}
#endif



#endif

