/*************************************************************************
    > File Name: pca9555.c
    > Author: 
    > Mail: 
    > Created Time: Sat 08 Jul 2017 09:30:21 AM CST
 ************************************************************************/

#include "sw/drivers/drvic/pca9555.h"

PCA955x_Handle PCA955x_Init(void *pMemory,const size_t numBytes)
{
  PCA955x_Handle handle;
  
  if(numBytes < sizeof(PCA955x_Obj))
     return ((PCA955x_Handle)NULL);
  
  handle = (PCA955x_Handle)pMemory;

  PCA955x_resetRxTimeOut(handle);
  PCA955x_resetTxTimeOut(handle);

  return(handle);
}

void PCA955x_setI2cHandle(PCA955x_Handle handle, I2C_Handle i2cHandle)
{
  PCA955x_Obj *obj = (PCA955x_Obj *)handle;

  obj->i2cHandle = i2cHandle;

  return;
}

void PCA955x_WrData(PCA955x_Handle handle, PCA955x_RegName_e RegName, uint16_t data)
{
    PCA955x_Obj *obj = (PCA955x_Obj *)handle;
    static volatile uint16_t WaitTimeOut;

    while(I2C_isMasterBusy(obj->i2cHandle))
        I2C_MasterControl(obj->i2cHandle, I2C_Control_Stop, I2C_BitCount_8_Bits,0x01);


    // Send Address
    I2C_setMasterSlaveAddr(obj->i2cHandle, PCA955X_SLAVE_ADDR);
    I2C_MasterControl(obj->i2cHandle, I2C_Control_Single_TX, I2C_BitCount_8_Bits,0x02);
    I2C_enable(obj->i2cHandle);

    // Send Data1
    I2C_putData(obj->i2cHandle, ((uint16_t)RegName));
     
    // Wait Tx register Ready
    WaitTimeOut = 0;
    while((I2C_getStatus(obj->i2cHandle) & I2C_Status_Tx_Rdy) != I2C_Status_Tx_Rdy
            && (WaitTimeOut < 0x1fff))
    {
       if(++WaitTimeOut > 0x1ffe)
       {
          obj->TxTimeOut = true;
          return;
       }
    }

    I2C_putData(obj->i2cHandle, data);

    // Wait The data Transmit
    WaitTimeOut = 0;
    while((I2C_getStatus(obj->i2cHandle) & I2C_Status_Stop) != I2C_Status_Stop
            && (WaitTimeOut < 0x1fff))
    {
       if(++WaitTimeOut > 0x1ffe)
       {
          obj->TxTimeOut = true;
          return;
       }

    }

    return;
}

uint16_t PCA955x_RdData(PCA955x_Handle handle, PCA955x_RegName_e RegName)
{
    PCA955x_Obj *obj = (PCA955x_Obj *)handle;
    static volatile uint16_t WaitTimeOut;
    uint16_t pcaData;

    while(I2C_isMasterBusy(obj->i2cHandle))
            I2C_MasterControl(obj->i2cHandle, I2C_Control_Stop, I2C_BitCount_8_Bits,0x01);

    I2C_setMasterSlaveAddr(obj->i2cHandle, PCA955X_SLAVE_ADDR);
    I2C_MasterControl(obj->i2cHandle, I2C_Control_Single_TX, I2C_BitCount_8_Bits,0x01);
    I2C_enable(obj->i2cHandle);

    I2C_putData(obj->i2cHandle, (uint16_t)(RegName));

    WaitTimeOut = 0;
    while((I2C_getStatus(obj->i2cHandle) & I2C_Status_Tx_Rdy) != I2C_Status_Tx_Rdy
            && (WaitTimeOut < 0x1fff))
    {
       if(++WaitTimeOut > 0x1ffe)
       {
          obj->TxTimeOut = true;
          return 0;
       }

    }
    
    WaitTimeOut = 0;
    while(I2C_isMasterBusy(obj->i2cHandle) && (WaitTimeOut < 0x1fff))
    {
       if(++WaitTimeOut > 0x1ffe)
       {
          obj->TxTimeOut = true;
          return 0;
       }

    }

    I2C_setMasterSlaveAddr(obj->i2cHandle, PCA955X_SLAVE_ADDR);
    I2C_MasterControl(obj->i2cHandle, I2C_Control_Single_RX, I2C_BitCount_8_Bits,0x01);
    I2C_enable(obj->i2cHandle);

    
    WaitTimeOut = 0;
    while(I2C_isMasterBusy(obj->i2cHandle) && (WaitTimeOut < 0x1fff))
    {
       if(++WaitTimeOut > 0x1ffe)
       {
          obj->RxTimeOut = true;
          return 0;
       }

    }

    pcaData = I2C_getData(obj->i2cHandle);
   
    WaitTimeOut = 0;
    while((I2C_getStatus(obj->i2cHandle) & I2C_Status_Stop) != I2C_Status_Stop
            && (WaitTimeOut < 0x1fff))
    {
       if(++WaitTimeOut > 0x1ffe)
       {
          obj->RxTimeOut = true;
          return 0;
       }

    }

    return pcaData;

}

