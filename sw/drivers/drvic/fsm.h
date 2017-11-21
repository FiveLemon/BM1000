/*************************************************************************
	> File Name: process_ctrl.h
	> Author: 
	> Mail: 
	> Created Time: Sat 08 Jul 2017 09:36:34 AM CST
 ************************************************************************/

#ifndef _FSM_H
#define _FSM_H


#include "sw/modules/flyingStart/src/32b/flyingStart.h"
#include "sw/modules/ctrl/src/32b/ctrl.h"
#include "hal.h"
#include "user.h"
#include "sw/drivers/drvic/motor.h"

#ifdef __cplusplus
extern "C" { 
#endif


//#define USE_OLED
//#define USE_LDC161x_A
#define MOTO_UP_TIME        50 //1s
#define MOTO_DOWN_TIME      50

#define OVER_TIME           10000  // 100 seconds



#define POINT_A 2000
#define POINT_B 1200


#define MAXACCEL  _IQ(10)
#define MAX_BUS_VOL   (0.430)
#define MIN_BUS_VOL   (0.280)
#define MAX_CHIP_TEMP _IQ20(100) // <128 (IQ24)
#define OVER_TEMP     _IQ20(90)

//! \brief Initialization values of global variables
//!




typedef enum
{
  Fsm_State_Idle = 0,

  Fsm_State_MotorFunc,

  Fsm_State_Spinning,
  Fsm_State_Reverse,

  Fsm_State_Slowdown,

  Fsm_State_ConstTorque,
  Fsm_State_MagneticBrake,

  Fsm_State_FullyClose,
  Fsm_State_InchingOpen,
  Fsm_State_FullyOpen,

#ifdef USE_SpinTAC
  Fsm_State_VelocityMode,
  Fsm_State_PositionMode1,
  Fsm_State_PositionMode2,
#else
  Fsm_State_SharedState1,
  Fsm_State_SharedState2,
  Fsm_State_SharedState3,
#endif

  Fsm_State_NormWait,
  Fsm_State_STOP,
  Fsm_State_Num
} FSM_State_e;

typedef enum
{
  Fsm_MotorFunc_FreeRun,
  Fsm_MotorFunc_Nipping,
  Fsm_MotorFunc_Notching,
  Fsm_MotorFunc_TrimPlat,
  Fsm_MotorFunc_Clamper,
  Fsm_MotorFunc_GlueTank,
  Fsm_MotorFunc_BlowerFan,
  Fsm_MotorFunc_Trolley,
  Fsm_MotorFunc_Num
} FSM_MotorFunc_e;


typedef enum
{
  FSM_Trans_RetireState= 0,
  FSM_Trans_LoopForever,
  FSM_Trans_JumpState1,
  FSM_Trans_JumpState2

} FSM_Trans_e;

typedef enum
{
  FSM_StateMode_Free_mode = 0,
  FSM_StateMode_Nipping_mode,
  FSM_StateMode_Notching_mode,
  FSM_StateMode_TrimPlat_mode,
  FSM_StateMode_Clamper_mode,
  FSM_StateMode_GlueTank_mode,
  FSM_StateMode_BlowerFan_mode,
  FSM_StateMode_Trolley_mode,
  FSM_StateMode_Num
} FSM_StateMode_e;


typedef enum {

  FSM_Event_IDLE = 0,
  FSM_Event_MeetTime,
  FSM_Event_ArriveRefSpd,
  FSM_Event_485Start,
  FSM_Event_Sensor0,
  FSM_Event_Sensor1,
  FSM_Event_arrive_point,
  FSM_Event_ContactSensor,
  FSM_Event_ZeroSpeed,
  FSM_Event_MoveIdle,
  FSM_Event_Num
} FSM_Event_e;

typedef enum {
//	FSM_Condition_None,
	FSM_Condition_Times,
	FSM_Condition_Speed,
	FSM_Condition_485Cmd,
	FSM_Condition_KeyS1,
	FSM_Condition_KeyS2,
	FSM_Condition_AnalogS1,
	FSM_Condition_AnalogS2,
	FSM_Condition_ContactS1,
	FSM_Condition_ContactS2,
	FSM_Condition_ZeroSpeed,
	//FSM_Condition_Position,
	FSM_Condition_MoveStatus,
	FSM_Condition_Num
} FSM_Cond_e;

typedef enum {
	//FSM_Action_RunNone,
	FSM_Action_RunIDLE,
	FSM_Action_calcSensorPos,
	FSM_Action_calcRelativePos,
	FSM_Action_CheckCoverSensor,
	FSM_Action_SetPosStep,
	FSM_Action_CheckPosition,
	FSM_Action_VelTransToPos,
	FSM_Action_SetVelocity,
	FSM_Action_RunVelocityMode,
	FSM_Action_ReleaseDcBrake,
	FSM_Action_RunSTOP,
	FSM_Action_Num
} FSM_Action_e;

typedef enum {
  FSM_485EditOpt_RefSpeed,
  FSM_485EditOpt_CondValue,
  FSM_485EditOpt_Condition,
  FSM_485EditOpt_RunAction,
  FSM_485EditOpt_NextState,
  FSM_485EditOpt_Num
} FSM_EditOpt_e;

typedef enum {
  FSM_Error_None           = 0,
  FSM_Error_OverTime       = (1 << 0),
  FSM_Error_EMG            = (1 << 1),
  FSM_Error_OverVoltage    = (1 << 2),
  FSM_Error_UnderVoltage   = (1 << 3),
  FSM_Error_OverTemp       = (1 << 4),
  FSM_Error_OverCurrent    = (1 << 5),
  FSM_Error_485Stop        = (1 << 6),
  FSM_Error_StallError     = (1 << 7)

} FSM_Error_e;

typedef enum {
  FSM_ErrMask_None           = 0,
  FSM_ErrMask_OverTime       = (1 << 0),
  FSM_ErrMask_EMG            = (1 << 1),
  FSM_ErrMask_OverVoltage    = (1 << 2),
  FSM_ErrMask_UnderVoltage   = (1 << 3),
  FSM_ErrMask_OverTemp       = (1 << 4),
  FSM_ErrMask_OverCurrent    = (1 << 5),
  FSM_ErrMask_485Stop        = (1 << 6),
  FSM_ErrMask_StallError     = (1 << 7)

} FSM_ErrMask_e;


typedef struct _FSM_StatePool_t_
{
  int16_t        FSM_RefSpeed[Fsm_State_Num];
  uint16_t       FSM_CondValue[Fsm_State_Num];

  FSM_Cond_e     FSM_Condition[Fsm_State_Num];
  FSM_Action_e   FSM_RunAction[Fsm_State_Num];
  FSM_State_e    FSM_NextState[Fsm_State_Num];

} FSM_StatePool_t;

typedef struct _FSM_Position_t_
{
  int32_t    PosInt_MRev;  // rang
  _iq        PosFrac_MRev;

} FSM_Position_t;



typedef struct _FSM_StatePool_t_ *StPool_Handle;

typedef struct _FSM_Obj_
{
  MOTOR_Handle        motorHandle;
  HAL_Handle          halHandle;
  StPool_Handle       StBoxHandle;
#ifdef USE_SpinTAC
  ST_Handle           stHandle;
#endif

  FSM_State_e         FSM_State;
  FSM_State_e         FSM_CurState;
  FSM_Trans_e         FSM_Trans;
  FSM_Event_e         FSM_Event;

  FSM_StateMode_e     FSM_StMode;

  uint16_t            FSM_ErrFlg;
  uint16_t            FSM_ErrMask;

  uint16_t            FSM_runTime;
  uint16_t            FSM_485Cmd;

  FSM_State_e         FSM_485EditState;
  FSM_EditOpt_e       FSM_485EditOpt;
  uint16_t            FSM_485RefSpeed;

  _iq                 MaxTorque_Nm;

  FSM_Cond_e          FSM_CheckCond;
  uint16_t            FSM_CondValue;

  FSM_Position_t      OldAbsPos;
  FSM_Position_t      NewAbsPos;



  bool                Flag_485StartMotor;
  bool                Flag_MaxTimeLimit;
  bool                runTime_Enable;

  bool                Flag_StallEnable;
  bool                Flag_ReportState;
  bool                Flag_RunMode;
  bool                Flag_DcBrake;



} FSM_Obj;

typedef struct _FSM_Obj_ *FSM_Handle;

typedef void (*func_ptr_ret_t)(FSM_Handle);
typedef func_ptr_ret_t (*func_ptr_t)(FSM_Handle);


typedef struct _FSM_Vars_t_
{

  float           FSM_RefSpeed;

  uint16_t        FSM_CondValue;
  FSM_Cond_e      FSM_Condition;
  FSM_Action_e    FSM_RunAction;
  FSM_State_e     FSM_NextState;

} FSM_Vars_t;

typedef struct _FSM_Stall_t_
{
	float   FSM_TorqueLimit;
    bool    FSM_StallMode;

} FSM_Stall_t;


FSM_Handle FSM_init(void *pMemory,const size_t numBytes);
void FSM_setMotorHandle(FSM_Handle handle, MOTOR_Handle motorHandle);
void FSM_setHalHandle(FSM_Handle handle, HAL_Handle halHandle);

void FSM_485Edit_State_Box(FSM_Handle handle, const uint16_t Params);
uint16_t FSM_485Read_State_Box(FSM_Handle handle);

#ifdef USE_SpinTAC
void FSM_setStHandle(FSM_Handle handle, ST_Handle stHandle);
#endif


void FSM_RunConfig(FSM_Handle handle);
void FSM_SetVelocity(FSM_Handle handle);
void FSM_RunPolling(FSM_Handle handle);
void FSM_RunRetire(FSM_Handle handle);

void FSM_Run_IDLE(FSM_Handle handle);
void FSM_Run_STOP(FSM_Handle handle);
void FSM_Run_ReleaseDcBrake(FSM_Handle handle);
void FSM_RunVelocityMode(FSM_Handle handle);

void FSM_ParamInit(FSM_Handle handle);
void FSM_State_Box_Init(FSM_Handle handle, const FSM_Vars_t *RomState_Vars);
void FSM_SetupFsmMode(FSM_Handle handle);
void FSM_ReportResults(FSM_Handle handle);
void FSM_RunSpinTAC_Velocity(FSM_Handle handle);
void FSM_RunSpinTAC_Position(FSM_Handle handle);

void FSM_RunTrans(FSM_Handle handle);
void FSM_SelectMode(FSM_Handle handle);
void FSM_clrOverCurrentReg(FSM_Handle handle);
void FSM_getPortStatus(FSM_Handle handle);
void FSM_ShutDowm(FSM_Handle handle);


void FSM_RunExitState(FSM_Handle handle);
void FSM_VelTransToPos(FSM_Handle handle);
void FSM_RecordZeroPoint(FSM_Handle handle);
void FSM_calcRelativePos(FSM_Handle handle);
void FSM_calcSensorPos(FSM_Handle handle);
void FSM_CheckCoverSensor(FSM_Handle handle);
void FSM_SetPosStep(FSM_Handle handle);
void FSM_calcCoordinate(FSM_Handle handle);


void FSM_CheckKeySensor1(FSM_Handle handle);
void FSM_CheckKeySensor2(FSM_Handle handle);

void FSM_CheckAnalogSensor1(FSM_Handle handle);
void FSM_CheckAnalogSensor2(FSM_Handle handle);

void FSM_CheckContactSensor1(FSM_Handle handle);
void FSM_CheckContactSensor2(FSM_Handle handle);

void FSM_CheckSpeed(FSM_Handle handle);
void FSM_CheckTimes(FSM_Handle handle);


void FSM_Check485Start(FSM_Handle handle);

void FSM_CheckZeroSpeed(FSM_Handle handle);
void FSM_CheckPosition(FSM_Handle handle);
void FSM_CheckMoveStatus(FSM_Handle handle);
void FSM_CheckErrors(FSM_Handle handle);

void FSM_Run(FSM_Handle handle);



inline void FSM_setMotorRefSpeed(FSM_Handle handle, const _iq SpeedRef_krpm)
{
   FSM_Obj *obj = (FSM_Obj *)handle;

   obj->motorHandle->SpeedRef_krpm = SpeedRef_krpm;

   return;
}


inline void FSM_RunTimeEnable(FSM_Handle handle, const bool state)
{
  FSM_Obj *obj = (FSM_Obj *)handle;

  obj->runTime_Enable = state;

  return;
}

inline void FSM_ResetRunTime(FSM_Handle handle)
{
  FSM_Obj *obj = (FSM_Obj *)handle;

  obj->FSM_runTime = 0;

  return;
}

inline bool FSM_RunTimeState(FSM_Handle handle)
{
  FSM_Obj *obj = (FSM_Obj *)handle;

  return(obj->runTime_Enable);
}

inline void FSM_RunTimeCnt(FSM_Handle handle)
{
  FSM_Obj *obj = (FSM_Obj *)handle;

  obj->FSM_runTime += 1;

  return;
}


inline FSM_State_e FSM_getCurState(FSM_Handle handle)
{
  FSM_Obj *obj = (FSM_Obj *)handle;

   return obj->FSM_State;

}

inline void FSM_setNxtState(FSM_Handle handle, FSM_State_e State)
{
  FSM_Obj *obj = (FSM_Obj *)handle;

  obj-> FSM_State = State;

  return;
}

inline void FSM_setMotorFuncState(FSM_Handle handle, const FSM_Vars_t State)
{
  FSM_Obj *obj = (FSM_Obj *)handle;

  obj->StBoxHandle->FSM_Condition[Fsm_State_MotorFunc] = State.FSM_Condition;
  obj->StBoxHandle->FSM_CondValue[Fsm_State_MotorFunc] = State.FSM_CondValue;
  obj->StBoxHandle->FSM_RefSpeed[Fsm_State_MotorFunc]  = (_IQ(State.FSM_RefSpeed) / 16777);
  obj->StBoxHandle->FSM_RunAction[Fsm_State_MotorFunc] = State.FSM_RunAction;
  obj->StBoxHandle->FSM_NextState[Fsm_State_MotorFunc] = State.FSM_NextState;

  return;
}

inline void FSM_setSpinningState(FSM_Handle handle, const FSM_Vars_t State)
{
  FSM_Obj *obj = (FSM_Obj *)handle;

  obj->StBoxHandle->FSM_Condition[Fsm_State_Spinning] = State.FSM_Condition;
  obj->StBoxHandle->FSM_CondValue[Fsm_State_Spinning] = State.FSM_CondValue;
  obj->StBoxHandle->FSM_RefSpeed[Fsm_State_Spinning]  = (_IQ(State.FSM_RefSpeed) / 16777);
  obj->StBoxHandle->FSM_RunAction[Fsm_State_Spinning] = State.FSM_RunAction;
  obj->StBoxHandle->FSM_NextState[Fsm_State_Spinning] = State.FSM_NextState;

  return;
}

inline bool FSM_getMotorRunFlag(FSM_Handle handle)
{
  FSM_Obj *obj = (FSM_Obj *)handle;

 return (obj->motorHandle->Flag_enableRun);

}

inline void FSM_setMotorRunFlag(FSM_Handle handle, const bool State)
{
  FSM_Obj *obj = (FSM_Obj *)handle;

  obj->motorHandle->Flag_enableRun  = State;
  return;
}

inline void FSM_setFlag_485Start(FSM_Handle handle)
{
  FSM_Obj *obj = (FSM_Obj *)handle;

  obj->Flag_485StartMotor = true;

  return;
}

inline void FSM_setFlag_485Stop(FSM_Handle handle)
{
  FSM_Obj *obj = (FSM_Obj *)handle;

  obj->Flag_485StartMotor = false;

  return;
}

inline void FSM_clrMotorRunFlag(FSM_Handle handle)
{
  FSM_Obj *obj = (FSM_Obj *)handle;

  obj->motorHandle->Flag_enableRun  = false;

  return;
}

inline void FSM_clrFlag_fsm(FSM_Handle handle)
{
  FSM_Obj *obj = (FSM_Obj *)handle;

  obj->FSM_ErrFlg = FSM_Error_None;

  return;
}

inline uint16_t FSM_getFlag_fsm(FSM_Handle handle)
{
  FSM_Obj *obj = (FSM_Obj *)handle;

  return (obj->FSM_ErrFlg);
}

inline void FSM_set485EditOptions(FSM_Handle handle, const FSM_EditOpt_e EditOpt)
{
  FSM_Obj *obj = (FSM_Obj *)handle;

  obj->FSM_485EditOpt = EditOpt;

  return;
}

inline FSM_EditOpt_e FSM_get485EditOptions(FSM_Handle handle)
{
  FSM_Obj *obj = (FSM_Obj *)handle;

  return (obj->FSM_485EditOpt);
}

inline void FSM_set485RefSpeed(FSM_Handle handle, const uint16_t RefSpeed)
{
  FSM_Obj *obj = (FSM_Obj *)handle;

  obj->FSM_485RefSpeed = RefSpeed;

  return;
}

inline uint16_t FSM_get485RefSpeed(FSM_Handle handle)
{
  FSM_Obj *obj = (FSM_Obj *)handle;

  return (obj->FSM_485RefSpeed);
}


inline void FSM_set485EditState(FSM_Handle handle, const FSM_State_e state)
{
  FSM_Obj *obj = (FSM_Obj *)handle;

  obj->FSM_485EditState = state;

  return;
}

inline FSM_State_e FSM_get485EditState(FSM_Handle handle)
{
  FSM_Obj *obj = (FSM_Obj *)handle;

  return (obj->FSM_485EditState);
}

inline void FSM_setStallMode(FSM_Handle handle, const bool state)
{
  FSM_Obj *obj = (FSM_Obj *)handle;

  obj->Flag_StallEnable = state;

  return;
}

inline bool FSM_getStallMode(FSM_Handle handle)
{
  FSM_Obj *obj = (FSM_Obj *)handle;

  return (obj->Flag_StallEnable);
}

inline void FSM_setObjPosInt(FSM_Handle handle, const int16_t ObjPos)
{
  FSM_Obj *obj = (FSM_Obj *)handle;

  obj->NewAbsPos.PosInt_MRev = ObjPos;

  return;
}

inline void FSM_setObjPosFrac(FSM_Handle handle, const _iq ObjPos)
{
  FSM_Obj *obj = (FSM_Obj *)handle;

  obj->NewAbsPos.PosFrac_MRev = _IQfrac(ObjPos);

  return;
}

inline void FSM_setObjPosRough(FSM_Handle handle, const uint16_t ObjPos)
{
  FSM_Obj *obj = (FSM_Obj *)handle;
  _iq7 Temp_Frac;

  Temp_Frac = (int16_t)ObjPos;

  obj->NewAbsPos.PosInt_MRev = _IQ7int(Temp_Frac);
  obj->NewAbsPos.PosFrac_MRev = _IQ7toIQ(_IQ7frac(Temp_Frac));

  return;
}

inline int16_t FSM_getObjPosInt(FSM_Handle handle)
{
  FSM_Obj *obj = (FSM_Obj *)handle;
  int16_t ObjPos;

  ObjPos = (int16_t)(obj->NewAbsPos.PosInt_MRev);

  return (ObjPos);
}


inline int16_t FSM_getObjPosFrac(FSM_Handle handle)
{
  FSM_Obj *obj = (FSM_Obj *)handle;
  int16_t ObjPos;
  _iq15 Temp_PosFrac;

  Temp_PosFrac = _IQtoIQ15(obj->NewAbsPos.PosFrac_MRev);
  ObjPos = (int16_t)Temp_PosFrac;

  return (ObjPos);
}

inline int16_t FSM_getObjPosRough(FSM_Handle handle)
{
  FSM_Obj *obj = (FSM_Obj *)handle;
  int16_t Temp_int, Temp_Frac;

  Temp_int = (int16_t)(obj->NewAbsPos.PosInt_MRev);
  Temp_int <<= 7;
  Temp_Frac = (int16_t)_IQtoIQ7(obj->NewAbsPos.PosFrac_MRev);

  return (Temp_int + Temp_Frac);
}


inline int16_t FSM_getCurPosInt(FSM_Handle handle)
{
  FSM_Obj *obj = (FSM_Obj *)handle;
  int16_t ObjPos;

  ObjPos = (int16_t)(obj->OldAbsPos.PosInt_MRev);

  return (ObjPos);
}

inline int16_t FSM_getCurPosFrac(FSM_Handle handle)
{
  FSM_Obj *obj = (FSM_Obj *)handle;
  int16_t ObjPos;
  _iq15 Temp_PosFrac;

  Temp_PosFrac = _IQtoIQ15(obj->OldAbsPos.PosFrac_MRev);
  ObjPos = (int16_t)Temp_PosFrac;

  return (ObjPos);
}

inline int16_t FSM_getCurPosRough(FSM_Handle handle)
{
  FSM_Obj *obj = (FSM_Obj *)handle;
  int16_t Temp_int, Temp_Frac;

  Temp_int = (int16_t)(obj->OldAbsPos.PosInt_MRev);
  Temp_int <<= 7;
  Temp_Frac = (int16_t)_IQtoIQ7(obj->OldAbsPos.PosFrac_MRev);

  return (Temp_int + Temp_Frac);
}




extern void usDelay(uint32_t Count);


#ifdef __cplusplus 
}
#endif


#endif
