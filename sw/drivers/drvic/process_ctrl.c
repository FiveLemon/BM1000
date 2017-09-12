/*************************************************************************
	> File Name: process_ctrl.c
	> Author: 
	> Mail: 
	> Created Time: Sat 08 Jul 2017 09:35:56 AM CST
 ************************************************************************/


#include "sw/drivers/drvic/process_ctrl.h"




PROCTRL_Handle PROCTRL_init(void *pMemory,const size_t numBytes)
{

   PROCTRL_Handle handle;
   
   if(numBytes < sizeof(PROCTRL_Obj))
     return ((PROCTRL_Handle)NULL);

   handle = (PROCTRL_Handle)pMemory;

   return handle;

}

void PROCTRL_setHalHandle(PROCTRL_Handle handle, HAL_Handle halHandle)
{
  PROCTRL_Obj *obj = (PROCTRL_Obj *)handle;

  obj->halHandle = halHandle;

  return;
}



void PROCTRL_setParams(PROCTRL_Handle handle)
{

  PROCTRL_Obj *obj = (PROCTRL_Obj *)handle;

  obj->pca955xHandle = PCA955x_Init(&(obj->pca9555),sizeof(obj->pca9555));
  PCA955x_setI2cHandle(obj->pca955xHandle,obj->halHandle->i2cHandle);


#ifdef USE_LDC161x_A
  // initialize the ldc sensor and oled displayer
  obj->ldc161xHandle_a = LDC1612_init(&(obj->ldc1612_a), sizeof(obj->ldc1612_a));

  LDC161x_setI2cHandle(obj->ldc161xHandle_a, obj->halHandle->i2cHandle);
  LDC161x_setGpioHandle(obj->ldc161xHandle_a, obj->halHandle->gpioHandle);
  LDC161x_setSensorSerial(obj->ldc161xHandle_a->ldcHandle, LDC161x_Slave_Addr0);

  LDC161x_Kalman_init(obj->ldc161xHandle_a, LDC161x_Kalman_R, LDC161x_Kalman_Q);

  LDC161x_ResetSensor(obj->ldc161xHandle_a);
  LDC161x_setRcount(obj->ldc161xHandle_a->ldcHandle, 0x0, 0xffff);
  LDC161x_setSettleCnt(obj->ldc161xHandle_a->ldcHandle, 0x0, 0x000a);
  LDC161x_setClkDivs(obj->ldc161xHandle_a->ldcHandle, 0x0, 0x1001);
  LDC161x_setConfig(obj->ldc161xHandle_a->ldcHandle, 0x1c01);
  LDC161x_setMuxConfig(obj->ldc161xHandle_a->ldcHandle, 0x020c);
  
  LDC161x_writeRcount(obj->ldc161xHandle_a, LDC161x_ChNum_CH0);
  LDC161x_writeSettleCnt(obj->ldc161xHandle_a, LDC161x_ChNum_CH0);
  LDC161x_writeClkDivs(obj->ldc161xHandle_a, LDC161x_ChNum_CH0);
  LDC161x_writeConfig(obj->ldc161xHandle_a);
  LDC161x_writeMuxConfig(obj->ldc161xHandle_a);

#endif


#ifdef USE_LDC161x_B
  obj->ldc161xHandle_b = LDC1612_init(&(obj->ldc1612_b), sizeof(obj->ldc1612_b));
  LDC161x_setI2cHandle(obj->ldc161xHandle_b, obj->halHandle->i2cHandle);
  LDC161x_setGpioHandle(obj->ldc161xHandle_b, obj->halHandle->gpioHandle);
  LDC161x_setSensorSerial(obj->ldc161xHandle_b->ldcHandle, LDC161x_Slave_Addr1);

  LDC161x_ResetSensor(obj->ldc161xHandle_b);
  LDC161x_setRcount(obj->ldc161xHandle_b->ldcHandle, 0x0, 0xffff);
  LDC161x_setSettleCnt(obj->ldc161xHandle_b->ldcHandle, 0x0, 0x000a);
  LDC161x_setClkDivs(obj->ldc161xHandle_b->ldcHandle,0x0, 0x1001);
  LDC161x_setConfig(obj->ldc161xHandle_b->ldcHandle, 0x1c01);
  LDC161x_setMuxConfig(obj->ldc161xHandle_b->ldcHandle, 0x020c);
  
  LDC161x_writeRcount(obj->ldc161xHandle_b, LDC161x_ChNum_CH0);
  LDC161x_writeSettleCnt(obj->ldc161xHandle_b, LDC161x_ChNum_CH0);
  LDC161x_writeClkDivs(obj->ldc161xHandle_b, LDC161x_ChNum_CH0);
  LDC161x_writeConfig(obj->ldc161xHandle_b);
  LDC161x_writeMuxConfig(obj->ldc161xHandle_b);
#endif

 // obj->QPdecHandle = DECODER_Init(&(obj->QPdecoder),sizeof(obj->QPdecoder));
 // DECODER_setSpiHandle(obj->QPdecHandle,obj->halHandle->spiAHandle);


  PCA955x_Configure(obj->pca955xHandle, PCA955x_PortNum_Port0, 0x00);
  PCA955x_Configure(obj->pca955xHandle, PCA955x_PortNum_Port1, 0xff);
  PCA955x_WriteCommand(obj->pca955xHandle, PCA955x_PortNum_Port0, 0x50);
  PCA955x_WriteCommand(obj->pca955xHandle, PCA955x_PortNum_Port0, 0x5c);





#ifdef USE_OLED

  obj->oledHandle = OLED_Init(&(obj->OLED), sizeof(obj->OLED));
  OLED_setI2cHandle(obj->oledHandle, obj->halHandle->i2cHandle);

  OLED_RegInit(obj->oledHandle);
  OLED_Clear(obj->oledHandle);

#endif

}


