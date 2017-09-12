################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CMD_SRCS += \
C:/ti/motorware/motorware_1_01_00_18/sw/ide/ccs/cmd/f2806x/f28069F_ram_lnk.cmd 

LIB_SRCS += \
C:/ti/motorware/motorware_1_01_00_18/sw/modules/fast/lib/32b/f28x/f2806x/2806xRevB_FastSpinROMSymbols.lib \
C:/ti/motorware/motorware_1_01_00_18/sw/modules/iqmath/lib/f28x/32b/IQmath.lib 

ASM_SRCS += \
C:/ti/motorware/motorware_1_01_00_18/sw/drivers/cpu/src/32b/f28x/f2806x/CodeStartBranch.asm \
C:/ti/motorware/motorware_1_01_00_18/sw/modules/usDelay/src/32b/f28x/usDelay.asm 

C_SRCS += \
C:/ti/motorware/motorware_1_01_00_18/sw/drivers/adc/src/32b/f28x/f2806x/adc.c \
C:/ti/motorware/motorware_1_01_00_18/sw/modules/clarke/src/32b/clarke.c \
C:/ti/motorware/motorware_1_01_00_18/sw/drivers/clk/src/32b/f28x/f2806x/clk.c \
C:/ti/motorware/motorware_1_01_00_18/sw/drivers/cpu/src/32b/f28x/f2806x/cpu.c \
C:/ti/motorware/motorware_1_01_00_18/sw/modules/ctrl/src/32b/ctrl.c \
C:/ti/motorware/motorware_1_01_00_18/sw/modules/filter/src/32b/filter_fo.c \
C:/ti/motorware/motorware_1_01_00_18/sw/drivers/flash/src/32b/f28x/f2806x/flash.c \
C:/ti/motorware/motorware_1_01_00_18/sw/drivers/gpio/src/32b/f28x/f2806x/gpio.c \
C:/ti/motorware/motorware_1_01_00_18/sw/modules/hal/boards/hvkit_rev1p1/f28x/f2806x/src/hal.c \
C:/ti/motorware/motorware_1_01_00_18/sw/modules/ipark/src/32b/ipark.c \
C:/ti/motorware/motorware_1_01_00_18/sw/modules/offset/src/32b/offset.c \
C:/ti/motorware/motorware_1_01_00_18/sw/drivers/osc/src/32b/f28x/f2806x/osc.c \
C:/ti/motorware/motorware_1_01_00_18/sw/modules/park/src/32b/park.c \
C:/ti/motorware/motorware_1_01_00_18/sw/modules/pid/src/32b/pid.c \
C:/ti/motorware/motorware_1_01_00_18/sw/drivers/pie/src/32b/f28x/f2806x/pie.c \
C:/ti/motorware/motorware_1_01_00_18/sw/drivers/pll/src/32b/f28x/f2806x/pll.c \
C:/ti/motorware/motorware_1_01_00_18/sw/solutions/instaspin_foc/src/proj_lab05a.c \
C:/ti/motorware/motorware_1_01_00_18/sw/drivers/pwm/src/32b/f28x/f2806x/pwm.c \
C:/ti/motorware/motorware_1_01_00_18/sw/drivers/pwr/src/32b/f28x/f2806x/pwr.c \
C:/ti/motorware/motorware_1_01_00_18/sw/modules/svgen/src/32b/svgen.c \
C:/ti/motorware/motorware_1_01_00_18/sw/drivers/timer/src/32b/f28x/f2806x/timer.c \
C:/ti/motorware/motorware_1_01_00_18/sw/modules/traj/src/32b/traj.c \
C:/ti/motorware/motorware_1_01_00_18/sw/modules/user/src/32b/user.c \
C:/ti/motorware/motorware_1_01_00_18/sw/drivers/wdog/src/32b/f28x/f2806x/wdog.c 

OBJS += \
./CodeStartBranch.obj \
./adc.obj \
./clarke.obj \
./clk.obj \
./cpu.obj \
./ctrl.obj \
./filter_fo.obj \
./flash.obj \
./gpio.obj \
./hal.obj \
./ipark.obj \
./offset.obj \
./osc.obj \
./park.obj \
./pid.obj \
./pie.obj \
./pll.obj \
./proj_lab05a.obj \
./pwm.obj \
./pwr.obj \
./svgen.obj \
./timer.obj \
./traj.obj \
./usDelay.obj \
./user.obj \
./wdog.obj 

ASM_DEPS += \
./CodeStartBranch.d \
./usDelay.d 

C_DEPS += \
./adc.d \
./clarke.d \
./clk.d \
./cpu.d \
./ctrl.d \
./filter_fo.d \
./flash.d \
./gpio.d \
./hal.d \
./ipark.d \
./offset.d \
./osc.d \
./park.d \
./pid.d \
./pie.d \
./pll.d \
./proj_lab05a.d \
./pwm.d \
./pwr.d \
./svgen.d \
./timer.d \
./traj.d \
./user.d \
./wdog.d 

