
/* ----------------------- System includes ----------------------------------*/
#include "sw/drivers/drvic/modbus/mb.h"
#include "stdlib.h"
#include "string.h"


const unsigned char  aucCRCHi[] = {
    0x00, 0xC1, 0x81, 0x40, 0x01, 0xC0, 0x80, 0x41, 0x01, 0xC0, 0x80, 0x41,
    0x00, 0xC1, 0x81, 0x40, 0x01, 0xC0, 0x80, 0x41, 0x00, 0xC1, 0x81, 0x40,
    0x00, 0xC1, 0x81, 0x40, 0x01, 0xC0, 0x80, 0x41, 0x01, 0xC0, 0x80, 0x41,
    0x00, 0xC1, 0x81, 0x40, 0x00, 0xC1, 0x81, 0x40, 0x01, 0xC0, 0x80, 0x41,
    0x00, 0xC1, 0x81, 0x40, 0x01, 0xC0, 0x80, 0x41, 0x01, 0xC0, 0x80, 0x41,
    0x00, 0xC1, 0x81, 0x40, 0x01, 0xC0, 0x80, 0x41, 0x00, 0xC1, 0x81, 0x40,
    0x00, 0xC1, 0x81, 0x40, 0x01, 0xC0, 0x80, 0x41, 0x00, 0xC1, 0x81, 0x40,
    0x01, 0xC0, 0x80, 0x41, 0x01, 0xC0, 0x80, 0x41, 0x00, 0xC1, 0x81, 0x40,
    0x00, 0xC1, 0x81, 0x40, 0x01, 0xC0, 0x80, 0x41, 0x01, 0xC0, 0x80, 0x41,
    0x00, 0xC1, 0x81, 0x40, 0x01, 0xC0, 0x80, 0x41, 0x00, 0xC1, 0x81, 0x40,
    0x00, 0xC1, 0x81, 0x40, 0x01, 0xC0, 0x80, 0x41, 0x01, 0xC0, 0x80, 0x41,
    0x00, 0xC1, 0x81, 0x40, 0x00, 0xC1, 0x81, 0x40, 0x01, 0xC0, 0x80, 0x41,
    0x00, 0xC1, 0x81, 0x40, 0x01, 0xC0, 0x80, 0x41, 0x01, 0xC0, 0x80, 0x41,
    0x00, 0xC1, 0x81, 0x40, 0x00, 0xC1, 0x81, 0x40, 0x01, 0xC0, 0x80, 0x41,
    0x01, 0xC0, 0x80, 0x41, 0x00, 0xC1, 0x81, 0x40, 0x01, 0xC0, 0x80, 0x41,
    0x00, 0xC1, 0x81, 0x40, 0x00, 0xC1, 0x81, 0x40, 0x01, 0xC0, 0x80, 0x41,
    0x00, 0xC1, 0x81, 0x40, 0x01, 0xC0, 0x80, 0x41, 0x01, 0xC0, 0x80, 0x41,
    0x00, 0xC1, 0x81, 0x40, 0x01, 0xC0, 0x80, 0x41, 0x00, 0xC1, 0x81, 0x40,
    0x00, 0xC1, 0x81, 0x40, 0x01, 0xC0, 0x80, 0x41, 0x01, 0xC0, 0x80, 0x41,
    0x00, 0xC1, 0x81, 0x40, 0x00, 0xC1, 0x81, 0x40, 0x01, 0xC0, 0x80, 0x41,
    0x00, 0xC1, 0x81, 0x40, 0x01, 0xC0, 0x80, 0x41, 0x01, 0xC0, 0x80, 0x41,
    0x00, 0xC1, 0x81, 0x40
};

