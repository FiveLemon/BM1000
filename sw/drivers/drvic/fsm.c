/*************************************************************************
	> File Name: process_ctrl.c
	> Author: 
	> Mail: 
	> Created Time: Sat 08 Jul 2017 09:35:56 AM CST
 ************************************************************************/


#include "sw/drivers/drvic/fsm.h"

#define US_TO_CNT(A) ((((long double) A * (long double)USER_SYSTEM_FREQ_MHz) - 9.0L) / 5.0L)

#define FSM_STATE_IDLE          {0.0,    0,          FSM_Condition_485Cmd,      FSM_Action_RunIDLE,               Fsm_State_MotorFunc}

#define FSM_STATE_FreeRun       {0.0,    3000,        FSM_Condition_Times,       FSM_Action_SetVelocity,           Fsm_State_STOP}
#define FSM_STATE_Nipping       {1.5,     50,         FSM_Condition_Times,       FSM_Action_SetVelocity,           Fsm_State_Spinning}
#define FSM_STATE_Notching	    {-0.2,    100,        FSM_Condition_Times,       FSM_Action_SetVelocity,           Fsm_State_STOP}
#define FSM_STATE_TrimPlat   	{-1.7,    200,        FSM_Condition_Times,       FSM_Action_SetVelocity,           Fsm_State_STOP}
#define FSM_STATE_Clamper	    { 0.5,    10,         FSM_Condition_Times,       FSM_Action_SetVelocity,           Fsm_State_FullyClose}
#define FSM_STATE_GlueTank	    {-1.5,    300,        FSM_Condition_Times,       FSM_Action_SetVelocity,           Fsm_State_STOP}
#define FSM_STATE_BlowerFan  	{-0.2,    30,         FSM_Condition_Times,       FSM_Action_SetVelocity,           Fsm_State_Spinning}
#define FSM_STATE_Trolley       {1.0,     10,         FSM_Condition_Times,       FSM_Action_CheckCoverSensor,      Fsm_State_STOP}

#define FSM_STATE_MotorFunc     FSM_STATE_FreeRun

#define FSM_STATE_Spinning	    { 1.5,    400,      FSM_Condition_Times,      FSM_Action_SetVelocity,           Fsm_State_Reverse}
#define FSM_STATE_Reverse       { 0.0,    50,       FSM_Condition_Times,      FSM_Action_SetVelocity,           Fsm_State_Slowdown}

#define FSM_STATE_Slowdown	    { -1.0,   100,      FSM_Condition_Speed,      FSM_Action_SetVelocity,           Fsm_State_MagneticBrake}
#define FSM_STATE_MagneticBrake	{ 0.0,    250,      FSM_Condition_Times,      FSM_Action_ReleaseDcBrake,        Fsm_State_STOP}

#define FSM_STATE_ConstTorque	{ 0.0,     200,      FSM_Condition_Times,       FSM_Action_SetVelocity,           Fsm_State_STOP}


#define FSM_STATE_FullyClose    { 1.5,     900,       FSM_Condition_Times,       FSM_Action_SetVelocity,           Fsm_State_STOP}
#define FSM_STATE_InchingOpen   { -2.0,     50,       FSM_Condition_Times,       FSM_Action_SetVelocity,           Fsm_State_STOP}
#define FSM_STATE_FullyOpen     { -2.0,    900,       FSM_Condition_Times,       FSM_Action_SetVelocity,           Fsm_State_STOP}

#define FSM_STATE_VelocityMode  { 0.1,    2700,      FSM_Condition_ContactS1,   FSM_Action_RunVelocityMode,       Fsm_State_STOP}
#define FSM_STATE_PositionMode1 { 2.5,    320,       FSM_Condition_MoveStatus,  FSM_Action_SetPosStep,            Fsm_State_PositionMode2}
#define FSM_STATE_PositionMode2 { 2.5,    320,       FSM_Condition_MoveStatus,  FSM_Action_CheckPosition,         Fsm_State_PositionMode1}

#define FSM_STATE_SharedState1	{-1.645,  0,         FSM_Condition_Speed,       FSM_Action_SetVelocity,           Fsm_State_STOP}
#define FSM_STATE_SharedState2	{ 0.5,    POINT_A,   FSM_Condition_AnalogS1,    FSM_Action_SetVelocity,           Fsm_State_STOP}
#define FSM_STATE_SharedState3	{1.645,   30,        FSM_Condition_Times,       FSM_Action_SetVelocity,           Fsm_State_STOP}

#define FSM_STATE_NormWait	    { 0.0,    300,       FSM_Condition_ZeroSpeed,   FSM_Action_VelTransToPos,         Fsm_State_STOP}

#define FSM_STATE_STOP	        { 0.0,    1,         FSM_Condition_Times,       FSM_Action_RunSTOP,               Fsm_State_Idle}


//===================================================================

#define FreeRun_MaxTorque      (1.5)
#define Nipping_MaxTorque      (1.5)
#define Notching_MaxTorque     (1.5)
#define TrimPlat_MaxTorque     (1.5)
#define Clamper_MaxTorque      (2.5)
#define GlueTank_MaxTorque     (1.5)
#define BlowerFan_MaxTorque    (1.5)
#define Trolley_MaxTorque      (2.5)

#define FSM_Free_StallMode          (true)
#define FSM_Nipping_StallMode       (true)
#define FSM_Notching_StallMode      (false)
#define FSM_TrimPlat_StallMode      (false)
#define FSM_Clamper_StallMode       (true)
#define FSM_GlueTank_StallMode      (false)
#define FSM_BlowerFan_StallMode     (false)
#define FSM_Trolley_StallMode       (false)

const float FSM_MaxTorque[FSM_StateMode_Num] =
{
  FreeRun_MaxTorque,
  Nipping_MaxTorque,
  Notching_MaxTorque,
  TrimPlat_MaxTorque,
  Clamper_MaxTorque,
  GlueTank_MaxTorque,
  BlowerFan_MaxTorque,
  Trolley_MaxTorque

};

const bool FSM_StallMode[FSM_StateMode_Num] =
{
	FSM_Free_StallMode,
	FSM_Nipping_StallMode,
	FSM_Notching_StallMode,
	FSM_TrimPlat_StallMode,
	FSM_Clamper_StallMode,
	FSM_GlueTank_StallMode,
	FSM_BlowerFan_StallMode,
	FSM_Trolley_StallMode

};