C_DEPS__QUOTED += \
"adc.d" \
"clarke.d" \
"clk.d" \
"cpu.d" \
"ctrl.d" \
"filter_fo.d" \
"flash.d" \
"gpio.d" \
"hal.d" \
"ipark.d" \
"offset.d" \
"osc.d" \
"park.d" \
"pid.d" \
"pie.d" \
"pll.d" \
"proj_lab05a.d" \
"pwm.d" \
"pwr.d" \
"svgen.d" \
"timer.d" \
"traj.d" \
"user.d" \
"wdog.d" 

OBJS__QUOTED += \
"CodeStartBranch.obj" \
"adc.obj" \
"clarke.obj" \
"clk.obj" \
"cpu.obj" \
"ctrl.obj" \
"filter_fo.obj" \
"flash.obj" \
"gpio.obj" \
"hal.obj" \
"ipark.obj" \
"offset.obj" \
"osc.obj" \
"park.obj" \
"pid.obj" \
"pie.obj" \
"pll.obj" \
"proj_lab05a.obj" \
"pwm.obj" \
"pwr.obj" \
"svgen.obj" \
"timer.obj" \
"traj.obj" \
"usDelay.obj" \
"user.obj" \
"wdog.obj" 

ASM_DEPS__QUOTED += \
"CodeStartBranch.d" \
"usDelay.d" 

ASM_SRCS__QUOTED += \
"C:/ti/motorware/motorware_1_01_00_18/sw/drivers/cpu/src/32b/f28x/f2806x/CodeStartBranch.asm" \
"C:/ti/motorware/motorware_1_01_00_18/sw/modules/usDelay/src/32b/f28x/usDelay.asm" 

C_SRCS__QUOTED += \
"C:/ti/motorware/motorware_1_01_00_18/sw/drivers/adc/src/32b/f28x/f2806x/adc.c" \
"C:/ti/motorware/motorware_1_01_00_18/sw/modules/clarke/src/32b/clarke.c" \
"C:/ti/motorware/motorware_1_01_00_18/sw/drivers/clk/src/32b/f28x/f2806x/clk.c" \
"C:/ti/motorware/motorware_1_01_00_18/sw/drivers/cpu/src/32b/f28x/f2806x/cpu.c" \
"C:/ti/motorware/motorware_1_01_00_18/sw/modules/ctrl/src/32b/ctrl.c" \
"C:/ti/motorware/motorware_1_01_00_18/sw/modules/filter/src/32b/filter_fo.c" \
"C:/ti/motorware/motorware_1_01_00_18/sw/drivers/flash/src/32b/f28x/f2806x/flash.c" \
"C:/ti/motorware/motorware_1_01_00_18/sw/drivers/gpio/src/32b/f28x/f2806x/gpio.c" \
"C:/ti/motorware/motorware_1_01_00_18/sw/modules/hal/boards/hvkit_rev1p1/f28x/f2806x/src/hal.c" \
"C:/ti/motorware/motorware_1_01_00_18/sw/modules/ipark/src/32b/ipark.c" \
"C:/ti/motorware/motorware_1_01_00_18/sw/modules/offset/src/32b/offset.c" \
"C:/ti/motorware/motorware_1_01_00_18/sw/drivers/osc/src/32b/f28x/f2806x/osc.c" \
"C:/ti/motorware/motorware_1_01_00_18/sw/modules/park/src/32b/park.c" \
"C:/ti/motorware/motorware_1_01_00_18/sw/modules/pid/src/32b/pid.c" \
"C:/ti/motorware/motorware_1_01_00_18/sw/drivers/pie/src/32b/f28x/f2806x/pie.c" \
"C:/ti/motorware/motorware_1_01_00_18/sw/drivers/pll/src/32b/f28x/f2806x/pll.c" \
"C:/ti/motorware/motorware_1_01_00_18/sw/solutions/instaspin_foc/src/proj_lab05a.c" \
"C:/ti/motorware/motorware_1_01_00_18/sw/drivers/pwm/src/32b/f28x/f2806x/pwm.c" \
"C:/ti/motorware/motorware_1_01_00_18/sw/drivers/pwr/src/32b/f28x/f2806x/pwr.c" \
"C:/ti/motorware/motorware_1_01_00_18/sw/modules/svgen/src/32b/svgen.c" \
"C:/ti/motorware/motorware_1_01_00_18/sw/drivers/timer/src/32b/f28x/f2806x/timer.c" \
"C:/ti/motorware/motorware_1_01_00_18/sw/modules/traj/src/32b/traj.c" \
"C:/ti/motorware/motorware_1_01_00_18/sw/modules/user/src/32b/user.c" \
"C:/ti/motorware/motorware_1_01_00_18/sw/drivers/wdog/src/32b/f28x/f2806x/wdog.c" 


