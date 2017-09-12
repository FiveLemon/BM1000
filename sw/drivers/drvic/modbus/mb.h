#ifndef _MB_H
#define _MB_H

#include <assert.h>
#include <inttypes.h>
#include "sw/modules/types/src/types.h"
#include "sw/drivers/sci/src/32b/f28x/f2802x/sci.h"
#include "sw/drivers/timer/src/32b/f28x/f2802x/timer.h"
#include "sw/drivers/gpio/src/32b/f28x/f2802x/gpio.h"


#ifdef __cplusplus
  extern "C" {
#endif


/* ----------------------- Defines ------------------------------------------*/
/*!
 * Constants which defines the format of a modbus frame. The example is
 * shown for a Modbus RTU/ASCII frame. Note that the Modbus PDU is not
 * dependent on the underlying transport.
 *
 * <code>
 * <------------------------ MODBUS SERIAL LINE PDU (1) ------------------->
 *              <----------- MODBUS PDU (1') ---------------->
 *  +-----------+---------------+----------------------------+-------------+
 *  | Address   | Function Code | Data                       | CRC/LRC     |
 *  +-----------+---------------+----------------------------+-------------+
 *  |           |               |                                   |
 * (2)        (3/2')           (3')                                (4)
 *
 * (1)  ... MB_SER_PDU_SIZE_MAX = 256
 * (2)  ... MB_SER_PDU_ADDR_OFF = 0
 * (3)  ... MB_SER_PDU_PDU_OFF  = 1
 * (4)  ... MB_SER_PDU_SIZE_CRC = 2
 *
 * (1') ... MB_PDU_SIZE_MAX     = 253
 * (2') ... MB_PDU_FUNC_OFF     = 0
 * (3') ... MB_PDU_DATA_OFF     = 1
 * </code>
 */

  /* ----------------------- Defines ------------------------------------------*/
  #define MB_SER_PDU_SIZE         8       /*!< Size of a Modbus RTU frame. */
  #define MB_SER_PDU_SIZE_CRC     2       /*!< Size of CRC field in PDU. */

  #define MB_SER_PDU_ADDR_OFF     0       /*!< Offset of slave address in Ser-PDU. */
  #define MB_SER_PDU_PDU_OFF      1       /*!< Offset of Modbus-PDU in Ser-PDU. */
  #define MB_ADDRESS_BROADCAST    ( 0 )   /*! Modbus broadcast address. */
  #define MB_ADDRESS_MIN          ( 1 )   /*! Smallest possible slave address. */
  #define MB_ADDRESS_MAX          ( 247 ) /*! Biggest possible slave address. */
  #define MB_FUNC_ERROR           ( 128 )

  #define MB_GPIO_RE GPIO_Number_12
  #define MB_GPIO_DE GPIO_Number_34

  typedef unsigned char UCHAR;
  typedef char    CHAR;

  typedef uint16_t USHORT;
  typedef int16_t SHORT;

  typedef uint32_t ULONG;
  typedef int32_t LONG;

  typedef enum
  {
      MB_REG_READ,                /*!< Read register values and pass to protocol stack. */
      MB_REG_WRITE                /*!< Update register values. */
  } eMBRegisterMode;

  typedef enum
  {
      MB_ENOERR,                  /*!< no error. */
      MB_ENOREG,                  /*!< illegal register address. */
      MB_EINVAL,                  /*!< illegal argument. */
      MB_EPORTERR,                /*!< porting layer error. */
      MB_ENORES,                  /*!< insufficient resources. */
      MB_EIO,                     /*!< I/O error. */
      MB_EILLSTATE,               /*!< protocol stack in illegal state. */
      MB_ETIMEDOUT                /*!< timeout error occurred. */
  } eMBErrorCode;

  typedef enum
  {
      MB_EX_NONE = 0x00,
      MB_EX_ILLEGAL_FUNCTION = 0x01,
      MB_EX_ILLEGAL_DATA_ADDRESS = 0x02,
      MB_EX_ILLEGAL_DATA_VALUE = 0x03,
      MB_EX_SLAVE_DEVICE_FAILURE = 0x04,
      MB_EX_ACKNOWLEDGE = 0x05,
      MB_EX_SLAVE_BUSY = 0x06,
      MB_EX_MEMORY_PARITY_ERROR = 0x08,
      MB_EX_GATEWAY_PATH_FAILED = 0x0A,
      MB_EX_GATEWAY_TGT_FAILED = 0x0B
  } eMBException;

  typedef eMBException ( *pxMBFunctionHandler ) ( UCHAR * pucFrame, USHORT * pusLength );

  typedef struct
  {
      UCHAR               FunctionCode;
      pxMBFunctionHandler pxHandler;
  } xMBFunctionHandler;

  typedef enum
  {
      EV_READY,                   /*!< Startup finished. */
      EV_FRAME_RECEIVED,          /*!< Frame received. */
      EV_EXECUTE,                 /*!< Execute function. */
      EV_FRAME_SENT               /*!< Frame sent. */
  } eMBEventType;

  typedef enum
  {
      MB_PAR_NONE,                /*!< No parity. */
      MB_PAR_ODD,                 /*!< Odd parity. */
      MB_PAR_EVEN                 /*!< Even parity. */
  } eMBParity;

  static enum
  {
      STATE_ENABLED,
      STATE_DISABLED,
      STATE_NOT_INITIALIZED
  } eMBState = STATE_NOT_INITIALIZED;


  typedef enum
  {
      STATE_RX_INIT,              /*!< Receiver is in initial state. */
      STATE_RX_IDLE,              /*!< Receiver is in idle state. */
      STATE_RX_RCV,               /*!< Frame is beeing received. */
      STATE_RX_ERROR              /*!< If the frame is invalid. */
  } eMBRcvState;

  typedef enum
  {
      STATE_TX_IDLE,              /*!< Transmitter is in idle state. */
      STATE_TX_XMIT               /*!< Transmitter is in transfer state. */
  } eMBSndState;

  typedef struct _MB_RTU_t_
  {

    UCHAR    PDU_Address;
    UCHAR    PDU_FunctionCode;
    UCHAR    PDU_RegAddress[2];
    UCHAR    PDU_Data[2];
    UCHAR    PDU_CRC_LByte;
    UCHAR    PDU_CRC_HByte;

  } MB_RTU_t;

  typedef struct _MB_RTU_t_ *RTU_Frame;

  typedef struct _MB_Param_t_
  {
  	  UCHAR     Port;
  	  ULONG     BaudRate;
  //	  eMBParity eParity;
  } MB_Param_t;

  typedef struct _MB_Obj_
  {

    GPIO_Handle   gpioHandle;       //!< the GPIO handle
    TIMER_Handle  timerHandle;      //<! the timer handles
    SCI_Handle    sciHandle;

    RTU_Frame     RTU_Frame;
    UCHAR         RTUBuf[MB_SER_PDU_SIZE];

    UCHAR         RcvBufferPos;

    UCHAR         *SndBufferCur;
    USHORT        SndBufferCount;

	UCHAR         SlaveAddress;

    eMBErrorCode  eStatus;
    eMBSndState   eSndState;
    eMBRcvState   eRcvState;

    bool         xEventInQueue;
    eMBEventType eQueuedEvent;


  }MB_Obj;


  typedef struct _MB_Obj_ *MB_Handle;

MB_Handle MB_init(void *pMemory,const size_t numBytes);
void MB_setSciHandle(MB_Handle handle, SCI_Handle sciHandle);
void MB_setTimHandle(MB_Handle handle, TIMER_Handle timerHandle);
void MB_setGpioHandle(MB_Handle handle, GPIO_Handle gpioHandle);

inline void  MB_setSlaveAddress(MB_Handle handle, CHAR SlaveAddress)
{
  MB_Obj *obj = (MB_Obj *)handle;

  obj->SlaveAddress = SlaveAddress;

  return;
}

uint16_t MB_CRC16(unsigned char *PDU_Frame, uint16_t Length);
void MB_PortTimersEnable(MB_Handle handle);
void MB_PortTimersDisable(MB_Handle handle);
void MB_PortSerialEnable(MB_Handle handle, bool xRxEnable, bool xTxEnable);
bool MB_PortSerialPutByte(MB_Handle handle, CHAR putByte);
bool MB_PortSerialGetByte(MB_Handle handle, CHAR * getByte);

void MB_RTUTimerFSM(MB_Handle handle);
void MB_RTUTransmitFSM(MB_Handle handle);
void MB_RTUReceiveFSM(MB_Handle handle);

void MB_PortEventInit(MB_Handle handle);
void MB_PortEventPost(MB_Handle handle, eMBEventType eEvent );
bool MB_PortEventGet(MB_Handle handle, eMBEventType * eEvent );

eMBErrorCode MB_RTUReceive(MB_Handle handle);
eMBErrorCode MB_RTUSend(MB_Handle handle);
eMBErrorCode MB_Poll(MB_Handle handle);

void MB_FuncReadRegister(MB_Handle handle);
void MB_FuncWriteRegister(MB_Handle handle);

#ifdef __cplusplus
  }
#endif

#endif