const  unsigned char aucCRCLo[] = {
    0x00, 0xC0, 0xC1, 0x01, 0xC3, 0x03, 0x02, 0xC2, 0xC6, 0x06, 0x07, 0xC7,
    0x05, 0xC5, 0xC4, 0x04, 0xCC, 0x0C, 0x0D, 0xCD, 0x0F, 0xCF, 0xCE, 0x0E,
    0x0A, 0xCA, 0xCB, 0x0B, 0xC9, 0x09, 0x08, 0xC8, 0xD8, 0x18, 0x19, 0xD9,
    0x1B, 0xDB, 0xDA, 0x1A, 0x1E, 0xDE, 0xDF, 0x1F, 0xDD, 0x1D, 0x1C, 0xDC,
    0x14, 0xD4, 0xD5, 0x15, 0xD7, 0x17, 0x16, 0xD6, 0xD2, 0x12, 0x13, 0xD3,
    0x11, 0xD1, 0xD0, 0x10, 0xF0, 0x30, 0x31, 0xF1, 0x33, 0xF3, 0xF2, 0x32,
    0x36, 0xF6, 0xF7, 0x37, 0xF5, 0x35, 0x34, 0xF4, 0x3C, 0xFC, 0xFD, 0x3D,
    0xFF, 0x3F, 0x3E, 0xFE, 0xFA, 0x3A, 0x3B, 0xFB, 0x39, 0xF9, 0xF8, 0x38,
    0x28, 0xE8, 0xE9, 0x29, 0xEB, 0x2B, 0x2A, 0xEA, 0xEE, 0x2E, 0x2F, 0xEF,
    0x2D, 0xED, 0xEC, 0x2C, 0xE4, 0x24, 0x25, 0xE5, 0x27, 0xE7, 0xE6, 0x26,
    0x22, 0xE2, 0xE3, 0x23, 0xE1, 0x21, 0x20, 0xE0, 0xA0, 0x60, 0x61, 0xA1,
    0x63, 0xA3, 0xA2, 0x62, 0x66, 0xA6, 0xA7, 0x67, 0xA5, 0x65, 0x64, 0xA4,
    0x6C, 0xAC, 0xAD, 0x6D, 0xAF, 0x6F, 0x6E, 0xAE, 0xAA, 0x6A, 0x6B, 0xAB,
    0x69, 0xA9, 0xA8, 0x68, 0x78, 0xB8, 0xB9, 0x79, 0xBB, 0x7B, 0x7A, 0xBA,
    0xBE, 0x7E, 0x7F, 0xBF, 0x7D, 0xBD, 0xBC, 0x7C, 0xB4, 0x74, 0x75, 0xB5,
    0x77, 0xB7, 0xB6, 0x76, 0x72, 0xB2, 0xB3, 0x73, 0xB1, 0x71, 0x70, 0xB0,
    0x50, 0x90, 0x91, 0x51, 0x93, 0x53, 0x52, 0x92, 0x96, 0x56, 0x57, 0x97,
    0x55, 0x95, 0x94, 0x54, 0x9C, 0x5C, 0x5D, 0x9D, 0x5F, 0x9F, 0x9E, 0x5E,
    0x5A, 0x9A, 0x9B, 0x5B, 0x99, 0x59, 0x58, 0x98, 0x88, 0x48, 0x49, 0x89,
    0x4B, 0x8B, 0x8A, 0x4A, 0x4E, 0x8E, 0x8F, 0x4F, 0x8D, 0x4D, 0x4C, 0x8C,
    0x44, 0x84, 0x85, 0x45, 0x87, 0x47, 0x46, 0x86, 0x82, 0x42, 0x43, 0x83,
    0x41, 0x81, 0x80, 0x40
};


uint16_t MB_CRC16(unsigned char *PDU_Frame, uint16_t Length)
{
    unsigned char   ucCRCHi = 0xFF;
    unsigned char   ucCRCLo = 0xFF;
    int             iIndex;

    while( Length-- )
    {
        iIndex = ucCRCLo ^ *( PDU_Frame++ );
        ucCRCLo = ( unsigned char )( ucCRCHi ^ aucCRCHi[iIndex] );
        ucCRCHi = aucCRCLo[iIndex];
    }
    return ( uint16_t )( ucCRCHi << 8 | ucCRCLo );
}