/*
#define FSM_StMode_Free_mode           {0.2, true}
#define FSM_StMode_Edit_mode           {0.5, true}
#define FSM_StMode_Nipping_mode        {3.6, true}
#define FSM_StMode_Notching_mode       {5.0, false}
#define FSM_StMode_TrimPlat_mode   {1.0, false}
#define FSM_StMode_Clamper_mode        {0.3, true}
#define FSM_StMode_GlueTank_mode       {0.1, false}
#define FSM_StMode_BlowerFan_mode      {2.0, false}

const FSM_Stall_t JM_StallMode[FSM_StateMode_Num]= {
		FSM_StMode_Free_mode,
		FSM_StMode_Edit_mode,
		FSM_StMode_Nipping_mode,
		FSM_StMode_Notching_mode,
		FSM_StMode_TrimPlat_mode,
		FSM_StMode_Clamper_mode,
		FSM_StMode_GlueTank_mode,
		FSM_StMode_BlowerFan_mode
};
*/

const func_ptr_ret_t FSM_CondFunc[FSM_Condition_Num] = {

		FSM_CheckTimes,
		FSM_CheckSpeed,
		FSM_Check485Start,
		FSM_CheckKeySensor1,
		FSM_CheckKeySensor2,
		FSM_CheckAnalogSensor1,
		FSM_CheckAnalogSensor2,
		FSM_CheckContactSensor1,
		FSM_CheckContactSensor2,
		FSM_CheckZeroSpeed,
		//FSM_CheckPosition,
		FSM_CheckMoveStatus
};

const FSM_Event_e FSM_EventTab[FSM_Condition_Num] = {
		FSM_Event_MeetTime,
		FSM_Event_ArriveRefSpd,
		FSM_Event_485Start,
		FSM_Event_Sensor0,
		FSM_Event_Sensor1,
		FSM_Event_arrive_point,
		FSM_Event_arrive_point,
		FSM_Event_ContactSensor,
		FSM_Event_ContactSensor,
		FSM_Event_ZeroSpeed,
		FSM_Event_MoveIdle
};


const func_ptr_ret_t FSM_ActionFunc[FSM_Action_Num] ={
		FSM_Run_IDLE,

#ifdef USE_SpinTAC
		FSM_calcSensorPos,
		FSM_calcRelativePos,
		FSM_CheckCoverSensor,
		FSM_SetPosStep,
		FSM_CheckPosition,
		FSM_VelTransToPos,
		FSM_SetVelocity,
		FSM_RunVelocityMode,
#else
		FSM_SetVelocity,
		FSM_SetVelocity,
		FSM_SetVelocity,
		FSM_SetVelocity,
		FSM_SetVelocity,
		FSM_SetVelocity,
		FSM_SetVelocity,
		FSM_SetVelocity,
#endif
		FSM_Run_ReleaseDcBrake,
		FSM_Run_STOP,



};

//SharedState
//===================================================================
const FSM_Vars_t JM_FSM_Vars[Fsm_State_Num] = {
		FSM_STATE_IDLE,

		FSM_STATE_MotorFunc,

		FSM_STATE_Spinning,
		FSM_STATE_Reverse,

		FSM_STATE_Slowdown,
		FSM_STATE_ConstTorque,
		FSM_STATE_MagneticBrake,


		FSM_STATE_FullyClose,
		FSM_STATE_InchingOpen,
		FSM_STATE_FullyOpen,
#ifdef USE_SpinTAC
		FSM_STATE_VelocityMode,
		FSM_STATE_PositionMode1,
		FSM_STATE_PositionMode2,
#else
		FSM_STATE_SharedState1,
		FSM_STATE_SharedState3,
		FSM_STATE_SharedState2,
#endif

		FSM_STATE_NormWait,
		FSM_STATE_STOP
};

const FSM_Vars_t JM_FSM_MotorFunc[Fsm_MotorFunc_Num] ={

				FSM_STATE_FreeRun,
				FSM_STATE_Nipping,
				FSM_STATE_Notching,
				FSM_STATE_TrimPlat,
				FSM_STATE_Clamper,
				FSM_STATE_GlueTank,
				FSM_STATE_BlowerFan,
				FSM_STATE_Trolley
};

#ifdef F2802xF
#pragma DATA_SECTION(FSM_State_Box,"vib_buf_data");
#endif

FSM_StatePool_t   FSM_State_Box;


//===================================================================
FSM_Handle FSM_init(void *pMemory,const size_t numBytes)
{

   FSM_Handle handle;
   
   if(numBytes < sizeof(FSM_Obj))
     return ((FSM_Handle)NULL);

   handle = (FSM_Handle)pMemory;

   FSM_Obj *obj = (FSM_Obj *)handle;

   obj->StBoxHandle = &FSM_State_Box;

   return handle;

}

void FSM_setMotorHandle(FSM_Handle handle, MOTOR_Handle motorHandle)
{
  FSM_Obj *obj = (FSM_Obj *)handle;

  obj->motorHandle = motorHandle;

  return;
}

void FSM_setHalHandle(FSM_Handle handle, HAL_Handle halHandle)
{
  FSM_Obj *obj = (FSM_Obj *)handle;

  obj->halHandle = halHandle;

  return;
}

#ifdef USE_SpinTAC
void FSM_setStHandle(FSM_Handle handle, ST_Handle stHandle)
{
  FSM_Obj *obj = (FSM_Obj *)handle;

  obj->stHandle = stHandle;

  return;
}
#endif

void FSM_ParamInit(FSM_Handle handle)
{
  FSM_Obj *obj = (FSM_Obj *)handle;

  FSM_setNxtState(handle, Fsm_State_Idle);
  FSM_set485EditState(handle, Fsm_State_Idle);

  FSM_setMotorRunFlag(handle, false);
  FSM_setMotorRefSpeed(handle, _IQ(0.0));
  FSM_ResetRunTime(handle);
  FSM_RunTimeEnable(handle, false);

  obj->FSM_Event = FSM_Event_IDLE;
  obj->FSM_CurState = Fsm_State_Idle;
  obj->FSM_Trans = FSM_Trans_LoopForever;
  obj->FSM_485EditOpt = FSM_485EditOpt_RefSpeed;
  //obj->FSM_StMode = FSM_StateMode_Nipping_mode;

  FSM_SetupFsmMode(handle);

  obj->Flag_485StartMotor = false;

  obj->NewAbsPos.PosFrac_MRev = _IQ(0.0);
  obj->NewAbsPos.PosInt_MRev = 0;
  obj->OldAbsPos.PosFrac_MRev = _IQ(0.0);
  obj->OldAbsPos.PosInt_MRev = 0;
  FSM_set485RefSpeed(handle, _IQ(0.0));
  obj->Flag_DcBrake = false;

  FSM_State_Box_Init(handle, JM_FSM_Vars);



}

