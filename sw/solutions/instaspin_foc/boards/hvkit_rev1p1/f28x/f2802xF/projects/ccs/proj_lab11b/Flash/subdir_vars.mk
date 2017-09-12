################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CMD_SRCS += \
D:/BM1000/sw/ide/ccs/cmd/f2802x/F28027F.cmd 

LIB_SRCS += \
D:/BM1000/sw/modules/fast/lib/32b/f28x/f2802x/2802xRevB_Fast_IQ_ROMSymbols.lib \
D:/BM1000/sw/modules/fast/lib/32b/f28x/f2802x/2802xRevB_Fast_ONLY_ROMSymbols.lib \
D:/BM1000/sw/modules/fast/lib/32b/f28x/f2802x/2802xRevB_Fast_RTS_ROMSymbols.lib \
D:/BM1000/sw/modules/fast/lib/32b/f28x/EST_getIdq_pu.lib \
D:/BM1000/sw/modules/fast/lib/32b/f28x/EST_runPowerWarp.lib \
D:/BM1000/sw/modules/fast/lib/32b/f28x/EST_setEstParams.lib \
D:/BM1000/sw/modules/fast/lib/32b/f28x/EST_setupEstIdleState.lib \
D:/BM1000/sw/modules/iqmath/lib/f28x/32b/IQmath.lib \
D:/BM1000/sw/modules/vib_comp/lib/32b/vib_comp.lib 

ASM_SRCS += \
D:/BM1000/sw/drivers/cpu/src/32b/f28x/f2802x/CodeStartBranch.asm \
D:/BM1000/sw/modules/usDelay/src/32b/f28x/usDelay.asm 

C_SRCS += \
D:/BM1000/sw/drivers/adc/src/32b/f28x/f2802x/adc.c \
D:/BM1000/sw/modules/clarke/src/32b/clarke.c \
D:/BM1000/sw/drivers/clk/src/32b/f28x/f2802x/clk.c \
D:/BM1000/sw/drivers/cpu/src/32b/f28x/f2802x/cpu.c \
D:/BM1000/sw/modules/cpu_usage/src/32b/cpu_usage.c \
D:/BM1000/sw/modules/filter/src/32b/filter_fo.c \
D:/BM1000/sw/drivers/flash/src/32b/f28x/f2802x/flash.c \
D:/BM1000/sw/modules/fw/src/32b/fw.c \
D:/BM1000/sw/drivers/gpio/src/32b/f28x/f2802x/gpio.c \
D:/BM1000/sw/modules/hal/boards/hvkit_rev1p1/f28x/f2802x/src/hal.c \
D:/BM1000/sw/drivers/i2c/src/32b/f28x/f2802x/i2c.c \
D:/BM1000/sw/modules/ipark/src/32b/ipark.c \
D:/BM1000/sw/modules/memCopy/src/memCopy.c \
D:/BM1000/sw/drivers/osc/src/32b/f28x/f2802x/osc.c \
D:/BM1000/sw/modules/pid/src/32b/pid.c \
D:/BM1000/sw/drivers/pie/src/32b/f28x/f2802x/pie.c \
D:/BM1000/sw/drivers/pll/src/32b/f28x/f2802x/pll.c \
D:/BM1000/sw/solutions/instaspin_foc/src/proj_lab11b.c \
D:/BM1000/sw/drivers/pwm/src/32b/f28x/f2802x/pwm.c \
D:/BM1000/sw/drivers/pwr/src/32b/f28x/f2802x/pwr.c \
D:/BM1000/sw/modules/svgen/src/32b/svgen.c \
D:/BM1000/sw/modules/svgen/src/32b/svgen_current.c \
D:/BM1000/sw/drivers/timer/src/32b/f28x/f2802x/timer.c \
D:/BM1000/sw/modules/traj/src/32b/traj.c \
D:/BM1000/sw/modules/user/src/32b/user.c \
D:/BM1000/sw/drivers/wdog/src/32b/f28x/f2802x/wdog.c 