MB_Handle MB_init(void *pMemory,const size_t numBytes)
{

   MB_Handle handle;

   if(numBytes < sizeof(MB_Obj))
     return((MB_Handle)NULL);

   // assign the handle
   handle = (MB_Handle)pMemory;

   return(handle);

} // end of MB_init() function


void MB_setSciHandle(MB_Handle handle, SCI_Handle sciHandle)
{
   MB_Obj *obj = (MB_Obj *)handle;

   obj->sciHandle = sciHandle;

   return;
} // end of MB_setI2cHandle() function

void MB_setTimHandle(MB_Handle handle, TIMER_Handle timerHandle)
{
   MB_Obj *obj = (MB_Obj *)handle;

   obj->timerHandle = timerHandle;

   return;
} // end of MB_setTimHandle() function

void MB_setGpioHandle(MB_Handle handle, GPIO_Handle gpioHandle)
{
   MB_Obj *obj = (MB_Obj *)handle;

   obj->gpioHandle = gpioHandle;

   return;
} // end of MB_setGpioHandle() function


void MB_PortTimersEnable(MB_Handle handle)
{
  MB_Obj *obj = (MB_Obj *)handle;

  TIMER_clearFlag(obj->timerHandle);
  TIMER_reload(obj->timerHandle);
  TIMER_start(obj->timerHandle);

   return;
}

void MB_PortTimersDisable(MB_Handle handle)
{
    MB_Obj *obj = (MB_Obj *)handle;

    TIMER_stop(obj->timerHandle);

    return;
}


void MB_PortSerialEnable(MB_Handle handle, bool xRxEnable, bool xTxEnable)
{
  MB_Obj *obj = (MB_Obj *)handle;

  if(xRxEnable)
  {

	 SCI_enableRx(obj->sciHandle);
     //GPIO_setLow(obj->gpioHandle, MB_GPIO_RE);
  }
  else
  {
	 SCI_disableRx(obj->sciHandle);
     //GPIO_setHigh(obj->gpioHandle, MB_GPIO_RE);
  }

  if(xTxEnable)
  {
	SCI_enableTx(obj->sciHandle);
	//GPIO_setHigh(obj->gpioHandle, MB_GPIO_DE);
  }
  else
  {
	SCI_disableTx(obj->sciHandle);
    //GPIO_setLow(obj->gpioHandle, MB_GPIO_DE);
  }
  return;
}


bool MB_PortSerialPutByte(MB_Handle handle, CHAR putByte)
{
    MB_Obj *obj = (MB_Obj *)handle;

    SCI_putDataBlocking(obj->sciHandle, putByte);

    return true;
}

bool MB_PortSerialGetByte(MB_Handle handle, CHAR * getByte)
{
    MB_Obj *obj = (MB_Obj *)handle;

    *getByte = SCI_getDataBlocking(obj->sciHandle);

    return true;
}

void MB_PortEventInit(MB_Handle handle)
{
    MB_Obj *obj = (MB_Obj *)handle;

    obj->xEventInQueue = false;

    return;
}

void MB_PortEventPost(MB_Handle handle, eMBEventType eEvent )
{
    MB_Obj *obj = (MB_Obj *)handle;
    obj->xEventInQueue = true;
    obj->eQueuedEvent = eEvent;
    return;
}

bool MB_PortEventGet(MB_Handle handle, eMBEventType * eEvent )
{
    MB_Obj *obj = (MB_Obj *)handle;
    bool  xEventHappened = false;

    if(obj->xEventInQueue )
    {
        *eEvent = obj->eQueuedEvent;
        obj->xEventInQueue = false;
        xEventHappened = true;
    }

    return xEventHappened;
}

void MB_RTUTimerFSM(MB_Handle handle)
{
    MB_Obj *obj = (MB_Obj *)handle;

    switch (obj->eRcvState)
    {
    // Timer t35 expired. Startup phase is finished.
    case STATE_RX_INIT: MB_PortEventPost(handle, EV_READY ); break;
    case STATE_RX_RCV:  MB_PortEventPost(handle, EV_FRAME_RECEIVED); break;
    case STATE_RX_ERROR:   break;
    default:     break;
    }

    MB_PortTimersDisable(handle);
    obj->eRcvState = STATE_RX_IDLE;

    return;
}