void FSM_SetupFsmMode(FSM_Handle handle)
{
	FSM_Obj *obj = (FSM_Obj *)handle;

  switch(obj->halHandle->boardAddress)
  {
  case HAL_BoardAddr_Motor1: obj->FSM_StMode = FSM_StateMode_Notching_mode; break;
  case HAL_BoardAddr_Motor2: obj->FSM_StMode = FSM_StateMode_Nipping_mode; break;
  case HAL_BoardAddr_Motor3: obj->FSM_StMode = FSM_StateMode_Clamper_mode; break;

  case HAL_BoardAddr_Motor4: obj->FSM_StMode = FSM_StateMode_GlueTank_mode;
                             // disable PowerWarp function
                             MOTOR_setFlag_PowerWarp(obj->motorHandle,false); break;

  case HAL_BoardAddr_Motor5: obj->FSM_StMode = FSM_StateMode_TrimPlat_mode; break;
  case HAL_BoardAddr_Motor6: obj->FSM_StMode = FSM_StateMode_Free_mode; break;
  case HAL_BoardAddr_Motor7: obj->FSM_StMode = FSM_StateMode_Trolley_mode; break;
  //case HAL_BoardAddr_Heater: obj->FSM_StMode = break;
  default: obj->FSM_StMode = FSM_StateMode_Free_mode; break;

  }

  return;
}

//======================== Select StateMode ======================================

void FSM_SelectMode(FSM_Handle handle)
{
  FSM_Obj *obj = (FSM_Obj *)handle;

   switch(obj->FSM_StMode)
   {
   case FSM_StateMode_Free_mode: FSM_setMotorFuncState(handle, JM_FSM_MotorFunc[Fsm_MotorFunc_FreeRun]);break;
   case FSM_StateMode_Nipping_mode: FSM_setMotorFuncState(handle, JM_FSM_MotorFunc[Fsm_MotorFunc_Nipping]); break;
   case FSM_StateMode_Notching_mode:  FSM_setMotorFuncState(handle, JM_FSM_MotorFunc[Fsm_MotorFunc_Notching]); break;
   case FSM_StateMode_TrimPlat_mode:  FSM_setMotorFuncState(handle, JM_FSM_MotorFunc[Fsm_MotorFunc_TrimPlat]); break;
   case FSM_StateMode_Clamper_mode: FSM_setMotorFuncState(handle, JM_FSM_MotorFunc[Fsm_MotorFunc_Clamper]); break;
   case FSM_StateMode_GlueTank_mode: FSM_setMotorFuncState(handle, JM_FSM_MotorFunc[Fsm_MotorFunc_GlueTank]); break;
   case FSM_StateMode_BlowerFan_mode: FSM_setMotorFuncState(handle, JM_FSM_MotorFunc[Fsm_MotorFunc_BlowerFan]); break;
   case FSM_StateMode_Trolley_mode: FSM_setMotorFuncState(handle, JM_FSM_MotorFunc[Fsm_MotorFunc_Trolley]); break;

   default: FSM_setMotorFuncState(handle, JM_FSM_MotorFunc[Fsm_MotorFunc_FreeRun]); break;
   }

   obj->MaxTorque_Nm = _IQ(FSM_MaxTorque[obj->FSM_StMode]);

  return;
}

void FSM_State_Box_Init(FSM_Handle handle, const FSM_Vars_t *RomState_Vars)
{
   FSM_Obj *obj = (FSM_Obj *)handle;

  uint16_t State_Num;

  for(State_Num = 0; State_Num < Fsm_State_Num; State_Num++)
  {
    obj->StBoxHandle->FSM_Condition[State_Num] = RomState_Vars[State_Num].FSM_Condition;
    obj->StBoxHandle->FSM_CondValue[State_Num] = RomState_Vars[State_Num].FSM_CondValue;
    obj->StBoxHandle->FSM_RefSpeed[State_Num] = (_IQ(RomState_Vars[State_Num].FSM_RefSpeed) / 16777);
    obj->StBoxHandle->FSM_RunAction[State_Num] = RomState_Vars[State_Num].FSM_RunAction;
    obj->StBoxHandle->FSM_NextState[State_Num] = RomState_Vars[State_Num].FSM_NextState;

  }

  FSM_SelectMode(handle);

#ifdef USE_SpinTAC
  if(obj->motorHandle->Flag_ZeroPiont_Identify == true)
  {
	  obj->StBoxHandle->FSM_NextState[Fsm_State_MotorFunc] = Fsm_State_PositionMode1;
	  obj->StBoxHandle->FSM_NextState[Fsm_State_PositionMode1] = Fsm_State_STOP;
	  obj->StBoxHandle->FSM_NextState[Fsm_State_PositionMode2] = Fsm_State_STOP;

  }
#endif


  return;
}

void FSM_485Edit_State_Box(FSM_Handle handle, const uint16_t Params)
{
   FSM_Obj *obj = (FSM_Obj *)handle;

   switch(obj->FSM_485EditOpt)
   {

   case FSM_485EditOpt_RefSpeed:  obj->StBoxHandle->FSM_RefSpeed[obj->FSM_485EditState] = (Params); break;
   case FSM_485EditOpt_CondValue: obj->StBoxHandle->FSM_CondValue[obj->FSM_485EditState] = (Params); break;

   case FSM_485EditOpt_Condition: if(Params < FSM_Condition_Num)
	                              obj->StBoxHandle->FSM_Condition[obj->FSM_485EditState] = (FSM_Cond_e)(Params); break;

   case FSM_485EditOpt_RunAction: if(Params < FSM_Action_Num)
	                              obj->StBoxHandle->FSM_RunAction[obj->FSM_485EditState] = (FSM_Action_e)(Params); break;

   case FSM_485EditOpt_NextState: if(Params < Fsm_State_Num)
	                              obj->StBoxHandle->FSM_NextState[obj->FSM_485EditState] = (FSM_State_e)(Params); break;
   default: break;

   }

  return;

}

