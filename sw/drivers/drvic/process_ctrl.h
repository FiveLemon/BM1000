/*************************************************************************
	> File Name: process_ctrl.h
	> Author: 
	> Mail: 
	> Created Time: Sat 08 Jul 2017 09:36:34 AM CST
 ************************************************************************/

#ifndef _PROCESS_CTRL_H
#define _PROCESS_CTRL_H

#include "sw/drivers/drvic/ldc1612.h"
#include "sw/drivers/drvic/oled/oled.h"
#include "sw/drivers/drvic/decoder.h"
#include "sw/drivers/drvic/pca9555.h"
//#include "sw/modules/brake/src/brake.h"
#include "hal.h"
//#include "main.h"

#ifdef __cplusplus
extern "C" { 
#endif


//#define USE_OLED
#define USE_LDC161x_A



typedef enum
{
  PROCTRL_State_IDLE = 0,
  PROCTRL_State_EditLow,
  PROCTRL_State_EditHigh,
  PROCTRL_State_EditReturn,
  PROCTRL_State_NormalLow,
  PROCTRL_State_NormHiSped,
  PROCTRL_State_NormDecle,
  PROCTRL_State_NormDecle1,
  PROCTRL_State_NormSlow,
  PROCTRL_State_NormAccele,
  PROCTRL_State_NormSate,
  PROCTRL_State_NormReturn,
  PROCTRL_State_NormSlow2,
  PROCTRL_State_NormStop,
  PROCTRL_State_NormRegulate,
  PROCTRL_State_ReturnStop

} PROCTRL_State_e;

typedef struct _PROCTRL_MoVar_t_
{

  bool          Flag_enableSys;
  bool          Flag_Run_Identify;
  bool          Flag_RunState;

  _iq           SpeedRef_krpm; 
  _iq           MaxAccel_krpmps;
  _iq           Speed_krpm;
  _iq           Kp_spd;
  _iq           Ki_spd;

}PROCTRL_MoVar_t;

typedef struct _PROCTRL_StateFlag_t_
{
  bool              SENSOR0_ON;
  bool              SENSOR1_ON;
  bool              EMG_STOP;
  bool              ldcGetGoal;
  bool              ldc_high_recoded;
  bool              ldc_low_recoded;

  bool              moto_up_flag;
  bool              moto_down_flag;
  bool              set_high_speed;
  bool              set_high_accel;

  bool              wait_time;
  bool              wait_second;
  bool              set_stop_flag;
  bool              edit_mode_flag;
  bool              idle_wait_flag;
  bool              arrive_point_A;
  bool              arrive_point_B;
  bool              arrive_point_C;
  bool              arrive_point_D;

} PROCTRL_StateFlag_t;






typedef struct _PROCTRL_Obj_
{
  HAL_Handle          halHandle;

  PCA955x_Handle      pca955xHandle;
  PCA955x_Obj         pca9555;

  LDC161x_Handle      ldc161xHandle_a;
  LDC161x_Obj         ldc1612_a;

  LDC161x_Handle      ldc161xHandle_b;
  LDC161x_Obj         ldc1612_b;

  OLED_Handle         oledHandle;
  OLED_Obj            OLED;

  DECODER_Handle      QPdecHandle;
  DECODER_Obj         QPdecoder;

 // BRAKE_Handle        brakeHandle;
//  BRAKE_Obj           Brake;

  PROCTRL_State_e     Cur_State; 
  PROCTRL_StateFlag_t StateFlag;

  PROCTRL_MoVar_t     MotorVars;

  uint32_t            RecoderValue;
  uint32_t            LdcData;

} PROCTRL_Obj;

typedef struct _PROCTRL_Obj_ *PROCTRL_Handle;




PROCTRL_Handle PROCTRL_init(void *pMemory,const size_t numBytes);
void PROCTRL_setHalHandle(PROCTRL_Handle handle, HAL_Handle hal_handle);
void PROCTRL_setParams(PROCTRL_Handle handle);
void PROCTRL_run(PROCTRL_Handle handle);





inline void PROCTRL_setMotorSpeed(PROCTRL_Handle handle, _iq MotorSpeed_krpm)
{
   PROCTRL_Obj *obj = (PROCTRL_Obj *)handle;

   obj->MotorVars.Speed_krpm = MotorSpeed_krpm;

   return; 

}

inline void PROCTRL_setMotorRefSpeed(PROCTRL_Handle handle, _iq SpeedRef_krpm)
{
   PROCTRL_Obj *obj = (PROCTRL_Obj *)handle;

   obj->MotorVars.SpeedRef_krpm = SpeedRef_krpm;

   return;
}

inline void PROCTRL_setMotorMaxAccel(PROCTRL_Handle handle, _iq MaxAccel_krpmps)
{
  PROCTRL_Obj *obj = (PROCTRL_Obj *)handle;

  obj->MotorVars.MaxAccel_krpmps = MaxAccel_krpmps;

  return;
}

inline void PROCTRL_setMotorSpd_Kp(PROCTRL_Handle handle, _iq Kp_spd)
{
  PROCTRL_Obj *obj = (PROCTRL_Obj *)handle;

  obj->MotorVars.Kp_spd = Kp_spd;

  return;
}

inline void PROCTRL_setMotorSpd_Ki(PROCTRL_Handle handle, _iq Ki_spd)
{
  PROCTRL_Obj *obj = (PROCTRL_Obj *)handle;

  obj->MotorVars.Ki_spd = Ki_spd;

  return;
}

inline _iq PROCTRL_getMotorSpeed(PROCTRL_Handle handle)
{
  PROCTRL_Obj *obj = (PROCTRL_Obj *)handle;

  return (obj->MotorVars.Speed_krpm);

}

inline _iq PROCTRL_getMotorRefSpeed(PROCTRL_Handle handle)
{
  PROCTRL_Obj *obj = (PROCTRL_Obj *)handle;

  return (obj->MotorVars.SpeedRef_krpm);

}

inline _iq PROCTRL_getMotorMaxAccel(PROCTRL_Handle handle)
{
  PROCTRL_Obj *obj = (PROCTRL_Obj *)handle;

  return (obj->MotorVars.MaxAccel_krpmps);
}

inline _iq PROCTRL_getMotorSpd_Kp(PROCTRL_Handle handle)
{
  PROCTRL_Obj *obj = (PROCTRL_Obj *)handle;

  return (obj->MotorVars.Kp_spd);
}

inline _iq PROCTRL_getMotorSpd_Ki(PROCTRL_Handle handle)
{
  PROCTRL_Obj *obj = (PROCTRL_Obj *)handle;

  return (obj->MotorVars.Ki_spd);
}

inline PROCTRL_State_e PROCTRL_getCurState(PROCTRL_Handle handle)
{
   PROCTRL_Obj *Obj = (PROCTRL_Obj *)handle;
   PROCTRL_State_e CurrentState;

   CurrentState = Obj-> Cur_State;

   return (CurrentState);

}

inline PROCTRL_setNxtState(PROCTRL_Handle handle, PROCTRL_State_e Nxt_State)
{
   PROCTRL_Obj *Obj = (PROCTRL_Obj *)handle;

   Obj-> Cur_State = Nxt_State;

   return;
}




#ifdef __cplusplus 
}
#endif


#endif