void MB_RTUTransmitFSM(MB_Handle handle)
{
    MB_Obj *obj = (MB_Obj *)handle;

    //assert(obj->eRcvState == STATE_RX_IDLE );

    switch (obj->eSndState )
    {
    case STATE_TX_IDLE:
    	   // enable receiver  disable transmitter.
    	   MB_PortSerialEnable(handle, true, false ); break;

    case STATE_TX_XMIT:
    	 // check if we are finished.
        if(obj->SndBufferCount != 0 )
         {
           obj->SndBufferCur++;   // next byte in sendbuffer.
           MB_PortSerialPutByte(handle, (*(obj->SndBufferCur)) );
           obj->SndBufferCount--;
         }
        else
        {
          MB_PortEventPost(handle, EV_FRAME_SENT );
          // enable receiver  disable transmitter.
          MB_PortSerialEnable(handle, true, false );
          obj->eSndState = STATE_TX_IDLE;
        }
        break;
    }

    return;
}

void MB_RTUReceiveFSM(MB_Handle handle)
{
    MB_Obj *obj = (MB_Obj *)handle;

    UCHAR           ucByte;

    // Always read the character.
    ( void )MB_PortSerialGetByte(handle, ( CHAR * ) & ucByte );

    switch (obj->eRcvState )
    {
    case STATE_RX_INIT:   MB_PortTimersEnable(handle); break;
    case STATE_RX_ERROR:  MB_PortTimersEnable(handle); break;

    case STATE_RX_IDLE:
    	obj->RcvBufferPos = 0;
    	obj->RTUBuf[obj->RcvBufferPos++] = ucByte;
        obj->eRcvState = STATE_RX_RCV;

        MB_PortTimersEnable(handle);
        break;

    case STATE_RX_RCV:
        if( obj->RcvBufferPos < MB_SER_PDU_SIZE )
        {
          obj->RTUBuf[obj->RcvBufferPos++] = ucByte;
        }
        else
        {
          obj->eRcvState = STATE_RX_ERROR;
        }

        MB_PortTimersEnable(handle);
        break;
    }
    return;
}

eMBErrorCode MB_RTUReceive(MB_Handle handle)
{
    MB_Obj *obj = (MB_Obj *)handle;

    eMBErrorCode    eStatus = MB_ENOERR;

    // Length and CRC check
    if( (obj->RcvBufferPos == MB_SER_PDU_SIZE )
        && ( MB_CRC16( ( UCHAR * ) (obj->RTUBuf), obj->RcvBufferPos ) == 0 ) )
    {
        obj->RTU_Frame = (RTU_Frame)(obj->RTUBuf);
    }
    else
    {
        eStatus = MB_EIO;
    }

    return eStatus;
}

eMBErrorCode MB_RTUSend(MB_Handle handle)
{
    MB_Obj *obj = (MB_Obj *)handle;

    eMBErrorCode    eStatus = MB_ENOERR;
    USHORT          usCRC16;

    if(obj->eRcvState == STATE_RX_IDLE )
    {
      //  First byte before the Modbus-PDU is the slave address.
    	obj->SndBufferCur = ( UCHAR *) (obj->RTUBuf);
    	obj->SndBufferCount = 1;

       //  Now copy the Modbus-PDU into the Modbus-Serial-Line-PDU.
    	obj->SndBufferCur[MB_SER_PDU_ADDR_OFF] = obj->SlaveAddress;
    	obj->SndBufferCount += (MB_SER_PDU_SIZE-3);

       //  Calculate CRC16 checksum for Modbus-Serial-Line-PDU.
        usCRC16 = MB_CRC16( ( UCHAR * )(obj->SndBufferCur), obj->SndBufferCount );
        obj->RTUBuf[obj->SndBufferCount++] = ( UCHAR )( usCRC16 & 0xFF );
        obj->RTUBuf[obj->SndBufferCount++] = ( UCHAR )( usCRC16 >> 8 );

        //  Activate the transmitter.
        obj->eSndState = STATE_TX_XMIT;
        MB_PortSerialEnable(handle,  false, true);
        obj->SndBufferCount --;
        SCI_putDataBlocking(obj->sciHandle, (obj->RTUBuf[0]));
    }
    else
    {
        eStatus = MB_EIO;
    }
    return eStatus;
}