uint16_t FSM_485Read_State_Box(FSM_Handle handle)
{
   FSM_Obj *obj = (FSM_Obj *)handle;
   uint16_t Params = 0;

   switch(obj->FSM_485EditOpt)
   {

   case FSM_485EditOpt_RefSpeed:  Params = obj->StBoxHandle->FSM_RefSpeed[obj->FSM_485EditState]; break;
   case FSM_485EditOpt_CondValue: Params = obj->StBoxHandle->FSM_CondValue[obj->FSM_485EditState]; break;

   case FSM_485EditOpt_Condition: Params = (uint16_t)(obj->StBoxHandle->FSM_Condition[obj->FSM_485EditState]); break;

   case FSM_485EditOpt_RunAction: Params = (uint16_t)(obj->StBoxHandle->FSM_RunAction[obj->FSM_485EditState]); break;

   case FSM_485EditOpt_NextState: Params = (uint16_t)(obj->StBoxHandle->FSM_NextState[obj->FSM_485EditState]); break;
   default: break;

   }

   return (Params);
}


//===============================================================================
//                               State  Run Function
//===============================================================================
void FSM_Run_IDLE(FSM_Handle handle)
{
 // FSM_Obj *obj = (FSM_Obj *)handle;

  FSM_clrFlag_fsm(handle);
  FSM_setMotorRunFlag(handle, true);

  return;
}

void FSM_Run_STOP(FSM_Handle handle)
{

  FSM_clrMotorRunFlag(handle);
  FSM_setFlag_485Stop(handle);
  FSM_ReportResults(handle);

  return;
}

void FSM_Run_ReleaseDcBrake(FSM_Handle handle)
{
  FSM_Obj *obj = (FSM_Obj *)handle;

  obj->Flag_DcBrake = false;
  FSM_clrMotorRunFlag(handle);

  return;
}



#ifdef USE_SpinTAC
void FSM_RunVelocityMode(FSM_Handle handle)
{
  FSM_Obj *obj = (FSM_Obj *)handle;

  obj->StBoxHandle->FSM_NextState[Fsm_State_VelocityMode] = Fsm_State_NormWait;
  obj->motorHandle->MaxVel_krpm = _IQ(0.0);
  FSM_RunSpinTAC_Velocity(handle);

  return;
}

void FSM_SetPosStep(FSM_Handle handle)
{
  FSM_Obj *obj = (FSM_Obj *)handle;


  obj->motorHandle->PosStepInt_MRev = 1;
  obj->motorHandle->PosStepFrac_MRev = 0;
  obj->motorHandle->RunPositionProfile = true;

  return;

}
#endif

//===================== FSM input Interface (get Event) =====================================

void FSM_CheckKeySensor1(FSM_Handle handle)
{
  FSM_Obj *obj = (FSM_Obj *)handle;

#ifdef TMS320F28069
 if( GPIO_read(obj->halHandle->gpioHandle,(GPIO_Number_e)HAL_Gpio_KeySensor1))
  {
    obj->FSM_Event = FSM_Event_IDLE;
  }
  else
  {
    obj->FSM_Event = FSM_Event_Sensor0;
  }
#else

  //PORT_DATA_t Port1_tmp;
  //Port1_tmp = (obj->halHandle->pca955xHandle->PortData);

  if(HAL_readGpio(obj->halHandle, (GPIO_Number_e)HAL_Gpio_KeySensor1))
  {
    obj->FSM_Event = FSM_Event_IDLE;
  }
  else
  {
    obj->FSM_Event = FSM_Event_Sensor0;
  }
#endif

  return;
}

void FSM_CheckKeySensor2(FSM_Handle handle)
{
  FSM_Obj *obj = (FSM_Obj *)handle;


#ifdef TMS320F28069
 if( GPIO_read(obj->halHandle->gpioHandle,(GPIO_Number_e)HAL_Gpio_KeySensor2))
  {
    obj->FSM_Event = FSM_Event_IDLE;
  }
  else
  {
    obj->FSM_Event = FSM_Event_Sensor1;
  }
#else

  if(HAL_readGpio(obj->halHandle, (GPIO_Number_e)HAL_Gpio_KeySensor2))
  {
    obj->FSM_Event = FSM_Event_IDLE;
  }
  else
  {
    obj->FSM_Event = FSM_Event_Sensor1;
  }
#endif


  return;
}


void FSM_Check485Start(FSM_Handle handle)
{
  FSM_Obj *obj = (FSM_Obj *)handle;

  if(obj->Flag_485StartMotor)
  {
    obj->FSM_Event = FSM_Event_485Start;
  }
  else
  {
    obj->FSM_Event = FSM_Event_IDLE;
  }

  return;
}


void FSM_CheckAnalogSensor1(FSM_Handle handle)
{
  FSM_Obj *obj = (FSM_Obj *)handle;

  volatile _iq SensorError = 0;
  volatile _iq ObjecteValue = 0;


  ObjecteValue = _IQmpy(_IQ(0.01), (_iq)(obj->FSM_CondValue));
  SensorError = obj->motorHandle->Sensor0_Value - (_iq)(obj->FSM_CondValue);
  if(_IQabs(SensorError) < ObjecteValue)
  {
    obj->FSM_Event = FSM_Event_arrive_point;
  }
  else
  {
    obj->FSM_Event = FSM_Event_IDLE;
  }

  return;
}

void FSM_CheckAnalogSensor2(FSM_Handle handle)
{
  FSM_Obj *obj = (FSM_Obj *)handle;

  volatile _iq SensorError = 0;
  volatile _iq ObjecteValue = 0;

  ObjecteValue = _IQmpy(_IQ(0.01), (_iq)(obj->FSM_CondValue));
  SensorError = obj->motorHandle->Sensor1_Value - (_iq)(obj->FSM_CondValue);
  if(_IQabs(SensorError) < ObjecteValue)
  {
	  obj->FSM_Event = FSM_Event_arrive_point;
  }
  else
  {
	  obj->FSM_Event = FSM_Event_IDLE;
  }

  return;
}

void FSM_CheckContactSensor1(FSM_Handle handle)
{
  FSM_Obj *obj = (FSM_Obj *)handle;

  if(obj->motorHandle->Sensor0_Value < (_iq)(obj->FSM_CondValue))
  {
	  obj->motorHandle->Flag_ContactSensor = true;
	  obj->FSM_Event = FSM_Event_ContactSensor;
  }
  else
  {
	  obj->FSM_Event = FSM_Event_IDLE;
	  obj->motorHandle->Flag_ContactSensor = false;
  }

  return;
}

