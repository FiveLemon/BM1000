
#include <math.h>


// drivers
#include "sw/drivers/drvic/motor.h"



// **************************************************************************
// the function prototypes
//
//--------------------------------------------------------------------------
//
//--------------------------------------------------------------------------

MOTOR_Handle Motor_init(void *pMemory, const size_t numBytes)
{
	MOTOR_Handle handle;

   if(numBytes < sizeof(MOTOR_Obj))
	 return ((MOTOR_Handle)NULL);

   handle = (MOTOR_Handle)pMemory;

   return handle;
}

void MOTOR_CtrlVersion_Init(MOTOR_Handle handle)
{
  MOTOR_Obj *obj = (MOTOR_Obj *)handle;

  obj->CtrlVersion.rsvd = 0;
  obj->CtrlVersion.targetProc = CTRL_TargetProc_Unknown;
  obj->CtrlVersion.major = 0;
  obj->CtrlVersion.minor = 0;

  return;
}

void MOTOR_MotorVars_Init(MOTOR_Handle handle)
{
	MOTOR_Obj *obj = (MOTOR_Obj *)handle;

  obj->Flag_enableSys             = false;
  obj->Flag_Run_Identify          = false;
  obj->Flag_MotorIdentified       = false;
  obj->Flag_enableForceAngle      = true;
  obj->Flag_ZeroPiont_Identify    = false;
  obj->Flag_enableRsRecalc        = false;
  obj->Flag_enableUserParams      = true;
  obj->Flag_enableOffsetcalc      = true;
  obj->Flag_enablePowerWarp       = true;
  obj->Flag_enableSpeedCtrl       = true;
  obj->Flag_enableRun	          = false;
  obj->Flag_RunState	          = false;
  obj->Flag_enableFlyingStart	  = true;
  obj->Flag_ContactSensor         = false;

  obj->RunPositionProfile         = false;
  obj->getSensor                  = false;

#ifdef USE_SpinTAC
  obj->Flag_UseSpinTAC            = true;
#else
  obj->Flag_UseSpinTAC            = false;
#endif

  obj->Flag_MotorParamsEst        = false;

  obj->CtrlState = CTRL_State_Idle;
  obj->EstState  = EST_State_Idle;

  obj->UserErrorCode = USER_ErrorCode_NoError;

  obj->IdRef_A = _IQ(0.0);
  obj->IqRef_A = _IQ(0.0);
  obj->Ibrake_Ratio = _IQ(1.0);

  obj->SpeedRef_krpm =_IQ(0.1);

  obj->MaxAccel_krpmps = _IQ(5.0);
  obj->MaxDecel_krpmps = _IQ(5.0);
  obj->MaxJrk_krpmps2 = _IQ20(8.0);

  obj->Speed_krpm =_IQ(0.0);
  obj->OverModulation =_IQ(USER_MAX_VS_MAG_PU);
  obj->RsOnLineCurrent_A =_IQ(0.1 * 1.0);
  obj->MaxCurrentRatio_pu = _IQ(1.0);

//  obj->SvgenMaxModulation_ticks = 400;
  obj->Flux_Wb = _IQ(0.0);
  obj->Torque_Nm = _IQ(0.0);

  obj->MagnCurr_A = 0.0;
  obj->Rr_Ohm   = 0.0;
  obj->Rs_Ohm   = 0.0;
  obj->RsOnLine_Ohm =0.0;
  obj->Lsd_H = 0.0;
  obj->Lsq_H = 0.0;
  obj->Flux_VpHz =0.0;

  obj->Kp_spd = _IQ(0.0);
  obj->Ki_spd = _IQ(0.0);
  obj->Kp_Idq = _IQ(0.0);
  obj->Ki_Idq = _IQ(0.0);


  obj->Vd = _IQ(0.0);
  obj->Vq = _IQ(0.0);
  obj->Vs = _IQ(0.0);
  //obj->VsRef = _IQ(0.8 * USER_MAX_VS_MAG_PU);
  obj->VdcBus_kV = _IQ(0.0);

  obj->Id_A = _IQ(0.0);
  obj->Iq_A = _IQ(0.0);
  obj->Is_A = _IQ(0.0);

  obj->I_bias.value[0] = 0;
  obj->I_bias.value[1] = 0;
  obj->I_bias.value[2] = 0;

  obj->V_bias.value[0] = 0;
  obj->V_bias.value[1] = 0;
  obj->V_bias.value[2] = 0;


  //obj->IdSet_A = _IQ(0.0);
  //obj->IqSet_A = _IQ(0.0);
  //obj->IdRef_pu = _IQ(0.0);
  //obj->IqRef_pu = _IQ(0.0);


  obj->ZeroPoint_Value = 1900;


  return;
}


