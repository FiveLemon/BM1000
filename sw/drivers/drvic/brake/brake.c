#include "sw/modules/brake/src/brake.h"
#include "hal.h"
#include "user.h"



BRAKE_Handle Brake_init(void *pMemory,const size_t numBytes)
{

	BRAKE_Handle BrakeHandle;

    if(numBytes < sizeof(BRAKE_Obj))
    return((BRAKE_Handle)NULL);

    // assign the handle
    BrakeHandle = (BRAKE_Handle)pMemory;

    BrakeHandle->pidHandle_Ibrake = PID_init(&(BrakeHandle->pid_Ibrake),sizeof(BrakeHandle->pid_Ibrake));

    return (BrakeHandle);
}


void Brake_run(BRAKE_Handle handle,HAL_Handle halHandle,
        const HAL_AdcData_t *pAdcData,
        HAL_PwmData_t *pPwmData)
{

    if(Brake_getFlag_enableCtrl(handle))
    {
	  Brake_run_online(handle,pAdcData,pPwmData);
    }

}



void Brake_setGains(BRAKE_Handle handle, const _iq Kp,const _iq Ki,const _iq Kd)
{

  BRAKE_setKp(handle,Kp);
  BRAKE_setKi(handle,Ki);
  BRAKE_setKd(handle,Kd);

  return;
} // end of Brake_setGains() function



void Brake_Setup(BRAKE_Handle handle)
{
	BRAKE_Obj *obj = (BRAKE_Obj *)handle;

	_iq Kp,Ki,Kd;
	_iq Motor_Rated_I;
	_iq current_sf;
	_iq ref_current;


	  Ki = _IQ(0.001);
	  Kp = _IQ(1.0);
      Kd = _IQ(0.0);
      current_sf = _IQ(USER_CURRENT_SF);
      Motor_Rated_I = _IQ(0.10);

      Brake_setCurrent_rate_pu(handle,Motor_Rated_I);
      Brake_setCurrent_Rate(handle, _IQ(0.75));

      //current_A = _IQmpy(obj->Irated , current_sf);

      ref_current = _IQmpy(Motor_Rated_I, obj->current_rate);

	  Brake_setCurrent_ref_pu(handle, ref_current);

	  Brake_setGains(handle,Kp,Ki,Kd);
	  PID_setGains(obj->pidHandle_Ibrake, Kp,Ki,Kd);
    return;
}

/*
void BRAKE_run(CTRL_Handle handle,
        const HAL_AdcData_t *pAdcData,HAL_PwmData_t *pPwmData, _iq angle_pu)
{
	  CTRL_Obj *obj = (CTRL_Obj *)handle;

	 // _iq angle_pu;

	  MATH_vec2 phasor;

	 // run Clarke transform on current
	 CLARKE_run(obj->clarkeHandle_I,&pAdcData->I,CTRL_getIab_in_addr(handle));

	 // run Clarke transform on voltage
	 CLARKE_run(obj->clarkeHandle_V,&pAdcData->V,CTRL_getVab_in_addr(handle));

	 // generate the motor electrical angle
	 //angle_pu = EST_getAngle_pu(obj->estHandle);

	 // compute the sin/cos phasor
	 CTRL_computePhasor(angle_pu,&phasor);

	 // set the phasor in the Park transform
	 PARK_setPhasor(obj->parkHandle,&phasor);

	 // run the Park transform
	 PARK_run(obj->parkHandle,CTRL_getIab_in_addr(handle),CTRL_getIdq_in_addr(handle));


     _iq Kp_Id = CTRL_getKp(handle,CTRL_Type_PID_Id);
     _iq Kp_Iq = CTRL_getKp(handle,CTRL_Type_PID_Iq);
	 _iq refValue;
	 _iq fbackValue;
	 _iq outMin,outMax;

     // ***********************************
     // configure and run the Id controller

     PID_setKp(obj->pidHandle_Id,Kp_Id);
     // get the feedback value
     fbackValue = CTRL_getId_in_pu(handle);
     refValue   = ref_Id;//CTRL_getId_ref_pu(handle);


     _iq maxVsMag = CTRL_getMaxVsMag_pu(handle);

     // set minimum and maximum for Id controller output
     outMax = maxVsMag;
     outMin = -outMax;

     // set the minimum and maximum values
     PID_setMinMax(obj->pidHandle_Id,outMin,outMax);

     // run the Id PID controller
     PID_run(obj->pidHandle_Id,refValue,fbackValue,CTRL_getVd_out_addr(handle));

     // ***********************************
     // configure and run the Iq controller
     PID_setKp(obj->pidHandle_Iq,Kp_Iq);

     // get the feedback value
     fbackValue = CTRL_getIq_in_pu(handle);

     refValue = ref_Iq; //CTRL_getIq_ref_pu(handle);

     // generate the Iq PID output limits without square root
     outMax = maxVsMag - _IQabs(CTRL_getVd_out_pu(handle));
     outMin = -outMax;

     // set the minimum and maximum values
     PID_setMinMax(obj->pidHandle_Iq,outMin,outMax);

     // run the Iq PID controller
     PID_run(obj->pidHandle_Iq,refValue,fbackValue,CTRL_getVq_out_addr(handle));

	// set the phasor in the inverse Park transform
	IPARK_setPhasor(obj->iparkHandle,&phasor);


	// run the inverse Park module
	IPARK_run(obj->iparkHandle,CTRL_getVdq_out_addr(handle),CTRL_getVab_out_addr(handle));


	// run the space Vector Generator (SVGEN) module
	SVGEN_run(obj->svgenHandle,CTRL_getVab_out_addr(handle),&(pPwmData->Tabc));

	return;
} // end of CTRL_runOnLine() function
*/