void FSM_CheckContactSensor2(FSM_Handle handle)
{
  FSM_Obj *obj = (FSM_Obj *)handle;

  if(obj->motorHandle->Sensor1_Value < (_iq)(obj->FSM_CondValue))
  {
	  obj->motorHandle->Flag_ContactSensor = true;
	  obj->FSM_Event = FSM_Event_ContactSensor;
  }
  else
  {
	  obj->FSM_Event = FSM_Event_IDLE;
	  obj->motorHandle->Flag_ContactSensor = false;
  }

  return;
}


void FSM_CheckMoveStatus(FSM_Handle handle)
{
  FSM_Obj *obj = (FSM_Obj *)handle;

#ifdef USE_SpinTAC
  ST_Obj *stObj = (ST_Obj *)(obj->stHandle);
  static bool Status= false;

  FSM_CheckTimes(handle);
  if(obj->FSM_Event == FSM_Event_MeetTime)
  {
	  Status = true;
  }
  else
  {
	  Status= false;
  }

  obj->FSM_Event = FSM_Event_IDLE;
  if(STPOSMOVE_getStatus(stObj->posMoveHandle) != ST_MOVE_IDLE)
  {
  	  Status = true;
  }

  if(STPOSMOVE_getStatus(stObj->posMoveHandle) == ST_MOVE_IDLE && (Status == true))
  {
	  Status = false;
      obj->FSM_Event = FSM_Event_MoveIdle;
  }


#else
  FSM_CheckTimes(handle);
  if(obj->FSM_Event == FSM_Event_MeetTime)
  {
     obj->FSM_Event = FSM_Event_MoveIdle;
  }
#endif

  return;

}


void FSM_CheckZeroSpeed(FSM_Handle handle)
{
  FSM_Obj *obj = (FSM_Obj *)handle;

  if(obj->motorHandle->Speed_krpm == _IQ(0.0))
  {
    obj->FSM_Event = FSM_Event_ZeroSpeed;
  }
  else
  {
    obj->FSM_Event = FSM_Event_IDLE;
  }

  return;

}

void FSM_CheckSpeed(FSM_Handle handle)
{
  FSM_Obj *obj = (FSM_Obj *)handle;
  _iq Delta_Speed = obj->motorHandle->Speed_krpm - obj->motorHandle->SpeedRef_krpm;

   if(_IQabs(Delta_Speed) <= _IQ(0.1))
   {
     obj->FSM_Event = FSM_Event_ArriveRefSpd;
   }
   else
   {
     obj->FSM_Event = FSM_Event_IDLE;
   }

  return;
}

void FSM_CheckTimes(FSM_Handle handle)
{
  FSM_Obj *obj = (FSM_Obj *)handle;

  if(obj->FSM_runTime >= obj->FSM_CondValue)
  {
    obj->FSM_Event = FSM_Event_MeetTime;
	FSM_RunTimeEnable(handle, false);
  }
  else
    obj->FSM_Event = FSM_Event_IDLE;

  return ;
}

//=================================== Error Event ==================================
//==================================================================================

inline void FSM_CheckBusVoltage(FSM_Handle handle)
{
  FSM_Obj *obj = (FSM_Obj *)handle;
  _iq Avage = obj->motorHandle->VdcBus_kV;

  if(Avage > _IQ(MAX_BUS_VOL))
  {
    obj->FSM_ErrFlg |= FSM_Error_OverVoltage;
  }
  else if(Avage < _IQ(MIN_BUS_VOL))
  {
    obj->FSM_ErrFlg |= FSM_Error_UnderVoltage;
  }


  return;
}

inline void FSM_CheckChipTemperature(FSM_Handle handle)
{
  FSM_Obj *obj = (FSM_Obj *)handle;
  _iq20 NTC_Temp;

  NTC_Temp = obj->motorHandle->ChipTemp;

  if((NTC_Temp > OVER_TEMP) && (NTC_Temp < MAX_CHIP_TEMP))
  {
    obj->FSM_ErrFlg |= FSM_Error_OverTemp;
  }

  return;
}

inline void FSM_CheckOverCurrent(FSM_Handle handle)
{
  FSM_Obj *obj = (FSM_Obj *)handle;

  if(HAL_readGpio(obj->halHandle, (GPIO_Number_e)HAL_Gpio_CpldOcOut))
  {
    obj->FSM_ErrFlg |= FSM_Error_OverCurrent;
  }

  return;
}

inline void FSM_CheckOverTimes(FSM_Handle handle)
{
  FSM_Obj *obj = (FSM_Obj *)handle;

  if(obj->FSM_runTime >= OVER_TIME)
  {
	obj->FSM_ErrFlg |= FSM_Error_OverTime;
	FSM_RunTimeEnable(handle, false);
  }

  return;
}

inline void FSM_CheckOverTorque(FSM_Handle handle)
{
  FSM_Obj *obj = (FSM_Obj *)handle;

  static _iq TorqueAvage = 0x00100000;
  static _iq TorqueSum = 0x01000000;

  TorqueSum += obj->motorHandle->Torque_Nm;
  TorqueSum -= TorqueAvage;
  TorqueAvage = TorqueSum >> 2;

  if(_IQabs(TorqueAvage) >= obj->MaxTorque_Nm)
  {
    obj->FSM_ErrFlg |= FSM_Error_StallError;
  }

  return;
}


inline void FSM_Check485Stop(FSM_Handle handle)
{
  FSM_Obj *obj = (FSM_Obj *)handle;

  if(obj->Flag_485StartMotor == false)
  {
    obj->FSM_ErrFlg |= FSM_Error_485Stop;
  }

  return;
}

inline void FSM_CheckEmgStop(FSM_Handle handle)
{
  FSM_Obj *obj = (FSM_Obj *)handle;

  if(HAL_readGpio(obj->halHandle, (GPIO_Number_e)HAL_Gpio_Stop_flag_in))
  {
	obj->FSM_ErrFlg |= FSM_Error_EMG;
  }

  return;
}


void FSM_CheckErrors(FSM_Handle handle)
{
  FSM_Obj *obj = (FSM_Obj *)handle;


  FSM_clrFlag_fsm(handle);

  FSM_Check485Stop(handle);

  FSM_CheckOverTimes(handle);

  //FSM_CheckOverTorque(handle);

  FSM_CheckEmgStop(handle);

  FSM_CheckOverCurrent(handle);

  FSM_CheckChipTemperature(handle);

  FSM_CheckBusVoltage(handle);

  if(obj->FSM_ErrFlg != FSM_Error_None)
  {
	obj->FSM_Trans = FSM_Trans_RetireState;
  }

  return ;
}

