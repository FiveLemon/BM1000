/*************************************************************************
	> File Name: S_curve.c
	> Author: 
	> Mail: 
	> Created Time: Thu 20 Jul 2017 10:01:39 PM CST
 ************************************************************************/



#include "sw/drivers/drvic/S_curve.h"

S_CURVE_Handle S_CURVE_Init(void *pMemory, const size_t numBytes)
{
   S_CURVE_Handle handle;

    if(numBytes < sizeof(S_CURVE_Obj))
        return((S_CURVE_Handle)NULL);

    // assign the handle
    handle =  (S_CURVE_Handle)pMemory;


    return (handle);
}


void S_CURVE_setParams(S_CURVE_Handle handle, _iq max_accele, _iq curve_jerk)
{                       
   S_CURVE_Obj *obj = (S_CURVE_Obj *)handle;  

   S_CURVE_resetCounter_speed(handle);

   obj->max_accele = max_accele;
   obj->curve_jerk = curve_jerk;
   obj->curve_state = S_CURVE_IDLE;
   obj->set_speed  = _IQ(0.0);
   S_CURVE_setupAccDeltSpd(handle);


  return;
}


void S_CURVE_setSreduction(S_CURVE_Handle handle)
{
   S_CURVE_Obj *obj = (S_CURVE_Obj *)handle;
  
   _iq aa_tim;
   _iq tim_tmp;

   // Sr = 1/2 * Vmax*(Vmax/Amax + Amax/Jerk)
   // krpm* 1s = kr/60s * 1s = k/60 r
   aa_tim = _IQdiv(obj->max_accele, obj->curve_jerk);
   tim_tmp = _IQabs(_IQdiv(obj->end_speed, obj->max_accele));
   tim_tmp +=  aa_tim;

   //reduction distance >0  
   obj->reduc_dist =  _IQabs(_IQdiv2(_IQmpy(tim_tmp, obj->end_speed)));
   
   return;
}


void S_CURVE_setupAccDeltSpd(S_CURVE_Handle handle)
{
   S_CURVE_Obj *obj = (S_CURVE_Obj *)handle;
   _iq DeltSpd;
   _iq jerkTmp;
   _iq acceleTmp;

   acceleTmp = _IQmpy(obj->max_accele, obj->max_accele);
   jerkTmp = _IQmpy2(obj->curve_jerk);
   DeltSpd = _IQdiv(acceleTmp,jerkTmp);

   obj->accDeltSpd = _IQabs(DeltSpd);

   return;

}


_iq S_CURVE_getSpeed(S_CURVE_Handle handle, S_CURVE_Stages_e stage)
{

  S_CURVE_Obj *obj = (S_CURVE_Obj *)handle;
  _iq cal_speed;
  _iq speed_tmp;
  _iq counter;
  _iq counter_sqr;

  counter = _IQ(obj->curvePeriod_sec * obj->counter_speed);
  
  switch(stage)
  {
  //1. Vt = V0 + 1/2 * Jerk * t^2  $(0-t1)
  //   t1 = Amax/Jerk
    case S_CURVE_Speed_Stage1:
      counter_sqr = _IQmpy(counter, counter);
      speed_tmp = _IQmpy(obj->curve_jerk, counter_sqr);
      cal_speed = _IQdiv2(speed_tmp);
      cal_speed += obj->start_speed;
    break;
  
      //2. Vt = Vl + Amax * t  $(t1-t2) //-
      //   t2 = (Vm - Vl)/Amax
    case S_CURVE_Speed_Stage2:
      cal_speed = _IQmpy(obj->max_accele, counter);
      cal_speed +=  obj->Vl_speed;
    break;

      //3. Vt = Vm + Vl + 1/2 * Jerk * (t)^2 ) $(t2-t3)
    case S_CURVE_Speed_Stage3:
      //cal_speed = _IQDiv(_IQmpy2(obj->max_accele), obj->curve_jerk);
      cal_speed = obj->Vl_speed;
      cal_speed += obj->Vm_speed;
      counter = _IQdiv(obj->max_accele, obj->curve_jerk) - counter;
      counter_sqr = _IQmpy(counter, counter);
      speed_tmp = _IQmpy(obj->curve_jerk, counter_sqr);
      cal_speed -=  _IQdiv2(speed_tmp);
    break;

    case S_CURVE_Speed_Stage4: cal_speed = obj->end_speed; break;

    case S_CURVE_Speed_Stage5:
      cal_speed =  obj->end_speed;
      counter_sqr = _IQmpy(counter, counter);
      speed_tmp = _IQmpy(obj->curve_jerk, counter_sqr);
      cal_speed -= _IQdiv2(speed_tmp);
    break;

    //(counter - _IQdiv(obj->max_accele, obj->curve_jerk)
    case S_CURVE_Speed_Stage6:
      cal_speed =  obj->Vm_speed;
      speed_tmp = _IQmpy(obj->max_accele, counter);
      cal_speed -= speed_tmp;
    break;

    case S_CURVE_Speed_Stage7:
      counter = _IQdiv(obj->max_accele, obj->curve_jerk) - counter;
      counter_sqr = _IQmpy(counter, counter);
      speed_tmp = _IQmpy(obj->curve_jerk, counter_sqr);
      cal_speed = _IQdiv2(speed_tmp);

    default: break;
  }


  return cal_speed;
}

