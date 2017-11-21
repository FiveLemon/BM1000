#ifndef _MB_H
#define _MB_H

#include <assert.h>
#include <inttypes.h>
#include "sw/modules/types/src/types.h"
#ifdef FAST_ROM_V1p6
#include "sw/drivers/sci/src/32b/f28x/f2806x/sci.h"
#include "sw/drivers/timer/src/32b/f28x/f2806x/timer.h"
#include "sw/drivers/gpio/src/32b/f28x/f2806x/gpio.h"
#else
#include "sw/drivers/sci/src/32b/f28x/f2802x/sci.h"
#include "sw/drivers/timer/src/32b/f28x/f2802x/timer.h"
#include "sw/drivers/gpio/src/32b/f28x/f2802x/gpio.h"
#endif

#include "sw/drivers/drvic/motor.h"
#include "sw/drivers/drvic/fsm.h"


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
#define MB_SER_PDU_SIZE_DATA    4       /*!< Size of DATA field in PDU. */
#define MB_SER_PDU_SIZE_CRC     2       /*!< Size of CRC field in PDU. */

#define MB_SER_PDU_ADDR_OFF     0       /*!< Offset of slave address in Ser-PDU. */
#define MB_SER_PDU_PDU_OFF      1       /*!< Offset of Modbus-PDU in Ser-PDU. */

#define MB_ADDRESS_BROADCAST    ( 0x10 )   /*! Modbus broadcast address. */
//#define MB_ADDRESS_BROADCAST    ( 0x20 )   /*! Modbus broadcast address. */

#define MB_ADDRESS_MIN          ( 1 )   /*! Smallest possible slave address. */
#define MB_ADDRESS_MAX          ( 247 ) /*! Biggest possible slave address. */
#define MB_FUNC_ERROR           ( 128 )

#define CODE_VERSION_MAJOR      (0x01) // major 0x01
#define CODE_VERSION_MINOR      (0x00) // minor 0x00

