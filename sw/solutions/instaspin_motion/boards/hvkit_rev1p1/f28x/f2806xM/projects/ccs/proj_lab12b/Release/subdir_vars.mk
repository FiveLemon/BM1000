################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CMD_SRCS += \
D:/FOC_69/sw/ide/ccs/cmd/f2806x/f28069M_ram_lnk.cmd 

LIB_SRCS += \
D:/FOC_69/sw/modules/fast/lib/32b/f28x/f2806x/2806xRevB_FastSpinROMSymbols.lib \
D:/FOC_69/sw/modules/iqmath/lib/f28x/32b/IQmath.lib \
D:/FOC_69/sw/modules/spintac/lib/32b/SpinTAC.lib 

ASM_SRCS += \
D:/FOC_69/sw/drivers/cpu/src/32b/f28x/f2806x/CodeStartBranch.asm \
D:/FOC_69/sw/modules/usDelay/src/32b/f28x/usDelay.asm 

C_SRCS += \
D:/FOC_69/sw/drivers/adc/src/32b/f28x/f2806x/adc.c \
D:/FOC_69/sw/modules/clarke/src/32b/clarke.c \
D:/FOC_69/sw/drivers/clk/src/32b/f28x/f2806x/clk.c \
D:/FOC_69/sw/drivers/cpu/src/32b/f28x/f2806x/cpu.c \
D:/FOC_69/sw/modules/ctrl/src/32b/ctrlQEP.c \
D:/FOC_69/sw/modules/enc/src/32b/enc.c \
D:/FOC_69/sw/modules/filter/src/32b/filter_fo.c \
D:/FOC_69/sw/drivers/flash/src/32b/f28x/f2806x/flash.c \
D:/FOC_69/sw/drivers/gpio/src/32b/f28x/f2806x/gpio.c \
D:/FOC_69/sw/modules/hal/boards/hvkit_rev1p1/f28x/f2806x/src/hal.c \
D:/FOC_69/sw/modules/ipark/src/32b/ipark.c \
D:/FOC_69/sw/modules/offset/src/32b/offset.c \
D:/FOC_69/sw/drivers/osc/src/32b/f28x/f2806x/osc.c \
D:/FOC_69/sw/modules/park/src/32b/park.c \
D:/FOC_69/sw/modules/pid/src/32b/pid.c \
D:/FOC_69/sw/drivers/pie/src/32b/f28x/f2806x/pie.c \
D:/FOC_69/sw/drivers/pll/src/32b/f28x/f2806x/pll.c \
D:/FOC_69/sw/solutions/instaspin_motion/src/proj_lab12b.c \
D:/FOC_69/sw/drivers/pwm/src/32b/f28x/f2806x/pwm.c \
D:/FOC_69/sw/drivers/pwr/src/32b/f28x/f2806x/pwr.c \
D:/FOC_69/sw/drivers/qep/src/32b/f28x/f2806x/qep.c \
D:/FOC_69/sw/modules/slip/src/32b/slip.c \
D:/FOC_69/sw/drivers/spi/src/32b/f28x/f2806x/spi.c \
D:/FOC_69/sw/modules/svgen/src/32b/svgen.c \
D:/FOC_69/sw/drivers/timer/src/32b/f28x/f2806x/timer.c \
D:/FOC_69/sw/modules/traj/src/32b/traj.c \
D:/FOC_69/sw/modules/user/src/32b/user.c \
D:/FOC_69/sw/drivers/wdog/src/32b/f28x/f2806x/wdog.c 

OBJS += \
./CodeStartBranch.obj \
./adc.obj \
./clarke.obj \
./clk.obj \
./cpu.obj \
./ctrlQEP.obj \
./enc.obj \
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
./proj_lab12b.obj \
./pwm.obj \
./pwr.obj \
./qep.obj \
./slip.obj \
./spi.obj \
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
./ctrlQEP.d \
./enc.d \
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
./proj_lab12b.d \
./pwm.d \
./pwr.d \
./qep.d \
./slip.d \
./spi.d \
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
"ctrlQEP.d" \
"enc.d" \
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
"proj_lab12b.d" \
"pwm.d" \
"pwr.d" \
"qep.d" \
"slip.d" \
"spi.d" \
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
"ctrlQEP.obj" \
"enc.obj" \
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
"proj_lab12b.obj" \
"pwm.obj" \
"pwr.obj" \
"qep.obj" \
"slip.obj" \
"spi.obj" \
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
"D:/FOC_69/sw/drivers/cpu/src/32b/f28x/f2806x/CodeStartBranch.asm" \
"D:/FOC_69/sw/modules/usDelay/src/32b/f28x/usDelay.asm" 

C_SRCS__QUOTED += \
"D:/FOC_69/sw/drivers/adc/src/32b/f28x/f2806x/adc.c" \
"D:/FOC_69/sw/modules/clarke/src/32b/clarke.c" \
"D:/FOC_69/sw/drivers/clk/src/32b/f28x/f2806x/clk.c" \
"D:/FOC_69/sw/drivers/cpu/src/32b/f28x/f2806x/cpu.c" \
"D:/FOC_69/sw/modules/ctrl/src/32b/ctrlQEP.c" \
"D:/FOC_69/sw/modules/enc/src/32b/enc.c" \
"D:/FOC_69/sw/modules/filter/src/32b/filter_fo.c" \
"D:/FOC_69/sw/drivers/flash/src/32b/f28x/f2806x/flash.c" \
"D:/FOC_69/sw/drivers/gpio/src/32b/f28x/f2806x/gpio.c" \
"D:/FOC_69/sw/modules/hal/boards/hvkit_rev1p1/f28x/f2806x/src/hal.c" \
"D:/FOC_69/sw/modules/ipark/src/32b/ipark.c" \
"D:/FOC_69/sw/modules/offset/src/32b/offset.c" \
"D:/FOC_69/sw/drivers/osc/src/32b/f28x/f2806x/osc.c" \
"D:/FOC_69/sw/modules/park/src/32b/park.c" \
"D:/FOC_69/sw/modules/pid/src/32b/pid.c" \
"D:/FOC_69/sw/drivers/pie/src/32b/f28x/f2806x/pie.c" \
"D:/FOC_69/sw/drivers/pll/src/32b/f28x/f2806x/pll.c" \
"D:/FOC_69/sw/solutions/instaspin_motion/src/proj_lab12b.c" \
"D:/FOC_69/sw/drivers/pwm/src/32b/f28x/f2806x/pwm.c" \
"D:/FOC_69/sw/drivers/pwr/src/32b/f28x/f2806x/pwr.c" \
"D:/FOC_69/sw/drivers/qep/src/32b/f28x/f2806x/qep.c" \
"D:/FOC_69/sw/modules/slip/src/32b/slip.c" \
"D:/FOC_69/sw/drivers/spi/src/32b/f28x/f2806x/spi.c" \
"D:/FOC_69/sw/modules/svgen/src/32b/svgen.c" \
"D:/FOC_69/sw/drivers/timer/src/32b/f28x/f2806x/timer.c" \
"D:/FOC_69/sw/modules/traj/src/32b/traj.c" \
"D:/FOC_69/sw/modules/user/src/32b/user.c" \
"D:/FOC_69/sw/drivers/wdog/src/32b/f28x/f2806x/wdog.c" 