/*
void PROCTRL_run(PROCTRL_Handle handle)
{
  PROCTRL_Obj *obj = (PROCTRL_Obj *)handle;
  PROCTRL_State_e Ctrl_State;
*/
/*
  PROCTRL_State_e Ctrl_State;
  PROCTRL_StateFlag_t Cur_flag;
  PROCTRL_MoVar_t  MotorVars;

  Ctrl_State = PROCTRL_getCurState(handle)
  Cur_flag = PROCTRL_getCurFalg(handle);
  MotorVars = PROCTRL_getMotorVars(handle);
*/
/*
  Ctrl_State = PROCTRL_getCurState(handle);

  switch(Ctrl_State)
  {

      case PROCTRL_State_IDLE:
               if(gMotorVars.Flag_RunState == true)
               {
            	 gMotorVars.Kp_spd = SPEED_KP;
            	 gMotorVars.Ki_spd = SPEED_KI;
            	 gMotorVars.MaxAccel_krpmps = MAXACCEL2;
            	 MotoRun_time = 0;
            	 //reset all flag

            	 obj->StateFlag.wait_second = false;

            	 obj->StateFlag.arrive_point_A = false;
            	 obj->StateFlag.arrive_point_B = false;
            	 obj->StateFlag.arrive_point_C = false;
            	 obj->StateFlag.arrive_point_D = false;

            	 //obj->StateFlag.set_stop_flag = false;
            	 S_CURVE_CurveRun_enable(ScurveHandle, false);

            	 if(obj->StateFlag.edit_mode_flag) // find the zero
            	 {
            	   gMotorVars.SpeedSet_krpm = BASESPEED_RUN;
                   MotoRun_time = 0;
            	   PROCTRL_setNxtState(handle, PROCTRL_State_EditLow);
            	 }
            	 else
            	 {
            		gMotorVars.SpeedSet_krpm = HIGHSPEED_RUN;
            		MotoRun_time = 0;

				    S_CURVE_setEndSpd(ScurveHandle, HIGHSPEED_RUN);
				    S_CURVE_setSreduction(ScurveHandle);
				    S_CURVE_setDirec(ScurveHandle, true);
				    S_CURVE_CurveRun_enable(ScurveHandle, true);

            		PROCTRL_setNxtState(handle, PROCTRL_State_NormHiSped);
            	 }
               }
               else
               {
                 if(proctrlHandle->StateFlag.SENSOR1_ON)
                 {
                 proctrlHandle->StateFlag.SENSOR1_ON = false;
            	 gMotorVars.Flag_enableRun = true;
                 gMotorVars.SpeedSet_krpm = BASESPEED_RUN;
                 PROCTRL_setNxtState(handle, PROCTRL_State_IDLE);
                 }
               }
           break;

      case PROCTRL_State_EditLow: // low speed arrive the ldc1612

    	        if(gMotorVars.Flag_RunState == true) //
                {
    	         if(obj->StateFlag.arrive_point_D)
    	         {

                    gMotorVars.SpeedSet_krpm = _IQ(0.0);
                    gMotorVars.MaxAccel_krpmps = MAXACCEL;
                    gMotorVars.Flag_enableRun = false;
                    Brake_run_freq =  _IQ(0.001);
                    BrakeCnt = 0;
                    PROCTRL_setNxtState(handle, PROCTRL_State_NormRegulate); // PROCTRL_State_NormStop
    	         }
    	         else
    	         {
                 #if (USE_ANALOG_SENSOR == 1)
					if((gAdcData.analogSensor2 < POINT_D_VALUE))
					{
						obj->StateFlag.arrive_point_D = true;
					}
                 #elif ( USE_ANALOG_SENSOR == 2)
					if((analogData > POINT_D_VALUE))
					{
						obj->StateFlag.arrive_point_D = true;
					}
                 #else
					if((obj->LdcData >= POINT_D_VALUE) && (obj->LdcData < LDC_MAX_VALUE))
					{
						obj->StateFlag.arrive_point_D = true;
					}
                 #endif
    	        	 PROCTRL_setNxtState(handle, PROCTRL_State_EditLow);
    	         }
                }
                else if(gMotorVars.Flag_RunState == false)
                  PROCTRL_setNxtState(handle, PROCTRL_State_IDLE);


           break;
      case PROCTRL_State_NormHiSped: //set motor high speed run xx second
           if(gMotorVars.Flag_RunState == true)
          {
        	  if(obj->StateFlag.arrive_point_C)
                {
                 gMotorVars.SpeedSet_krpm = LOWSPEED_RUN;
                 gMotorVars.MaxAccel_krpmps = MAXACCEL;
                 PROCTRL_setNxtState(handle, PROCTRL_State_NormDecle1);
                }
        	  else
        	  {
                 if(obj->RecoderValue >= POINT_C_VALUE)
                 {
                	 obj->StateFlag.arrive_point_C = true;
                	 S_CURVE_CurveRun_enable(ScurveHandle, false);
                 }
                 PROCTRL_setNxtState(handle, PROCTRL_State_NormHiSped);
        	  }
          }
                else if(gMotorVars.Flag_RunState == false)
                  PROCTRL_setNxtState(handle, PROCTRL_State_IDLE);

           break;

      case PROCTRL_State_NormDecle1: //set motor low speed run xx second
          if(gMotorVars.Flag_RunState == true)
          {
        	  if(obj->StateFlag.arrive_point_D)
                {
        		 gMotorVars.SpeedSet_krpm = _IQ(0.0);
        		 proctrlHandle->StateFlag.SENSOR1_ON = false;
                 gMotorVars.Flag_enableRun = false;
                 Brake_run_freq =  _IQ(0.001);
                 ref_Id = CTRL_getIq_ref_pu(ctrlHandle);
                 ref_Iq = _IQ(0.01);
                 BrakeCnt = 0;
                 PROCTRL_setNxtState(handle, PROCTRL_State_NormRegulate); //  PROCTRL_State_NormStop
                }
        	  else
        	  {
              #if (USE_ANALOG_SENSOR == 1)
        		 if((gAdcData.analogSensor2 < POINT_D_VALUE))
        		 {
        			 obj->StateFlag.arrive_point_D = true;
        		 }
              #elif (USE_ANALOG_SENSOR == 2)
        		 if((analogData > POINT_D_VALUE))
        		 {
        			 obj->StateFlag.arrive_point_D = true;
        		 }
              #else
        		 if((obj->LdcData >= POINT_D_VALUE) && (obj->LdcData < LDC_MAX_VALUE))
        		 {
        			 obj->StateFlag.arrive_point_D = true;
        		 }
              #endif
        		 PROCTRL_setNxtState(handle, PROCTRL_State_NormDecle1);
        	  }
          }
           else if(gMotorVars.Flag_RunState == false)
                  PROCTRL_setNxtState(handle, PROCTRL_State_IDLE);

           break;

      case PROCTRL_State_NormRegulate:
    	  if(gMotorVars.Flag_RunState == true)
    	  {
    		  PROCTRL_setNxtState(handle, PROCTRL_State_NormRegulate);
    	  }
    	  else
    	  {
           #if (USE_ANALOG_SENSOR == 1)
    		  if(gAdcData.analogSensor2 < POINT_E_VALUE)
    		  {
    			  Brake_run_freq = _IQ(0.0);
                  gMotorVars.SpeedSet_krpm = _IQ(0.0);
                  BrakeCnt = 0;
    			  PROCTRL_setNxtState(handle, PROCTRL_State_NormStop);
    		  }
    		  else
    		  {
    			  _iq LdcDataTmp;
    			  LdcDataTmp = (gAdcData.analogSensor2 - obj->LdcData);
    			  if(LdcDataTmp < 50)
    			  {
    				Brake_run_freq = _IQ(0.00035);
    			  }
    			  else
    				Brake_run_freq = _IQ(0.0005);
    			  if(ref_Id < _IQ(0.35))
    			    ref_Id += _IQ(0.001);
    		  }
          #elif (USE_ANALOG_SENSOR == 2)
    		  if(analogData > POINT_E_VALUE)
    		  {
    			  Brake_run_freq = _IQ(0.0);
                  gMotorVars.SpeedSet_krpm = _IQ(0.0);
                  BrakeCnt = 0;
    			  PROCTRL_setNxtState(handle, PROCTRL_State_NormStop);
    		  }
    		  else
    		  {
    			  _iq LdcDataTmp;
    			  LdcDataTmp = (POINT_E_VALUE - analogData);

    			  if(LdcDataTmp >= 150)
    			  {
      				Brake_run_freq = _IQ(0.0015);
    			  }
    			  else if(LdcDataTmp < 150)
    			  {
    				Brake_run_freq = _IQ(0.0010);
    			  }
    			  else if(LdcDataTmp < 100)
    			  {
    				Brake_run_freq = _IQ(0.0008);
    			  }
    			  else
    			  {
      				Brake_run_freq = _IQ(0.0005);
    			  }

    			  if(ref_Id < _IQ(0.35))
    			    ref_Id += _IQ(0.001);
    		  }
          #else
    		  if((obj->LdcData >= POINT_E_VALUE) && (obj->LdcData < LDC_MAX_VALUE))
    		  {
    			  Brake_run_freq = _IQ(0.0);
                  //ref_Id = _IQ(0.35);
                  //ref_Iq = _IQ(0.00);
    			  //Brake_run_freq =  _IQ(-0.00016);
                  gMotorVars.SpeedSet_krpm = _IQ(0.0);
                  BrakeCnt = 0;
    			  PROCTRL_setNxtState(handle, PROCTRL_State_NormStop);
    		  }
    		  else
    		  {
    			  _iq LdcDataTmp;
    			  LdcDataTmp = (POINT_E_VALUE - obj->LdcData);
    			  if(LdcDataTmp < 35000)
    			  {
    				Brake_run_freq = _IQ(0.00035);
    			  }
    			  else
    				Brake_run_freq = _IQ(0.0005);

    			  if(ref_Id < _IQ(0.35))
    			    ref_Id += _IQ(0.0005);


    		  }

          #endif

    	  }
    	  break;

      case PROCTRL_State_NormStop: //motor stop reset
                if(gMotorVars.Flag_RunState == true)
                {

                 gMotorVars.SpeedSet_krpm = _IQ(0.0);
                 gMotorVars.Flag_enableRun = false;
                 PROCTRL_setNxtState(handle, PROCTRL_State_NormStop);
                }
                else
                {

                  if(brake_enable == false)
                  {
     	          	if(proctrlHandle->StateFlag.SENSOR1_ON)
     	          	{
     	          	  uint32_t  DataTmp;
     	          	  uint16_t  i;
       	          	  obj->RecoderValue = 0;

       	          	  do{
          	          PCA955x_WriteCommand(obj->pca955xHandle, PCA955x_PortNum_Port0, 0xa4);
						for(i=0x00ff;i>0;i--)
						{
						  _nop();
						}
          	          PCA955x_WriteCommand(obj->pca955xHandle, PCA955x_PortNum_Port0, 0xac);
          	          DECODER_readReg(proctrlHandle->QPdecHandle,&DataTmp);
       	          	  }
          	          while((DataTmp != 8388608) && (DataTmp != 8388607));

       	              S_CURVE_setEndSpd(ScurveHandle, NEG_HIGHSPEED_RUN);
       	              S_CURVE_setSreduction(ScurveHandle);
       	              S_CURVE_setDirec(ScurveHandle, false);
       	              S_CURVE_CurveRun_enable(ScurveHandle, true);

      	          	  gMotorVars.Flag_enableRun = true;
                      //reset the decoder data
     	          	  gMotorVars.SpeedSet_krpm = NEG_HIGHSPEED_RUN;
     	          	  gMotorVars.MaxAccel_krpmps = MAXACCEL2;
     	          	  PROCTRL_setNxtState(handle, PROCTRL_State_NormReturn);
     	          	}

                  }
                  else{

                    if(BrakeCnt>= (USER_BREAK_TIME))
                 	{
                      brake_enable = false;
                 	  BrakeCnt = 0;
                    }
                  }
                }
           break;
      case PROCTRL_State_NormReturn: // motor return the origal point in C rpm
          if(gMotorVars.Flag_RunState == true)
          {
        	  if(obj->StateFlag.arrive_point_B)
                {
                 gMotorVars.SpeedSet_krpm = NEG_LOWSPEED_RUN;
                 gMotorVars.MaxAccel_krpmps = MAXACCEL1;
                 PROCTRL_setNxtState(handle, PROCTRL_State_NormDecle);

                }
        	  else
        	  {
                  if(obj->RecoderValue <= POINT_B_VALUE)
                  {
                 	 obj->StateFlag.arrive_point_B = true;
                 	 S_CURVE_CurveRun_enable(ScurveHandle, false);
                  }
                 PROCTRL_setNxtState(handle, PROCTRL_State_NormReturn);
        	  }
          }
          else if(gMotorVars.Flag_RunState == false)
                  PROCTRL_setNxtState(handle, PROCTRL_State_IDLE);

           break;
      case PROCTRL_State_NormDecle:  // find the point B in low speed
          if(gMotorVars.Flag_RunState == true)
          {
        	  if(obj->StateFlag.arrive_point_A)
                {

                 gMotorVars.SpeedSet_krpm = _IQ(0.0);
                 BrakeCnt = 0;
                 ref_Id = _IQ(0.1);
                 ref_Iq = _IQ(0.0);
                 PROCTRL_setNxtState(handle, PROCTRL_State_ReturnStop);

                }
        	  else
        	  {
        		  if((obj->RecoderValue <= POINT_A_VALUE))
        		  {
        			  obj->StateFlag.arrive_point_A = true;
        			  //S_CURVE_CurveRun_enable(ScurveHandle, false);
        		  }
        		  PROCTRL_setNxtState(handle, PROCTRL_State_NormDecle);
        	  }
          }
                else if(gMotorVars.Flag_RunState == false)
                  PROCTRL_setNxtState(handle, PROCTRL_State_IDLE);

           break;
      case PROCTRL_State_ReturnStop:  // motor run in 200rpm speed wait sensor
			 if(gMotorVars.Flag_RunState == true)
			 {
				  gMotorVars.SpeedSet_krpm = _IQ(0.0);
				  gMotorVars.Flag_enableRun = false;
				  Brake_run_freq = _IQ(0.0);
				  PROCTRL_setNxtState(handle, PROCTRL_State_ReturnStop);
			 }
			else if(gMotorVars.Flag_RunState == false)
			{
				if(brake_enable == false)
				{
				  MotoRun_time = 0;
				  PROCTRL_setNxtState(handle, PROCTRL_State_NormSate);
				}
                else{

                  if(BrakeCnt>= (USER_BREAK_TIME))
               	  {
                    brake_enable = false;
               	    BrakeCnt = 0;
                  }
                }
			}

           break;

      case PROCTRL_State_NormSate: // motor locked-rotor (stable torque)
          if(gMotorVars.Flag_RunState == true)
          {
        	  PROCTRL_setNxtState(handle, PROCTRL_State_IDLE);
          }
          else if(gMotorVars.Flag_RunState == false)
          {
        	  if(MotoRun_time >= WAIT_SECOND)
        	  {
        		 // gMotorVars.Flag_enableRun = true;
        		  obj->StateFlag.edit_mode_flag = false;
                  PROCTRL_setNxtState(handle, PROCTRL_State_IDLE);
        	  }

          }
           break;

      default:  PROCTRL_setNxtState(handle, PROCTRL_State_IDLE);
           break;

    }

   return;

}
*/

