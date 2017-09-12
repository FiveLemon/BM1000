/*************************************************************************
	> File Name: /home/wmj/Documents/my_motor/sw/drivers/drvic/S_curve.h
	> Author: 
	> Mail: 
	> Created Time: Thu 20 Jul 2017 10:01:44 PM CST
 ************************************************************************/

#ifndef _S_CURVE_H
#define _S_CURVE_H


#include "sw/modules/types/src/types.h"
#include "sw/modules/math/src/32b/math.h" 

#ifdef __cplusplus
extern "C" {
#endif


typedef enum
{
  S_CURVE_Speed_Stage1 = 0,
  S_CURVE_Speed_Stage2,
  S_CURVE_Speed_Stage3,
  S_CURVE_Speed_Stage4,
  S_CURVE_Speed_Stage5,
  S_CURVE_Speed_Stage6,
  S_CURVE_Speed_Stage7

} S_CURVE_Stages_e;



typedef enum
{
  S_CURVE_IDLE	= 0,
  S_CURVE_Step1,
  S_CURVE_Step2,
  S_CURVE_Step3,
  S_CURVE_Step4,
  S_CURVE_Step5,
  S_CURVE_Step6,
  S_CURVE_Step7,
  S_CURVE_Step8

} S_CURVE_States_e;




typedef struct _S_CURVE_Obj_
{

  _iq                max_accele;             //krpm/s
  _iq                curve_jerk;             //krpm/s^2

  _iq                accDeltSpd;

  _iq                Vl_speed;                //krpm 
  _iq                Vm_speed;                //krpm
  _iq                start_speed;             //krpm
  _iq                end_speed;               //krpm
  _iq                set_speed;               //krpm

  _iq                reduc_dist;             //reduction distance
  float_t            curvePeriod_sec;        //second
  uint32_t           counter_speed;          //


  bool               mov_dir;
  bool               curveRun_flag;


  S_CURVE_States_e   curve_state; 

} S_CURVE_Obj;




typedef struct _S_CURVE_Obj_ *S_CURVE_Handle;

inline void S_CURVE_setDirec(S_CURVE_Handle handle, bool run_direction)
{
   S_CURVE_Obj *obj = (S_CURVE_Obj *)handle;

   obj->mov_dir = run_direction;

   return;
}


inline void S_CURVE_setEndSpd(S_CURVE_Handle handle, _iq endSpeed)
{
  S_CURVE_Obj *obj = (S_CURVE_Obj *)handle;
  
  obj->end_speed = _IQabs(endSpeed);

  return;
}

inline void S_CURVE_setStartSpd(S_CURVE_Handle handle, _iq startSpeed)
{
  S_CURVE_Obj *obj = (S_CURVE_Obj *)handle;

  obj->start_speed = startSpeed;

  return;
}

inline void S_CURVE_setNextState(S_CURVE_Handle handle, S_CURVE_States_e state)
{
  S_CURVE_Obj *obj = (S_CURVE_Obj *)handle;

  obj->curve_state = state;

  return;  
}

inline void S_CURVE_incrCounter_speed(S_CURVE_Handle handle)
{
  S_CURVE_Obj *obj = (S_CURVE_Obj *)handle;

  uint32_t count = obj->counter_speed;

  count++;

  obj->counter_speed = count;

  return;  
}

inline void S_CURVE_resetCounter_speed(S_CURVE_Handle handle)
{
  S_CURVE_Obj *obj = (S_CURVE_Obj *)handle;

  obj->counter_speed = 0;

  return;
}

inline void S_CURVE_setCtrlPeriod_sec(S_CURVE_Handle handle, float_t curvePeriod_sec)
{ 
  S_CURVE_Obj *obj = (S_CURVE_Obj *)handle;

  obj->curvePeriod_sec = curvePeriod_sec;

  return;
}


inline void S_CURVE_CurveRun_enable(S_CURVE_Handle handle, bool state)
{
  S_CURVE_Obj *obj = (S_CURVE_Obj *)handle;

  obj->curveRun_flag = state;

  return;
}

inline void S_CURVE_setVlspeed(S_CURVE_Handle handle)
{
  S_CURVE_Obj *obj = (S_CURVE_Obj *)handle;

  obj->Vl_speed = obj->accDeltSpd + obj->start_speed;

  return;
}

inline void S_CURVE_setVmspeed(S_CURVE_Handle handle)
{
  S_CURVE_Obj *obj = (S_CURVE_Obj *)handle;

  obj->Vm_speed = obj->end_speed - obj->accDeltSpd;

  return;
}

inline _iq S_CURVE_getCurSpd(S_CURVE_Handle handle)
{
	S_CURVE_Obj *obj = (S_CURVE_Obj *)handle;

	return (obj->set_speed);

}



extern S_CURVE_Handle S_CURVE_Init(void *pMemory, const size_t numBytes);
extern void S_CURVE_setSreduction(S_CURVE_Handle handle);
extern void S_CURVE_setParams(S_CURVE_Handle handle, _iq max_accele, _iq curve_jerk);
extern void S_CURVE_setupAccDeltSpd(S_CURVE_Handle handle);
extern void S_CURVE_runState(S_CURVE_Handle handle, _iq CurSpeed, _iq CurPos);
extern _iq S_CURVE_getSpeed(S_CURVE_Handle handle, S_CURVE_Stages_e stage);


#ifdef __cplusplus
}
#endif // extern "C"

#endif