#ifdef USE_SpinTAC


void MOTOR_SpinTAC_Vars_Init(MOTOR_Handle handle)
{
	MOTOR_Obj *obj = (MOTOR_Obj *)handle;


	obj->SpinTAC.PosCtlStatus = ST_CTL_IDLE;                             //!< status of Position Controller (ST_PosCtl)
	obj->SpinTAC.InertiaEstimate_Aperkrpm = _IQ24(USER_SYSTEM_INERTIA);  //!< displays the inertia used by Position Controller (ST_PosCtl)
	obj->SpinTAC.FrictionEstimate_Aperkrpm =  _IQ24(USER_SYSTEM_FRICTION); //!< displays the friction used by Position Controller (ST_PosCtl)
	obj->SpinTAC.PosCtlBw_radps = _IQ20(USER_SYSTEM_BANDWIDTH);            //!< sets the tuning (Bw_radps) of the Position Controller (ST_PosCtl)
	obj->SpinTAC.PosCtlOutputMax_A = _IQ(obj->MaxCurr_A);         //!< sets the maximum amount of current the Position Controller (ST_PosCtl) will supply as Iq reference
	obj->SpinTAC.PosCtlOutputMin_A = -_IQ(obj->MaxCurr_A);         //!< sets the minimum amount of current the Position Controller (ST_PosCtl) will supply as Iq reference
	obj->SpinTAC.PosCtlErrorID = 0;             //!< displays the error seen by Position Controller (ST_PosCtl)
	obj->SpinTAC.PosMoveStatus = ST_MOVE_IDLE;             //!< status of Position Move (ST_PosMove)
	obj->SpinTAC.PosMoveCurveType = ST_MOVE_CUR_STCRV;          //!< selects the curve type used by Position Move (ST_PosMove)
	obj->SpinTAC.PosMoveTime_ticks = 0;         //!< Amount of time profile will take within 1 million ticks (ST_PosMove)
	obj->SpinTAC.PosMoveTime_mticks = 0;        //!< Profile time million tick part value, together with ProTime_tick to present the total amount of time (ST_PosMove)
	obj->SpinTAC.PosMoveErrorID = 0;            //!< displays the error seen by Position Move (ST_PosMove)
	obj->SpinTAC.PosPlanRun = ST_PLAN_STOP;                //!< contols the operation of Position Plan (ST_PosPlan)
	obj->SpinTAC.PosPlanStatus = ST_PLAN_IDLE;             //!< status of Position Plan (ST_PosPlan)
	obj->SpinTAC.PosPlanErrorID = 0;            //!< displays the error seen by Position Plan (ST_PosPlan)
	obj->SpinTAC.PosPlanCfgErrorIdx = 0;        //!< displays which index caused a configuration error in Position Plan (ST_PosPlan)
    obj->SpinTAC.PosPlanCfgErrorCode = 0;       //!< displays the specific configuration error in Position Plan (ST_PosPlan)
    obj->SpinTAC.PosConvErrorID = 0;           //!< displays the error seen by the Position Converter (ST_PosConv)


    obj->PosStepInt_MRev = 0;
    obj->PosStepFrac_MRev = _IQ(0.0);
    obj->PositionError_MRev = _IQ(0.0);
    obj->MaxVel_krpm = _IQ(0.1);


    obj->ZeroPoint_position = _IQ(0.0);
    obj->ZeroPoint_rollover = 0;




}

#endif


void MOTOR_getMaxCurrent(MOTOR_Handle handle, USER_Params *pUserParams)
{
	MOTOR_Obj *obj = (MOTOR_Obj *)handle;
	obj->MaxCurr_A = pUserParams->maxCurrent;
}