//==============================================================================
#ifdef USE_SpinTAC
void FSM_RunSpinTAC_Velocity(FSM_Handle handle)
{
  FSM_Obj *obj = (FSM_Obj *)handle;
  ST_Obj *stObj = (ST_Obj *)(obj->stHandle);

	// Run SpinTAC Position Profile Generator
	// If we are not running a profile, and the PosStep_MRev has been modified
	if(_IQmpy(obj->motorHandle->MaxVel_krpm, obj->motorHandle->Speed_Krpm_per_pu) != STPOSMOVE_getVelocityEnd(stObj->posMoveHandle)) {
		// Get the configuration for SpinTAC Velocity Profile Generator
		STPOSMOVE_setCurveType(stObj->posMoveHandle, obj->motorHandle->SpinTAC.PosMoveCurveType);
		STPOSMOVE_setProfileType(stObj->posMoveHandle, ST_POS_MOVE_VEL_TYPE);
		STPOSMOVE_setVelocityEnd(stObj->posMoveHandle, _IQmpy(obj->motorHandle->MaxVel_krpm, obj->motorHandle->Speed_Krpm_per_pu));
		STPOSMOVE_setAccelerationLimit(stObj->posMoveHandle, _IQmpy(obj->motorHandle->MaxAccel_krpmps, obj->motorHandle->Speed_Krpm_per_pu));
		STPOSMOVE_setDecelerationLimit(stObj->posMoveHandle, _IQmpy(obj->motorHandle->MaxDecel_krpmps, obj->motorHandle->Speed_Krpm_per_pu));
		STPOSMOVE_setJerkLimit(stObj->posMoveHandle, _IQ20mpy(obj->motorHandle->MaxJrk_krpmps2, _IQtoIQ20(obj->motorHandle->Speed_Krpm_per_pu)));
		// Enable the SpinTAC Position Profile Generator
		STPOSMOVE_setEnable(stObj->posMoveHandle, true);
	}

  return;

}

void FSM_RunSpinTAC_Position(FSM_Handle handle)
{
  FSM_Obj *obj = (FSM_Obj *)handle;
  ST_Obj *stObj = (ST_Obj *)(obj->stHandle);

	  // Run SpinTAC Position Profile Generator
	  // If we are not running a profile, and command indicates we should has been modified
	if((obj->motorHandle->RunPositionProfile == true)) {
		// Get the configuration for SpinTAC Position Move
		STPOSMOVE_setCurveType(stObj->posMoveHandle, obj->motorHandle->SpinTAC.PosMoveCurveType);
		STPOSMOVE_setPositionStep_mrev(stObj->posMoveHandle, obj->motorHandle->PosStepInt_MRev,  obj->motorHandle->PosStepFrac_MRev);
		STPOSMOVE_setVelocityLimit(stObj->posMoveHandle, _IQmpy(obj->motorHandle->MaxVel_krpm, obj->motorHandle->Speed_Krpm_per_pu));
		STPOSMOVE_setAccelerationLimit(stObj->posMoveHandle, _IQmpy(obj->motorHandle->MaxAccel_krpmps, obj->motorHandle->Speed_Krpm_per_pu));
		STPOSMOVE_setDecelerationLimit(stObj->posMoveHandle, _IQmpy(obj->motorHandle->MaxDecel_krpmps, obj->motorHandle->Speed_Krpm_per_pu));
		STPOSMOVE_setJerkLimit(stObj->posMoveHandle, _IQ20mpy(obj->motorHandle->MaxJrk_krpmps2, _IQtoIQ20(obj->motorHandle->Speed_Krpm_per_pu)));
		// Enable the SpinTAC Position Profile Generator
		STPOSMOVE_setEnable(stObj->posMoveHandle, true);
		// clear the position step command
		obj->motorHandle->PosStepInt_MRev = 0;
		obj->motorHandle->PosStepFrac_MRev = 0;
		obj->motorHandle->RunPositionProfile = false;
	  }
  return;
}
#endif


#ifdef USE_SpinTAC
void FSM_VelTransToPos(FSM_Handle handle)
{
  FSM_Obj *obj = (FSM_Obj *)handle;
  ST_Obj *stObj = (ST_Obj *)(obj->stHandle);
  const _iq  enc_to_Pos_sf = _IQ(2.5);

  STPOSMOVE_setEnable(stObj->posMoveHandle, false);
  STPOSMOVE_setProfileType(stObj->posMoveHandle, ST_POS_MOVE_POS_TYPE);
  STPOSMOVE_setEnable(stObj->posMoveHandle, true);
  STPOSMOVE_setPositionStart_mrev(stObj->posMoveHandle, STPOSCONV_getPosition_mrev(stObj->posConvHandle));

  _iq  ZeroPos_Offset = obj->motorHandle->Sensor0_Value - obj->motorHandle->ZeroPoint_Value;

  if(_IQabs(ZeroPos_Offset) > 10)
  {
	  ZeroPos_Offset <<= 14;
	  ZeroPos_Offset = _IQdiv(ZeroPos_Offset, enc_to_Pos_sf);
	  obj->motorHandle->PosStepInt_MRev = _IQint(ZeroPos_Offset) -1;
	  obj->motorHandle->PosStepFrac_MRev = _IQfrac(ZeroPos_Offset);
	  obj->motorHandle->RunPositionProfile = true;
  }
  else
  {
	  obj->motorHandle->PosStepInt_MRev =  -1;
	  obj->motorHandle->PosStepFrac_MRev = 0;
	  obj->motorHandle->RunPositionProfile = true;
  }

  obj->motorHandle->MaxVel_krpm = _IQ(0.1);
  obj->StBoxHandle->FSM_NextState[Fsm_State_NormWait] = Fsm_State_PositionMode1;



  return;
}