/*
_iq Analog_KalmanFilter(_iq DataIn)
{
    _iq x_Mid;
    _iq p_Mid;

    static _iq x_Last = 0;
    static _iq p_Last = 0;
    float Kg;

    x_Mid = x_Last;
    p_Mid = p_Last + Kalman_Q;

    Kg = (1.0 * p_Mid)/(p_Mid + Kalman_R);

    if(DataIn > x_Mid)
      x_Last = x_Mid + (_iq)(Kg * (DataIn - x_Mid));
    else
      x_Last = x_Mid - (_iq)(Kg * (x_Mid - DataIn));

    p_Last = p_Mid - (_iq)(Kg * p_Mid);


    return x_Last;
}
*/

/* Predict 预测

状态方程：
X(k)=A*X(k-1)+B*U(k)+W(k)

测量方程：
Z(k)=H*X(k)+V(k)

预测下一状态:
x(k/k-1)=A*X(k-1|k-1)+BU(k)，这里U(k)为0。 （1）

p表示covariances，误差协方差，当卡尔曼滤波稳定后，应该在一定范围内
P(k|k-1)=A*P(k-1|k-1)A' + Q    （2）

通过（1）式可以预测出现在的系统状态，是估计值。然后接下来需要收集现在状态的
测量值，结合预测值和测量值，可以得到现在状态k的最优化估算值x(k|k)：
x(k|k) = A*x(k|k-1)+Kg(k)(Z(k)-H*A*x(k|k-1))   (3)

Kg(k)为卡尔曼增益(Kalman Gain):
Kg(k) = P(k|k-1)H'/(H*P(k|k-1)H' + R)     (4)

我们的得到了k状态下的最优估计值x(k|k)。但是要让卡尔曼滤波器不断运行，
我们还要更新k状态下x(k|k)的covariance:
P(k|k)=(I-Kg(k)*H)*P(k|k-1)       (5)
*/
/*
_iq Analog_ReFilter(_iq DataIn)
{
    static _iq  Avage = 0x04000000;
    static _iq  Sum = 0x40000000;

    Sum += DataIn;
    Sum -= Avage;
    Avage = Sum >> 4;

    return Avage;
}
*/























