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

//! \file   solutions/instaspin_motion/src/main.h
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
#include "sw/modules/slip/src/32b/slip.h"

#include "sw/modules/iqmath/src/32b/IQLog.h"

// drivers
#include "sw/drivers/drvic/pca9555.h"
#include "sw/drivers/drvic/process_ctrl.h"

// platforms
#include "sw/modules/ctrl/src/32b/ctrl.h"

#include "hal.h"
#include "user.h"


// SpinTAC
//#include "spintac_velocity.h"


// **************************************************************************
// the defines


//! \brief Defines the number of main iterations before global variables are updated
//!
#define NUM_MAIN_TICKS_FOR_GLOBAL_VARIABLE_UPDATE  1

//! \brief Defines the speed acceleration scale factor.
//!
#define MAX_ACCEL_KRPMPS_SF  _IQ(USER_MOTOR_NUM_POLE_PAIRS * 1000.0 / USER_TRAJ_FREQ_Hz / USER_IQ_FULL_SCALE_FREQ_Hz / 60.0)

//! \brief Initialization values of global variables
//!



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

//! \brief     Updates the global motor variables 
//! 
#ifdef FAST_ROM_V1p6
void updateGlobalVariables_motor(CTRL_Handle handle, ST_Handle stHandle);
#endif

//! \brief     Reset Ls Q format to a higher value when Ls identification starts
//!
void CTRL_resetLs_qFmt(CTRL_Handle handle, const uint_least8_t qFmt);


//! \brief     Recalculate Kp and Ki gains to fix the R/L limitation of 2000.0 and Kp limitation of 0.11
//! \brief     as well as recalculates gains based on estimator state to allow low inductance pmsm to id
//!
void recalcKpKiPmsm(CTRL_Handle handle);


//! \brief     Recalculate Kp and Ki gains to fix the R/L limitation of 2000.0 and Kp limitation of 0.11
//!
void recalcKpKi(CTRL_Handle handle, USER_Params *pUserParams);


//! \brief     Calculates the maximum qFmt value for Ls identification, to get a more accurate Ls per unit
//!
void CTRL_calcMax_Ls_qFmt(CTRL_Handle handle, uint_least8_t *p_qFmt);


//! \brief     Updates Kp and Ki gains in the controller object
//!
void updateKpKiGains(CTRL_Handle handle);


//! \brief     Set electrical frequency limit to zero while identifying an induction motor
//!
void setFeLimitZero(CTRL_Handle handle);


//! \brief     Calculates Dir_qFmt for ACIM
//!
void acim_Dir_qFmtCalc(CTRL_Handle handle);


//@} //defgroup
#endif // end of _MAIN_H_ definition