void FSM_CheckPosition(FSM_Handle handle)
{
  FSM_Obj *obj = (FSM_Obj *)handle;
  ST_Obj *stObj = (ST_Obj *)(obj->stHandle);

  const _iq  enc_to_Pos_sf = _IQ(2.5);
  //FSM_Event_e Event = FSM_Event_IDLE;
  _iq  ZeroPos_Offset = obj->motorHandle->Sensor0_Value - obj->motorHandle->ZeroPoint_Value;


  if(_IQabs(ZeroPos_Offset) > 10)
  {
	  ZeroPos_Offset <<= 14;
	  ZeroPos_Offset = _IQdiv(ZeroPos_Offset, enc_to_Pos_sf);
	  obj->StBoxHandle->FSM_NextState[Fsm_State_PositionMode2] = Fsm_State_PositionMode1;

	  obj->motorHandle->PosStepInt_MRev = _IQint(ZeroPos_Offset) -1;
	  obj->motorHandle->PosStepFrac_MRev = _IQfrac(ZeroPos_Offset);
	  obj->motorHandle->RunPositionProfile = true;
	  STPOSMOVE_setEnable(stObj->posMoveHandle, false);
	  //Event = FSM_Event_FindZeroPoint;
  }
  else
  {

	  obj->NewAbsPos.PosInt_MRev = 0;
	  obj->NewAbsPos.PosFrac_MRev = _IQ(0.0);
      obj->motorHandle->ZeroPoint_position =  STPOSCONV_getPosition_mrev(stObj->posConvHandle);
      obj->motorHandle->ZeroPoint_rollover = STPOSCONV_getPositionRollOver(stObj->posConvHandle);
      obj->motorHandle->Flag_ZeroPiont_Identify = true;

	  obj->StBoxHandle->FSM_NextState[Fsm_State_MotorFunc] = Fsm_State_PositionMode1;
	  obj->StBoxHandle->FSM_RunAction[Fsm_State_MotorFunc] = FSM_Action_calcRelativePos;
	  obj->StBoxHandle->FSM_NextState[Fsm_State_PositionMode1] = Fsm_State_STOP;
	  obj->StBoxHandle->FSM_RunAction[Fsm_State_PositionMode1] = FSM_Action_SetVelocity;
	  obj->StBoxHandle->FSM_NextState[Fsm_State_PositionMode2] = Fsm_State_STOP;
	  obj->StBoxHandle->FSM_RunAction[Fsm_State_PositionMode2] = FSM_Action_calcRelativePos;
  }


  //obj->FSM_Event = Event;
  return;

}

void FSM_calcSensorPos(FSM_Handle handle)
{
  FSM_Obj *obj = (FSM_Obj *)handle;
  const _iq  enc_to_Pos_sf = _IQ(2.5);
  ST_Obj *stObj = (ST_Obj *)(obj->stHandle);

  _iq  ZeroPos_Offset = obj->motorHandle->Sensor0_Value - obj->motorHandle->ZeroPoint_Value;

  if(_IQabs(ZeroPos_Offset) > 10)
  {
	  ZeroPos_Offset <<= 14;
	  ZeroPos_Offset = _IQdiv(ZeroPos_Offset, enc_to_Pos_sf);
	  obj->motorHandle->PosStepInt_MRev = _IQint(ZeroPos_Offset) -1;
	  obj->motorHandle->PosStepFrac_MRev = _IQfrac(ZeroPos_Offset);
	  obj->motorHandle->RunPositionProfile = true;
	  STPOSMOVE_setEnable(stObj->posMoveHandle, false);
  }
  else
  {
	  obj->motorHandle->PosStepInt_MRev =  -1;
	  obj->motorHandle->PosStepFrac_MRev = 0;
	  obj->motorHandle->RunPositionProfile = true;
	  STPOSMOVE_setEnable(stObj->posMoveHandle, false);
  }

  return;
}

void FSM_calcCoordinate(FSM_Handle handle)
{
  FSM_Obj *obj = (FSM_Obj *)handle;
  ST_Obj *stObj = (ST_Obj *)(obj->stHandle);

  _iq24     Temp_position;
  int32_t   Temp_rollover;

  _iq     current_position;
  int32_t current_rollover;

  current_position = STPOSCONV_getPosition_mrev(stObj->posConvHandle);
  current_rollover =  STPOSCONV_getPositionRollOver(stObj->posConvHandle);

  Temp_rollover = current_rollover - obj->motorHandle->ZeroPoint_rollover;
  Temp_position =  current_position - obj->motorHandle->ZeroPoint_position;

  obj->OldAbsPos.PosInt_MRev   = _IQint(Temp_position) + (int32_t)(2 * ST_MREV_ROLLOVER * Temp_rollover);
  obj->OldAbsPos.PosFrac_MRev  = _IQfrac(Temp_position);

  return;
}


void FSM_calcRelativePos(FSM_Handle handle)
{
  FSM_Obj *obj = (FSM_Obj *)handle;
  ST_Obj *stObj = (ST_Obj *)(obj->stHandle);

  STPOSMOVE_setEnable(stObj->posMoveHandle, false);
  obj->motorHandle->PosStepInt_MRev =  (obj->NewAbsPos.PosInt_MRev - obj->OldAbsPos.PosInt_MRev);
  obj->motorHandle->PosStepFrac_MRev = (obj->NewAbsPos.PosFrac_MRev - obj->OldAbsPos.PosFrac_MRev);
  obj->motorHandle->RunPositionProfile = true;

  return;
}


void FSM_RecordZeroPoint(FSM_Handle handle)
{
  FSM_Obj *obj = (FSM_Obj *)handle;
  ST_Obj *stObj = (ST_Obj *)(obj->stHandle);

   _iq Sensor_Error;

    Sensor_Error = (obj->motorHandle->Sensor0_Value - obj->motorHandle->ZeroPoint_Value);
    if(_IQabs(Sensor_Error) < 10)
 	 {
       obj->motorHandle->ZeroPoint_position =  STPOSCONV_getPosition_mrev(stObj->posConvHandle);
       obj->motorHandle->ZeroPoint_rollover = STPOSCONV_getPositionRollOver(stObj->posConvHandle);
     }

   return;
}

void FSM_CheckCoverSensor(FSM_Handle handle)
{
   FSM_Obj *obj = (FSM_Obj *)handle;
   ST_Obj *stObj = (ST_Obj *)(obj->stHandle);

   _iq Sensor_Error;
   Sensor_Error = obj->motorHandle->Sensor0_Value  - obj->motorHandle->ZeroPoint_Value;

   if(Sensor_Error < 300)
   {
	  STPOSMOVE_setProfileType(stObj->posMoveHandle, ST_POS_MOVE_POS_TYPE);
	  STPOSMOVE_setPositionStart_mrev(stObj->posMoveHandle, STPOSCONV_getPosition_mrev(stObj->posConvHandle));
	  obj->StBoxHandle->FSM_NextState[Fsm_State_MotorFunc] = Fsm_State_PositionMode1;
	  obj->motorHandle->PosStepInt_MRev =  -1;
	  obj->motorHandle->PosStepFrac_MRev = 0;

	  obj->motorHandle->MaxVel_krpm = _IQ(0.1);
	  obj->motorHandle->RunPositionProfile = true;
	  STPOSMOVE_setEnable(stObj->posMoveHandle, false);
   }
   else
   {
	  obj->motorHandle->MaxVel_krpm = _IQ(0.1);
	  obj->StBoxHandle->FSM_NextState[Fsm_State_MotorFunc] = Fsm_State_VelocityMode;
   }

   return;

}

