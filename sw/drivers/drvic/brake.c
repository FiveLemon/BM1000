#include "sw/drivers/drvic/brake.h"
#include "hal.h"
#include "user.h"



BRAKE_Handle Brake_init(void *pMemory,const size_t numBytes)
{

	BRAKE_Handle BrakeHandle;

    if(numBytes < sizeof(BRAKE_Obj))
    return((BRAKE_Handle)NULL);

    // assign the handle
    BrakeHandle = (BRAKE_Handle)pMemory;

    return (BrakeHandle);
}