eMBErrorCode MB_Poll(MB_Handle handle)
{
  MB_Obj *obj = (MB_Obj *)handle;

  static UCHAR   *ucMBFrame;
 // static UCHAR    ucRcvAddress;
  static UCHAR    ucFunctionCode;
  static USHORT   usLength;
  static eMBException eException;

  // Check if there is a event available. If not return control to caller.
   // Otherwise we will handle the event.
  if( MB_PortEventGet(handle,  &(obj->eQueuedEvent) ) == true)
  {
    switch ( obj->eQueuedEvent )
    {
    case EV_READY:   break;
    case EV_FRAME_RECEIVED:
    	//&ucRcvAddress, &ucMBFrame, &usLength
    	obj->eStatus = MB_RTUReceive(handle);
    	if(obj->eStatus == MB_ENOERR)
    	{
		// Check if the frame is for us. If not ignore the frame.
		if( ( obj->RTU_Frame->PDU_Address == obj->SlaveAddress) || ( obj->RTU_Frame->PDU_Address == MB_ADDRESS_BROADCAST ) )
		{
			( void )MB_PortEventPost(handle, EV_EXECUTE );
		}
    	}
        break;

    case EV_EXECUTE:
        if( obj->RTU_Frame->PDU_FunctionCode == 0x06)
        {
      //  	MB_FuncWriteRegister(handle);
        }
        else if( obj->RTU_Frame->PDU_FunctionCode == 0x03)
        {
       // 	MB_FuncReadRegister(handle);
        }

        // If the request was not sent to the broadcast address we return a reply.
        if( obj->RTU_Frame->PDU_Address != MB_ADDRESS_BROADCAST )
        {
            if( eException != MB_EX_NONE )
            {
                // An exception occured. Build an error frame.
                usLength = 0;
                ucMBFrame[usLength++] = ( UCHAR )( ucFunctionCode | MB_FUNC_ERROR );
                ucMBFrame[usLength++] = eException;
            }
            //ucMBAddress, ucMBFrame, usLength)
            obj->eStatus = MB_RTUSend(handle);
        }
        break;

    case EV_FRAME_SENT:   break;

    }
  }

  return MB_ENOERR;
}

void MB_FuncReadRegister(MB_Handle handle)
{
  MB_Obj *obj = (MB_Obj *)handle;

  uint16_t RegAddress;
  uint16_t RegData;

  RegAddress = obj->RTU_Frame->PDU_RegAddress[0];
  RegAddress <<= 8;
  RegAddress |= obj->RTU_Frame->PDU_RegAddress[1];

  switch(RegAddress)
  {

  case 0x0002:RegData = 0x5512;break;

  default:RegData = 0xffff;break;

  }

  obj->RTU_Frame->PDU_Data[0] = (CHAR)(RegData & 0xff);
  obj->RTU_Frame->PDU_Data[1] = (CHAR)(RegData >> 8);

  return;
}

void MB_FuncWriteRegister(MB_Handle handle)
{
  MB_Obj *obj = (MB_Obj *)handle;

  uint16_t RegAddress;
  uint16_t RegData;

  RegAddress = obj->RTU_Frame->PDU_RegAddress[0];
  RegAddress <<= 8;
  RegAddress |= obj->RTU_Frame->PDU_RegAddress[1];

  RegData = obj->RTU_Frame->PDU_Data[0];
  RegData <<= 8;
  RegData |= obj->RTU_Frame->PDU_Data[1];

  switch(RegAddress)
  {

  case 0x0002:break;

  default:RegData = 0xffff;break;

  }


  return;
}