OBJS += \
./CodeStartBranch.obj \
./adc.obj \
./clarke.obj \
./clk.obj \
./cpu.obj \
./cpu_usage.obj \
./filter_fo.obj \
./flash.obj \
./fw.obj \
./gpio.obj \
./hal.obj \
./i2c.obj \
./ipark.obj \
./memCopy.obj \
./osc.obj \
./pid.obj \
./pie.obj \
./pll.obj \
./proj_lab11b.obj \
./pwm.obj \
./pwr.obj \
./svgen.obj \
./svgen_current.obj \
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
./cpu_usage.d \
./filter_fo.d \
./flash.d \
./fw.d \
./gpio.d \
./hal.d \
./i2c.d \
./ipark.d \
./memCopy.d \
./osc.d \
./pid.d \
./pie.d \
./pll.d \
./proj_lab11b.d \
./pwm.d \
./pwr.d \
./svgen.d \
./svgen_current.d \
./timer.d \
./traj.d \
./user.d \
./wdog.d 

C_DEPS__QUOTED += \
"adc.d" \
"clarke.d" \
"clk.d" \
"cpu.d" \
"cpu_usage.d" \
"filter_fo.d" \
"flash.d" \
"fw.d" \
"gpio.d" \
"hal.d" \
"i2c.d" \
"ipark.d" \
"memCopy.d" \
"osc.d" \
"pid.d" \
"pie.d" \
"pll.d" \
"proj_lab11b.d" \
"pwm.d" \
"pwr.d" \
"svgen.d" \
"svgen_current.d" \
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
"cpu_usage.obj" \
"filter_fo.obj" \
"flash.obj" \
"fw.obj" \
"gpio.obj" \
"hal.obj" \
"i2c.obj" \
"ipark.obj" \
"memCopy.obj" \
"osc.obj" \
"pid.obj" \
"pie.obj" \
"pll.obj" \
"proj_lab11b.obj" \
"pwm.obj" \
"pwr.obj" \
"svgen.obj" \
"svgen_current.obj" \
"timer.obj" \
"traj.obj" \
"usDelay.obj" \
"user.obj" \
"wdog.obj" 

ASM_DEPS__QUOTED += \
"CodeStartBranch.d" \
"usDelay.d" 

ASM_SRCS__QUOTED += \
"D:/BM1000/sw/drivers/cpu/src/32b/f28x/f2802x/CodeStartBranch.asm" \
"D:/BM1000/sw/modules/usDelay/src/32b/f28x/usDelay.asm" 

C_SRCS__QUOTED += \
"D:/BM1000/sw/drivers/adc/src/32b/f28x/f2802x/adc.c" \
"D:/BM1000/sw/modules/clarke/src/32b/clarke.c" \
"D:/BM1000/sw/drivers/clk/src/32b/f28x/f2802x/clk.c" \
"D:/BM1000/sw/drivers/cpu/src/32b/f28x/f2802x/cpu.c" \
"D:/BM1000/sw/modules/cpu_usage/src/32b/cpu_usage.c" \
"D:/BM1000/sw/modules/filter/src/32b/filter_fo.c" \
"D:/BM1000/sw/drivers/flash/src/32b/f28x/f2802x/flash.c" \
"D:/BM1000/sw/modules/fw/src/32b/fw.c" \
"D:/BM1000/sw/drivers/gpio/src/32b/f28x/f2802x/gpio.c" \
"D:/BM1000/sw/modules/hal/boards/hvkit_rev1p1/f28x/f2802x/src/hal.c" \
"D:/BM1000/sw/drivers/i2c/src/32b/f28x/f2802x/i2c.c" \
"D:/BM1000/sw/modules/ipark/src/32b/ipark.c" \
"D:/BM1000/sw/modules/memCopy/src/memCopy.c" \
"D:/BM1000/sw/drivers/osc/src/32b/f28x/f2802x/osc.c" \
"D:/BM1000/sw/modules/pid/src/32b/pid.c" \
"D:/BM1000/sw/drivers/pie/src/32b/f28x/f2802x/pie.c" \
"D:/BM1000/sw/drivers/pll/src/32b/f28x/f2802x/pll.c" \
"D:/BM1000/sw/solutions/instaspin_foc/src/proj_lab11b.c" \
"D:/BM1000/sw/drivers/pwm/src/32b/f28x/f2802x/pwm.c" \
"D:/BM1000/sw/drivers/pwr/src/32b/f28x/f2802x/pwr.c" \
"D:/BM1000/sw/modules/svgen/src/32b/svgen.c" \
"D:/BM1000/sw/modules/svgen/src/32b/svgen_current.c" \
"D:/BM1000/sw/drivers/timer/src/32b/f28x/f2802x/timer.c" \
"D:/BM1000/sw/modules/traj/src/32b/traj.c" \
"D:/BM1000/sw/modules/user/src/32b/user.c" \
"D:/BM1000/sw/drivers/wdog/src/32b/f28x/f2802x/wdog.c" 


