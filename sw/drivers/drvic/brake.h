#ifndef _BRAKE_H_
#define _BRAKE_H_

// the includes

#include "sw/modules/iqmath/src/32b/IQmathLib.h"
#include "sw/modules/math/src/32b/math.h"
#include "sw/modules/types/src/types.h"


#ifdef __cplusplus
extern "C" {
#endif


// **************************************************************************
// the defines


// **************************************************************************
// the typedefs

typedef struct _BRAKE_Obj_
{

  _iq             angle_pu;
  MATH_vec2       Idq_brake;

  bool            brake_enable;

} BRAKE_Obj;

typedef struct _BRAKE_Obj_ *BRAKE_Handle;


BRAKE_Handle Brake_init(void *pMemory,const size_t numBytes);

static inline bool BRAKE_getBrakeState(BRAKE_Handle handle)
{
  BRAKE_Obj *obj = (BRAKE_Obj *)handle;

  return (obj->brake_enable);
}

static inline _iq BRAKE_getAngle_pu(BRAKE_Handle handle)
{
  BRAKE_Obj *obj = (BRAKE_Obj *)handle;

  return (obj->angle_pu);
}

static inline _iq BRAKE_getId_ref_pu(BRAKE_Handle handle)
{
  BRAKE_Obj *obj = (BRAKE_Obj *)handle;

  return (obj->Idq_brake.value[0]);
}

static inline _iq BRAKE_getIq_ref_pu(BRAKE_Handle handle)
{
  BRAKE_Obj *obj = (BRAKE_Obj *)handle;

  return (obj->Idq_brake.value[1]);
}


static inline void BRAKE_setId_ref_pu(BRAKE_Handle handle, const _iq brake_Id)
{
  BRAKE_Obj *obj = (BRAKE_Obj *)handle;

  obj->Idq_brake.value[0] = brake_Id;

  return;
}


static inline void BRAKE_setIq_ref_pu(BRAKE_Handle handle, const _iq brake_Iq)
{
  BRAKE_Obj *obj = (BRAKE_Obj *)handle;

  obj->Idq_brake.value[1] = brake_Iq;

  return;
}

static inline void BRAKE_setAngle_pu(BRAKE_Handle handle, const _iq brake_Angle)
{
  BRAKE_Obj *obj = (BRAKE_Obj *)handle;

  obj->angle_pu =   brake_Angle;
  return;
}

static inline void BRAKE_setBrakeEnable(BRAKE_Handle handle, const bool state)
{
  BRAKE_Obj *obj = (BRAKE_Obj *)handle;
  obj->brake_enable = state;
  return;
}


#ifdef __cplusplus
}
#endif // extern "C"

//@} // ingroup
#endif // end of _AFSEL_H_ definition