//  
void S_CURVE_runState(S_CURVE_Handle handle, _iq CurSpeed, _iq CurPos)
{
  S_CURVE_Obj *obj = (S_CURVE_Obj *)handle;

  switch(obj->curve_state)
  {
   case S_CURVE_IDLE: 
	if(obj->curveRun_flag)
	      S_CURVE_setNextState(handle, S_CURVE_Step1);
	else
	      S_CURVE_setNextState(handle, S_CURVE_IDLE);
        break;
   case S_CURVE_Step1:
		   S_CURVE_setupAccDeltSpd(handle);
		   S_CURVE_setVlspeed(handle);
		   S_CURVE_setVmspeed(handle);
		   S_CURVE_resetCounter_speed(handle);
		   obj->set_speed = S_CURVE_getSpeed(handle, S_CURVE_Speed_Stage1);
		   S_CURVE_setNextState(handle, S_CURVE_Step2);
        break;
   case S_CURVE_Step2:
	     if(CurSpeed < obj->Vl_speed)
	   {
	      S_CURVE_incrCounter_speed(handle);
	      obj->set_speed = S_CURVE_getSpeed(handle, S_CURVE_Speed_Stage1);
	      S_CURVE_setNextState(handle, S_CURVE_Step2);
	   }
	   else //(CurSpeed >= obj->Vl_speed)
	   {
	   S_CURVE_resetCounter_speed(handle);
	   obj->set_speed = S_CURVE_getSpeed(handle, S_CURVE_Speed_Stage2);
	   S_CURVE_setNextState(handle, S_CURVE_Step3);
	   }
        break;
   case S_CURVE_Step3:
	   if(CurSpeed < obj->Vm_speed)
	   {
	       S_CURVE_incrCounter_speed(handle);
	       obj->set_speed = S_CURVE_getSpeed(handle, S_CURVE_Speed_Stage2);
		   S_CURVE_setNextState(handle, S_CURVE_Step3);
	   }
	   else //(CurSpeed >= obj->Vm_speed)
	   {
	   S_CURVE_resetCounter_speed(handle);
	   obj->set_speed = S_CURVE_getSpeed(handle, S_CURVE_Speed_Stage3);
	   S_CURVE_setNextState(handle, S_CURVE_Step4);
	   }
        break;
   case S_CURVE_Step4:
	   if(CurSpeed < obj->end_speed)
	   {
            S_CURVE_incrCounter_speed(handle);
            obj->set_speed = S_CURVE_getSpeed(handle, S_CURVE_Speed_Stage3);
            S_CURVE_setNextState(handle, S_CURVE_Step4);
	   }
	   else //(CurSpeed >= obj->end_speed)
	   {
	   S_CURVE_resetCounter_speed(handle);
	   obj->set_speed = S_CURVE_getSpeed(handle, S_CURVE_Speed_Stage4);
	   S_CURVE_setNextState(handle, S_CURVE_Step5);
	   }
        break;
                      
   case S_CURVE_Step5:
	   if(CurPos <= obj->reduc_dist)
	   {
	   S_CURVE_resetCounter_speed(handle);
	   obj->set_speed = S_CURVE_getSpeed(handle, S_CURVE_Speed_Stage5);
	   S_CURVE_setNextState(handle, S_CURVE_Step6);
	   }
	   else
	   {
	   obj->set_speed = S_CURVE_getSpeed(handle, S_CURVE_Speed_Stage4);
	   S_CURVE_setNextState(handle, S_CURVE_Step5);
	   }
        break;
   case S_CURVE_Step6:
	   if(CurSpeed >= obj->Vm_speed)
	   {
	   S_CURVE_incrCounter_speed(handle);
	   obj->set_speed = S_CURVE_getSpeed(handle, S_CURVE_Speed_Stage5);
	   S_CURVE_setNextState(handle, S_CURVE_Step6);
	   }
	   else
	   {
	   S_CURVE_resetCounter_speed(handle);
	   obj->set_speed = S_CURVE_getSpeed(handle, S_CURVE_Speed_Stage6);
	   S_CURVE_setNextState(handle, S_CURVE_Step7);
	   }
        break;
   case S_CURVE_Step7:
	   if(CurSpeed >= obj->Vl_speed)
	   {
       S_CURVE_incrCounter_speed(handle);
	   obj->set_speed = S_CURVE_getSpeed(handle, S_CURVE_Speed_Stage6);
	   S_CURVE_setNextState(handle, S_CURVE_Step7);
	   }
	   else
	   {
	   S_CURVE_resetCounter_speed(handle);
	   obj->set_speed = S_CURVE_getSpeed(handle, S_CURVE_Speed_Stage7);
	   S_CURVE_setNextState(handle, S_CURVE_Step8);
	   }
        break;
   case S_CURVE_Step8:
	   if((CurSpeed >= _IQ(0.01)) && obj->reduc_dist >= 0.01)
	   {
	   S_CURVE_incrCounter_speed(handle);
	   obj->set_speed = S_CURVE_getSpeed(handle, S_CURVE_Speed_Stage7);
	   S_CURVE_setNextState(handle, S_CURVE_Step8);
	   }
	   else
	   {
	   S_CURVE_setNextState(handle, S_CURVE_IDLE);
	   S_CURVE_CurveRun_enable(handle, false);
	   }

        break;
   default: S_CURVE_setNextState(handle, S_CURVE_IDLE);  break;

  }



}