uint16_t MOTOR_getMotorFlag(MOTOR_Handle handle)
{
	MOTOR_Obj *obj = (MOTOR_Obj *)handle;

  uint16_t MotorFlag =0;
  //uint16_t cnt;

  if(obj->Flag_enableSys == true)
	MotorFlag += MOTOR_Flag_enableSys;
  if(obj->Flag_Run_Identify == true)
	MotorFlag += MOTOR_Flag_Run_Identify;
  if(obj->Flag_MotorIdentified == true)
	  MotorFlag += MOTOR_Flag_MotorIdentified;
  if(obj->Flag_enableForceAngle == true)
	  MotorFlag += MOTOR_Flag_enableForceAngle;
  if(obj->Flag_ZeroPiont_Identify == true)
	  MotorFlag += MOTOR_Flag_ZeroPiont_Identify;
  if(obj->Flag_enableRsRecalc == true)
	  MotorFlag += MOTOR_Flag_enableRsRecalc;
  if(obj->Flag_enableUserParams == true)
	  MotorFlag += MOTOR_Flag_enableUserParams;
  if(obj->Flag_enableOffsetcalc == true)
	  MotorFlag += MOTOR_Flag_enableOffsetcalc;
  if(obj->Flag_enablePowerWarp == true)
	  MotorFlag += MOTOR_Flag_enablePowerWarp;
  if(obj->Flag_enableSpeedCtrl == true)
	  MotorFlag += MOTOR_Flag_enableSpeedCtrl;
  if(obj->Flag_enableRun == true)
	  MotorFlag += MOTOR_Flag_enableRun;
  if(obj->Flag_RunState == true)
	  MotorFlag += MOTOR_Flag_RunState;
  if(obj->Flag_enableFlyingStart == true)
	  MotorFlag += MOTOR_Flag_enableFlyingStart;

  return (MotorFlag);
}

void MOTOR_setMotorFlag(MOTOR_Handle handle, const uint16_t MotorFlag)
{
	MOTOR_Obj *obj = (MOTOR_Obj *)handle;
  uint16_t cnt;

  for(cnt=0; cnt<MOTOR_FlagNumber; cnt++ )
  {
	switch(MotorFlag & (0x01 << cnt))
	{
      case MOTOR_Flag_enableSys: obj->Flag_enableSys = true; break;
      case MOTOR_Flag_Run_Identify: obj->Flag_Run_Identify = true; break;
      case MOTOR_Flag_MotorIdentified: obj->Flag_MotorIdentified = true; break;
      case MOTOR_Flag_enableForceAngle: obj->Flag_enableForceAngle = true; break;
     // case MOTOR_Flag_enableFieldWeakening: obj->Flag_ZeroPiont_Identify = true; break;
      case MOTOR_Flag_enableRsRecalc: obj->Flag_enableRsRecalc = true; break;
      case MOTOR_Flag_enableUserParams: obj->Flag_enableUserParams = true; break;
      case MOTOR_Flag_enableOffsetcalc: obj->Flag_enableOffsetcalc = true; break;
      case MOTOR_Flag_enablePowerWarp: obj->Flag_enablePowerWarp = true; break;
      case MOTOR_Flag_enableSpeedCtrl: obj->Flag_enableSpeedCtrl = true; break;
      case MOTOR_Flag_enableRun: obj->Flag_enableRun = true; break;
      case MOTOR_Flag_RunState: obj->Flag_RunState = true; break;
      case MOTOR_Flag_enableFlyingStart: obj->Flag_enableFlyingStart = true; break;
      default: break;
	}

	switch((~MotorFlag) & (0x01 << cnt))
	{
      case MOTOR_Flag_enableSys: obj->Flag_enableSys = false; break;
      case MOTOR_Flag_Run_Identify: obj->Flag_Run_Identify = false; break;
      case MOTOR_Flag_MotorIdentified: obj->Flag_MotorIdentified = false; break;
      case MOTOR_Flag_enableForceAngle: obj->Flag_enableForceAngle = false; break;
     // case MOTOR_Flag_enableFieldWeakening: obj->Flag_enableFieldWeakening = false; break;
      case MOTOR_Flag_enableRsRecalc: obj->Flag_enableRsRecalc = false; break;
      case MOTOR_Flag_enableUserParams: obj->Flag_enableUserParams = false; break;
      case MOTOR_Flag_enableOffsetcalc: obj->Flag_enableOffsetcalc = false; break;
      case MOTOR_Flag_enablePowerWarp: obj->Flag_enablePowerWarp = false; break;
      case MOTOR_Flag_enableSpeedCtrl: obj->Flag_enableSpeedCtrl = false; break;
      case MOTOR_Flag_enableRun: obj->Flag_enableRun = false; break;
      case MOTOR_Flag_RunState: obj->Flag_RunState = false; break;
      case MOTOR_Flag_enableFlyingStart: obj->Flag_enableFlyingStart = false; break;
      default: break;
	}

  }

  return;
}






















// end of file

