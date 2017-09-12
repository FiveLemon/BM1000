/*************************************************************************
    > File Name: pca9555.h
    > Author: 
    > Mail: 
    > Created Time: Sat 08 Jul 2017 09:30:29 AM CST
 ************************************************************************/

#ifndef _PCA9555_H
#define _PCA9555_H

#include "sw/drivers/i2c/src/32b/f28x/f2802x/i2c.h"


#ifdef __cplusplus 
extern "C" { 
#endif

#define  PCA955X_SLAVE_ADDR         0x20

typedef enum
{
  PCA955x_PortNum_Port0 = 0,
  PCA955x_PortNum_Port1

} PCA955x_PortNum_e;

typedef enum
{
   PCA955x_RegName_Port0_IN = 0x00,
   PCA955x_RegName_Port1_IN,
   PCA955x_RegName_Port0_OUT,
   PCA955x_RegName_Port1_OUT,
   PCA955x_RegName_Port0_PolarInv,
   PCA955x_RegName_Port1_PolarInv,
   PCA955x_RegName_Port0_Config,
   PCA955x_RegName_Port1_Config

} PCA955x_RegName_e;

typedef enum
{
  PCA955x_StatusFlag_IGBT_OC    = (1<<0), 
  PCA955x_StatusFlag_IKCM_UV    = (1<<1),
  PCA955x_StatusFlag_RELAY_ON   = (1<<2),
  PCA955x_StatusFlag_EMERG_STP  = (1<<5),
  PCA955x_StatusFlag_SENSOR0    = (1<<6),
  PCA955x_StatusFlag_SENSOR1    = (1<<7)

} PCA955x_StatusFlag_e;

typedef enum
{
  PCA955x_Port0_SD             = (1<<0),
  PCA955x_Port0_RELAY_OPEN     = (1<<1),
  PCA955x_Port0_CLR_OC         = (1<<2),
  PCA955x_Port0_CPLD_RST       = (1<<3),
  PCA955x_Port0_LEDR           = (1<<4),
  PCA955x_Port0_LEDY           = (1<<5),
  PCA955x_Port0_LEDG           = (1<<6),
  PCA955x_Port0_LEDB           = (1<<7)

} PCA955x_Port0Data_e;

typedef struct _PORT_DATA_t_
{
  bool  PORT0_SD;              //shut down
  bool  PORT0_RELAY_OPEN;      // relay open
  bool  PORT0_CLR_OC;          // clear over current
  bool  PORT0_CPLD_RST;        // cpld reset
  bool  PORT0_LEDR;            // red led (error or energcy stop)
  bool  PORT0_LEDY;            //orange led or yellow led (send data to master board)
  bool  PORT0_LEDG;            // green led (off : energcy stop)
  bool  PORT0_LEDB;            // blue led (motor have pwm signal)

  bool  PORT1_IGBT_OC;         // IGBT over current flag
  bool  PORT1_IKCM_UV;         // IGBT under voltage (15v)
  bool  PORT1_RELAY_ON;        // relay on flag (power on normal)
  bool  PORT1_EMERG_STP;       // energcy stop flag
  bool  PORT1_SENSOR0;         // ldc0851 or photoelectric switch senser
  bool  PORT1_SENSOR1;         // ldc0851 or photoelectric switch senser

} PORT_DATA_t;




//typedef struct _PCA955x_Reg_t_
//{
//  PCA955x_Reg_Port0,
//
//
//
//} PCA955x_Reg_t;



typedef struct _PCA955x_Obj_
{
  I2C_Handle       i2cHandle;  
  
  PORT_DATA_t      PortData;

  bool             RxTimeOut;
  bool             TxTimeOut;

} PCA955x_Obj;


typedef struct _PCA955x_Obj_ *PCA955x_Handle;

PCA955x_Handle PCA955x_Init(void *pMemory,const size_t numBytes);
void PCA955x_setI2cHandle(PCA955x_Handle handle, I2C_Handle i2cHandle);
void PCA955x_WrData(PCA955x_Handle handle, PCA955x_RegName_e RegName, uint16_t data);
uint16_t PCA955x_RdData(PCA955x_Handle handle, PCA955x_RegName_e RegName);
void PCA955x_Configure(PCA955x_Handle handle, PCA955x_PortNum_e PortNum, uint16_t Config);
void PCA955x_WriteCommand(PCA955x_Handle handle, PCA955x_PortNum_e PortNum, uint16_t Command);
uint16_t PCA955x_ReadStatus(PCA955x_Handle handle, PCA955x_PortNum_e PortNum);


inline void PCA955x_resetRxTimeOut(PCA955x_Handle handle)
{
  PCA955x_Obj *obj = (PCA955x_Obj *)handle;
  
  obj->RxTimeOut = false;

  return;
}

inline void PCA955x_resetTxTimeOut(PCA955x_Handle handle)
{
  PCA955x_Obj *obj = (PCA955x_Obj *)handle;
  
  obj->TxTimeOut = false;

  return;
}



#ifdef __cplusplus
}
#endif // extern "C"


#endif