#endif


//=========================================================================================

void FSM_ReportResults(FSM_Handle handle)
{
  FSM_Obj *obj = (FSM_Obj *)handle;

  HAL_setGpioHigh(obj->halHandle, (GPIO_Number_e)HAL_Gpio_RelayOpenOut);

  return;
}


void FSM_clrOverCurrentReg(FSM_Handle handle)
{
  FSM_Obj *obj = (FSM_Obj *)handle;

  if(!HAL_readGpio(obj->halHandle, (GPIO_Number_e)HAL_Gpio_Stop_flag_in))
  {
    HAL_setGpioLow(obj->halHandle, (GPIO_Number_e)HAL_Gpio_ShutDown);

    HAL_setGpioLow(obj->halHandle, (GPIO_Number_e)HAL_Gpio_DspClrOcOut_b);
    usDelay(US_TO_CNT(100));
    HAL_setGpioHigh(obj->halHandle, (GPIO_Number_e)HAL_Gpio_DspClrOcOut_b);
  }

  return;
}




//=================================================================================

//=================================================================================
void FSM_RunTrans(FSM_Handle handle)
{
  FSM_Obj *obj = (FSM_Obj *)handle;

  if(obj->FSM_Event == FSM_EventTab[obj->StBoxHandle->FSM_Condition[obj->FSM_State]])
  {
    obj->FSM_Trans = FSM_Trans_JumpState1;
  }
  else
  {
    obj->FSM_Trans = FSM_Trans_LoopForever;
  }

  if(obj->FSM_State != Fsm_State_STOP)
  {
    FSM_CheckErrors(handle);
  }

  return;
}

void FSM_RunConfig(FSM_Handle handle)
{
  FSM_Obj *obj = (FSM_Obj *)handle;

  if(obj->FSM_CurState != obj->FSM_State)
  {
    //FSM_setStallMode(handle, JM_StallMode[obj->FSM_StMode].FSM_StallMode);

    FSM_ResetRunTime(handle);
    FSM_RunTimeEnable(handle, true);

    if(obj->FSM_CurState == Fsm_State_Spinning && obj->FSM_State == Fsm_State_Reverse)
    {
      obj->StBoxHandle->FSM_RefSpeed[obj->FSM_State] = - (obj->StBoxHandle->FSM_RefSpeed[obj->FSM_CurState]);
    }

    if(obj->FSM_State == Fsm_State_MagneticBrake)
    {
    	obj->Flag_DcBrake = true;
    }

    obj->FSM_CurState = obj->FSM_State;
  }

  return;
}

void FSM_RunRetire(FSM_Handle handle)
{
  FSM_Obj *obj = (FSM_Obj *)handle;

  if(Fsm_State_Idle == obj->FSM_State)
  {
	FSM_setFlag_485Stop(handle);
 #ifdef USE_SpinTAC
   FSM_calcCoordinate(handle);
 #endif

   if(FSM_getFlag_fsm(handle) & FSM_Error_OverTime == FSM_Error_OverTime)
   {
	 FSM_ResetRunTime(handle);
	 FSM_RunTimeEnable(handle, true);
   }

   FSM_setNxtState(handle, Fsm_State_Idle);
 }
 else
   FSM_setNxtState(handle, Fsm_State_STOP);

  return;
}

void FSM_RunPolling(FSM_Handle handle)
{
  FSM_Obj *obj = (FSM_Obj *)handle;

  long SpeedData =0;

  SpeedData =  obj->StBoxHandle->FSM_RefSpeed[obj->FSM_State];

  FSM_setMotorRefSpeed(handle, (_iq)(SpeedData * 16777));

#ifdef USE_SpinTAC

  FSM_calcCoordinate(handle);

  if(obj->motorHandle->Flag_ZeroPiont_Identify == true)
  {
	  obj->motorHandle->MaxVel_krpm = obj->motorHandle->SpeedRef_krpm;
  }


  if(obj->FSM_State == Fsm_State_VelocityMode)
  {
	  FSM_RunSpinTAC_Velocity(handle);
  }
  else if(obj->FSM_State == Fsm_State_PositionMode1 || obj->FSM_State == Fsm_State_PositionMode2 )
  {
      FSM_RunSpinTAC_Position(handle);
  }

#endif


  return;
}

void FSM_SetVelocity(FSM_Handle handle)
{
  FSM_Obj *obj = (FSM_Obj *)handle;

  long SpeedData =0;

  SpeedData =  obj->StBoxHandle->FSM_RefSpeed[obj->FSM_State];

  FSM_setMotorRefSpeed(handle, (_iq)(SpeedData * 16777));

#ifdef USE_SpinTAC

  if(obj->motorHandle->Flag_ZeroPiont_Identify == true)
  {
	  obj->motorHandle->MaxVel_krpm = obj->motorHandle->SpeedRef_krpm;
  }

#endif

  return;
}

void FSM_Run(FSM_Handle handle)
{

  FSM_Obj *obj = (FSM_Obj *)handle;

  func_ptr_ret_t FSM_CheckEvent;
  func_ptr_ret_t FSM_RunActions;

  FSM_RunConfig(handle);

  FSM_CheckEvent = FSM_CondFunc[obj->StBoxHandle->FSM_Condition[obj->FSM_State]];
  obj->FSM_CondValue = obj->StBoxHandle->FSM_CondValue[obj->FSM_State];
  FSM_CheckEvent(handle);

  FSM_RunTrans(handle);

  switch(obj->FSM_Trans)
  {
	case FSM_Trans_RetireState: FSM_RunRetire(handle); break;
	case FSM_Trans_LoopForever: FSM_RunPolling(handle); break;

	case FSM_Trans_JumpState1:  FSM_RunActions = FSM_ActionFunc[obj->StBoxHandle->FSM_RunAction[obj->FSM_State]];
								FSM_RunActions(handle);
								FSM_setNxtState(handle, obj->StBoxHandle->FSM_NextState[obj->FSM_State]); break;
	case FSM_Trans_JumpState2: break;
	default: break;
  }

  return;

}





