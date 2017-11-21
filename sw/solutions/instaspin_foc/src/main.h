#ifndef _MAIN_H_
#define _MAIN_H_
/* --COPYRIGHT--,BSD
 * Copyright (c) 2012, Texas Instruments Incorporated
 * All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions
 * are met:
 *
 * *  Redistributions of source code must retain the above copyright
 *    notice, this list of conditions and the following disclaimer.
 *
 * *  Redistributions in binary form must reproduce the above copyright
 *    notice, this list of conditions and the following disclaimer in the
 *    documentation and/or other materials provided with the distribution.
 *
 * *  Neither the name of Texas Instruments Incorporated nor the names of
 *    its contributors may be used to endorse or promote products derived
 *    from this software without specific prior written permission.
 *
 * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
 * AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO,
 * THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR
 * PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR
 * CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL,
 * EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO,
 * PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS;
 * OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY,
 * WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR
 * OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE,
 * EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 * --/COPYRIGHT--*/

//! \file   solutions/instaspin_foc/src/main.h
//! \brief Defines the structures, global initialization, and functions used in MAIN 
//!
//! (C) Copyright 2011, Texas Instruments, Inc.

// **************************************************************************
// the includes

// modules
#include "sw/modules/math/src/32b/math.h"
#include "sw/modules/memCopy/src/memCopy.h"
#include "sw/modules/est/src/32b/est.h"
#include "sw/modules/svgen/src/32b/svgen_current.h"
#include "sw/modules/fw/src/32b/fw.h"
#include "sw/modules/fem/src/32b/fem.h"
#include "sw/modules/cpu_usage/src/32b/cpu_usage.h"

#include "sw/modules/flyingStart/src/32b/flyingStart.h"
#include "sw/modules/cpu_time/src/32b/cpu_time.h"
#include "sw/modules/hallbldc/src/32b/hallbldc.h"
#include "sw/modules/vib_comp/src/32b/vib_comp.h"




// drivers
//#include "sw/modules/brake/src/brake.h"
#include "sw/modules/angle_gen/src/32b/angle_gen.h"

#include "sw/drivers/drvic/pca9555.h"
#include "sw/drivers/drvic/process_ctrl.h"


// platforms
#ifdef QEP
#include "sw/modules/iqmath/src/32b/IQLog.h"
#include "sw/modules/slip/src/32b/slip.h"
#include "sw/modules/ctrl/src/32b/ctrlQEP.h"
#include "spintac_position.h"
#else
#include "sw/modules/ctrl/src/32b/ctrl.h"
#endif

#include "hal.h"
#include "user.h"


// **************************************************************************
// the defines





// **************************************************************************
// the typedefs




// **************************************************************************
// the globals


// **************************************************************************
// the function prototypes

//! \brief The main interrupt service (ISR) routine
//!
interrupt void mainISR(void);
interrupt void UART_RxISR(void);
interrupt void UART_TxReadyISR(void);
interrupt void Timer1ISR(void);


void runCurrentReconstruction(void);
void runFieldWeakening(void);
void runOffsetsCalculation(void);
void runSetTrigger(void);


//! \brief     Updates the global motor variables 
//! 
//void updateGlobalVariables_motor(CTRL_Handle handle);


//! \brief     Updates the global variables 
//! 
void updateGlobalVariables(EST_Handle handle);


//! \brief     Updates version 1p6 of library
//!
void softwareUpdate1p6(EST_Handle handle);


//! \brief     Reset Ls Q format to a higher value when Ls identification starts
//!
void CTRL_resetLs_qFmt(CTRL_Handle handle, const uint_least8_t qFmt);


//! \brief     Recalculate Kp and Ki gains to fix the R/L limitation of 2000.0 and Kp limitation of 0.11
//! \brief     as well as recalculates gains based on estimator state to allow low inductance pmsm to id
//!
void recalcKpKiPmsm(CTRL_Handle handle);


//! \brief     Recalculate Kp and Ki gains to fix the R/L limitation of 2000.0 and Kp limitation of 0.11
//!
extern void recalcKpKi(CTRL_Handle handle, USER_Params *pUserParams);


//! \brief     Calculates the maximum qFmt value for Ls identification, to get a more accurate Ls per unit
//!
void CTRL_calcMax_Ls_qFmt(CTRL_Handle handle, uint_least8_t *p_qFmt);


//! \brief     Updates Iq reference and also sets the right sign to the speed reference for correct force angle
//!
void updateIqRef(CTRL_Handle handle);


//! \brief     Updates Kp and Ki gains in the controller object
//!
//extern void updateKpKiGains(CTRL_Handle handle);


//! \brief     Runs Rs online
//!
//void runRsOnLine(CTRL_Handle handle);


//! \brief      Runs Rs Online for lab11a; function prototype changed to expect EST_Handle object
//!             instead of CTRL_Handle object (lab11a features no CTRL object)
//!
void updateRsOnLine(EST_Handle handle);


//! \brief     Updates CPU usage
//!
void updateCPUusage(void);


//! \brief     Set electrical frequency limit to zero while identifying an induction motor
//!
extern void setFeLimitZero(CTRL_Handle handle);


//! \brief     Calculates Dir_qFmt for ACIM
//!
extern void acim_Dir_qFmtCalc(CTRL_Handle handle);


//! \brief     Sets up the Clarke transform for current
//!
void setupClarke_I(CLARKE_Handle,const uint_least8_t);


//! \brief     Sets up the Clarke transform for voltage
//!
void setupClarke_V(CLARKE_Handle,const uint_least8_t);


_iq angleDelayComp(const _iq fm_pu, const _iq angleUncomp_pu);

CTRL_Handle CTRL_init(void *pMemory,const size_t numBytes);

void EST_getIdq_pu(EST_Handle handle,MATH_vec2 *pIdq_pu);

#if !defined(FAST_ROM_V1p6)
void EST_setEstParams(EST_Handle handle,USER_Params *pUserParams);
void EST_setupEstIdleState(EST_Handle handle);
#endif

EST_Handle EST_init(void *pMemory,const size_t numBytes);

//! \brief     Runs PowerWarp
//! \param[in] handle     The estimator (EST) handle
//! \param[in] Id_int_pu  The intermediate value along the Id trajectory in pu
//! \param[in] Iq_pu      The measured Iq value in pu
//! \return    The target value for the Id trajectory in pu
_iq EST_runPowerWarp(EST_Handle handle,const _iq Id_int_pu,const _iq Iq_pu);

_iq getAbsElecAngle(const _iq angle_pu);

_iq getAbsMechAngle(_iq *pAngle_mech_poles, _iq *pAngle_z1_pu, const _iq angle_pu);


//! \brief     motor run control for flying start
//!
extern void motor_RunCtrl(PROCTRL_Handle handle);

//@} //defgroup
#endif // end of _MAIN_H_ definition