//void PCA955x_setStatus(PCA955x_Handle handle, PCA955x_StatusFlag_e status)
//{
//
//
//
//
//
//}
//
//void PCA955x_getStatus(PCA955x_Handle handle)
//{
//
//
//
//
//}

void PCA955x_Configure(PCA955x_Handle handle, PCA955x_PortNum_e PortNum, uint16_t Config)
{

  PCA955x_RegName_e pcaRegName;
  if(PortNum == PCA955x_PortNum_Port0)
    pcaRegName = PCA955x_RegName_Port0_Config;
  else
    pcaRegName = PCA955x_RegName_Port1_Config;

  PCA955x_WrData(handle, pcaRegName, Config);

  return;
}

void PCA955x_WriteCommand(PCA955x_Handle handle, PCA955x_PortNum_e PortNum, uint16_t Command)
{
  PCA955x_RegName_e pcaRegName;
  
  if(PortNum == PCA955x_PortNum_Port0)
    pcaRegName = PCA955x_RegName_Port0_OUT;
  else
    pcaRegName = PCA955x_RegName_Port1_OUT;

  PCA955x_WrData(handle, pcaRegName, Command);

  return;
}

uint16_t PCA955x_ReadStatus(PCA955x_Handle handle, PCA955x_PortNum_e PortNum)
{
  
  PCA955x_RegName_e pcaRegName;
  uint16_t pcaRegData;

  if(PortNum == PCA955x_PortNum_Port0)
    pcaRegName = PCA955x_RegName_Port0_IN;
  else
    pcaRegName = PCA955x_RegName_Port1_IN;

  pcaRegData = PCA955x_RdData(handle, pcaRegName);

  return pcaRegData;

}

void PCA955x_GetStatus(PCA955x_Handle handle, PCA955x_PortNum_e PortNum)
{
	PCA955x_Obj *obj = (PCA955x_Obj *)handle;
	uint16_t Pca955x_Port_Data;

	Pca955x_Port_Data = PCA955x_ReadStatus(handle,PortNum);

	if(PortNum == PCA955x_PortNum_Port0)
	{
	  obj->PortData.PORT0_SD = (Pca955x_Port_Data & PCA955x_Port0_SD);
	  obj->PortData.PORT0_RELAY_OPEN = (Pca955x_Port_Data & PCA955x_Port0_RELAY_OPEN);
	  obj->PortData.PORT0_CPLD_RST = (Pca955x_Port_Data & PCA955x_Port0_CPLD_RST);
	  obj->PortData.PORT0_CLR_OC = (Pca955x_Port_Data & PCA955x_Port0_CLR_OC);
	  obj->PortData.PORT0_LEDB = (Pca955x_Port_Data & PCA955x_Port0_LEDB);
	  obj->PortData.PORT0_LEDG = (Pca955x_Port_Data & PCA955x_Port0_LEDG);
	  obj->PortData.PORT0_LEDR = (Pca955x_Port_Data & PCA955x_Port0_LEDR);
	  obj->PortData.PORT0_LEDY = (Pca955x_Port_Data & PCA955x_Port0_LEDY);

	}
	else
	{
	  obj->PortData.PORT1_EMERG_STP  = (Pca955x_Port_Data & PCA955x_StatusFlag_EMERG_STP);
	  obj->PortData.PORT1_IGBT_OC = (Pca955x_Port_Data & PCA955x_StatusFlag_IGBT_OC);
	  obj->PortData.PORT1_IKCM_UV  = (Pca955x_Port_Data & PCA955x_StatusFlag_IKCM_UV);
	  obj->PortData.PORT1_RELAY_ON = (Pca955x_Port_Data & PCA955x_StatusFlag_RELAY_ON);
	  obj->PortData.PORT1_SENSOR0 = (Pca955x_Port_Data & PCA955x_StatusFlag_SENSOR0);
	  obj->PortData.PORT1_SENSOR1 = (Pca955x_Port_Data & PCA955x_StatusFlag_SENSOR1);

	}

  return;

}