// 00 bin version
// 01 error code
// 02  status
//

  typedef unsigned char UCHAR;
  typedef char    CHAR;

  typedef uint16_t USHORT;
  typedef int16_t SHORT;

  typedef uint32_t ULONG;
  typedef int32_t LONG;


  typedef enum
  {
    // System information
    MB_Motor_Reg_CodeVersion        = 0x0000,
	MB_Motor_Reg_CtrlVer_TargetProc = 0x0001,
	MB_Motor_Reg_CtrlVer_major      = 0x0002,
	MB_Motor_Reg_CtrlVer_minor      = 0x0003,
	MB_Motor_Reg_SysFlag            = 0x0004,
	MB_Motor_Reg_CtrlState          = 0x0005,
	MB_Motor_Reg_EstState           = 0x0006,
	MB_Motor_Reg_ErrorCode          = 0x0007,

	// Motor Parameters
	MB_Motor_Reg_motor_ID           = 0x0010,
	MB_Motor_Reg_motor_Rr           = 0x0011,
	MB_Motor_Reg_motor_Rs           = 0x0012,
	MB_Motor_Reg_motor_Ls_d         = 0x0013,
	MB_Motor_Reg_motor_Ls_q         = 0x0014,
	MB_Motor_Reg_maxCurrent         = 0x0015,

    // System state Parameters
    MB_Motor_Reg_Speed_krpm         = 0x0020,
	MB_Motor_Reg_Torque_Nm          = 0x0021,
	MB_Motor_Reg_VdcBus_kV          = 0x0022,
	MB_Motor_Reg_ChipTemp           = 0x0023,
	MB_Motor_Reg_AnaSensor1         = 0x0024,
	MB_Motor_Reg_AnaSensor2         = 0x0025,
	MB_Motor_Reg_SwitchSensor       = 0x0026,

    // System setting Parameters
    MB_Motor_Reg_RefSpeed_krpm      = 0x0030,
	MB_Motor_Reg_MaxAccel_krpmps    = 0x0031,
	MB_Motor_Reg_MaxDecel_krpmps    = 0x0032,
	MB_Motor_Reg_MaxJrk_krpmps2     = 0x0033,
	MB_Motor_Reg_CurrentRatio       = 0x0034,
	MB_Motor_Reg_IbrakeRatio        = 0x0035,

	// Motor PID Parameter
	MB_Motor_Reg_Idq_Kp             = 0x0040,
	MB_Motor_Reg_Idq_Ki             = 0x0041,
	MB_Motor_Reg_Spd_Kp             = 0x0042,
	MB_Motor_Reg_Spd_Ki             = 0x0043,
	MB_Motor_Reg_BwRadps            = 0x0044,

    // FSM Edit Parameter
	MB_Motor_Reg_FsmCurState        = 0x0100,
	MB_Motor_Reg_FsmErrFlag         = 0x0101,
	MB_Motor_Reg_FsmEditState       = 0x0102,
    MB_Motor_Reg_FsmEditOpt         = 0x0103,
	MB_Motor_Reg_FsmStParams        = 0x0104,
	MB_Motor_Reg_FsmEditRefSpd      = 0x0105,
	MB_Motor_Reg_FsmEditCondValue   = 0x0106,
	MB_Motor_Reg_FsmEditCondition   = 0x0107,
	MB_Motor_Reg_FsmEditRunAction   = 0x0108,
	MB_Motor_Reg_FsmEditNextState   = 0x0109,

	// Position Parameter
	MB_Motor_Reg_FsmObjPosInt       = 0x0200,
	MB_Motor_Reg_FsmObjPosFrac      = 0x0201,
	MB_Motor_Reg_FsmObjPosRough     = 0x0202,
	MB_Motor_Reg_FsmCurPosInt       = 0x0203,
	MB_Motor_Reg_FsmCurPosFrac      = 0x0204,
	MB_Motor_Reg_FsmCurPosRough     = 0x0205,

//================ CMD ==================

	// Motor Control Command
    MB_Motor_Cmd_StartMotor         = 0x2000,
    MB_Motor_Cmd_StopMotor          = 0x2001,
    MB_Motor_Cmd_ClrFsmFlag         = 0x2002,
	MB_Motor_Cmd_clrOverCurrent     = 0x2003,
	MB_Motor_Cmd_Shutdowm           = 0x2004,

	// System flag command
	MB_Motor_Cmd_SetSysEnable,
	MB_Motor_Cmd_clrSysEnable,

	MB_Motor_Cmd_SetRunIdentify,
	MB_Motor_Cmd_ClrRunIdentify,

	MB_Motor_Cmd_SetMotorEst,
	MB_Motor_Cmd_ClrMotorEst,

	MB_Motor_Cmd_SetMotorIdentified,
	MB_Motor_Cmd_ClrMotorIdentified,

	MB_Motor_Cmd_enableForceAngle,
	MB_Motor_Cmd_disableForceAngle,

	MB_Motor_Cmd_ZeroPiont_Identify,

	MB_Motor_Cmd_enableRsRecalc,
	MB_Motor_Cmd_disableRsRecalc,

	MB_Motor_Cmd_enableUserParams,
	MB_Motor_Cmd_disableUserParams,

	MB_Motor_Cmd_enableOffsetcalc,
	MB_Motor_Cmd_disableOffsetcalc,

	MB_Motor_Cmd_enablePowerWarp,
	MB_Motor_Cmd_disablePowerWarp,

	MB_Motor_Cmd_enableSpeedCtrl,
	MB_Motor_Cmd_disableSpeedCtrl,

	MB_Motor_Cmd_enableRun,
	MB_Motor_Cmd_disableRun,

	MB_Motor_Cmd_enableFlyingStart,
	MB_Motor_Cmd_disableFlyingStart,


  } MB_RegAddr_e;





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

    //PROCTRL_Handle proctrlHandle;

    MOTOR_Handle   motorHandle;
    FSM_Handle     fsmHandle;
    GPIO_Handle    gpioHandle;       //!< the GPIO handle
    TIMER_Handle   timerHandle;      //<! the timer handles
    SCI_Handle     sciHandle;

    RTU_Frame      RTU_Frame;
    UCHAR          RTUBuf[MB_SER_PDU_SIZE];

    UCHAR          RcvBufferPos;

    UCHAR          *SndBufferCur;
    USHORT         SndBufferCount;

	UCHAR          SlaveAddress;

    eMBErrorCode   eStatus;
    eMBSndState    eSndState;
    eMBRcvState    eRcvState;

    bool           xEventInQueue;
    eMBEventType   eQueuedEvent;


  }MB_Obj;


typedef struct _MB_Obj_ *MB_Handle;

MB_Handle MB_init(void *pMemory,const size_t numBytes);
void MB_setSciHandle(MB_Handle handle, SCI_Handle sciHandle);
void MB_setTimHandle(MB_Handle handle, TIMER_Handle timerHandle);
void MB_setGpioHandle(MB_Handle handle, GPIO_Handle gpioHandle);
void MB_setMotorHandle(MB_Handle handle, MOTOR_Handle motorHandle);
void MB_setFsmHandle(MB_Handle handle, FSM_Handle fsmHandle);

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

void MB_FuncReadHoldingRegister(MB_Handle handle);
void MB_FuncWriteHoldingRegister(MB_Handle handle);
void MB_FuncWriteCoilsRegister(MB_Handle handle);

//int16_t MB_TransMotorParams(_iq Data);
//_iq MB_Trans485toMotor(int16_t Data);
int16_t MB_FloatTransToInt(float Data);

#ifdef __cplusplus
  }
#endif

#endif
