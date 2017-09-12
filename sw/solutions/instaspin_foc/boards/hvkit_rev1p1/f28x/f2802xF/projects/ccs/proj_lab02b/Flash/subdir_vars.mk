################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CMD_SRCS += \
D:/BM1000Code/sw/ide/ccs/cmd/f2802x/F28027F.cmd 

LIB_SRCS += \
D:/BM1000Code/sw/modules/fast/lib/32b/f28x/f2802x/2802xRevB_Fast_IQ_ROMSymbols.lib \
D:/BM1000Code/sw/modules/fast/lib/32b/f28x/f2802x/2802xRevB_Fast_ONLY_ROMSymbols.lib \
D:/BM1000Code/sw/modules/fast/lib/32b/f28x/f2802x/2802xRevB_Fast_RTS_ROMSymbols.lib \
D:/BM1000Code/sw/modules/iqmath/lib/f28x/32b/IQmath.lib \
D:/BM1000Code/sw/modules/fast/lib/32b/f28x/f2802x/fast_public.lib 

ASM_SRCS += \
D:/BM1000Code/sw/drivers/cpu/src/32b/f28x/f2802x/CodeStartBranch.asm \
D:/BM1000Code/sw/modules/usDelay/src/32b/f28x/usDelay.asm 

C_SRCS += \
D:/BM1000Code/sw/drivers/adc/src/32b/f28x/f2802x/adc.c \
D:/BM1000Code/sw/modules/clarke/src/32b/clarke.c \
D:/BM1000Code/sw/drivers/clk/src/32b/f28x/f2802x/clk.c \
D:/BM1000Code/sw/drivers/cpu/src/32b/f28x/f2802x/cpu.c \
D:/BM1000Code/sw/modules/ctrl/src/32b/ctrl.c \
D:/BM1000Code/sw/drivers/drvic/decoder.c \
D:/BM1000Code/sw/modules/filter/src/32b/filter_fo.c \
D:/BM1000Code/sw/drivers/flash/src/32b/f28x/f2802x/flash.c \
D:/BM1000Code/sw/drivers/gpio/src/32b/f28x/f2802x/gpio.c \
D:/BM1000Code/sw/modules/hal/boards/hvkit_rev1p1/f28x/f2802x/src/hal.c \
D:/BM1000Code/sw/drivers/i2c/src/32b/f28x/f2802x/i2c.c \
D:/BM1000Code/sw/modules/ipark/src/32b/ipark.c \
D:/BM1000Code/sw/drivers/drvic/ldc1612.c \
D:/BM1000Code/sw/modules/memCopy/src/memCopy.c \
D:/BM1000Code/sw/modules/offset/src/32b/offset.c \
D:/BM1000Code/sw/drivers/osc/src/32b/f28x/f2802x/osc.c \
D:/BM1000Code/sw/modules/park/src/32b/park.c \
D:/BM1000Code/sw/drivers/drvic/pca9555.c \
D:/BM1000Code/sw/modules/pid/src/32b/pid.c \
D:/BM1000Code/sw/drivers/pie/src/32b/f28x/f2802x/pie.c \
D:/BM1000Code/sw/drivers/pll/src/32b/f28x/f2802x/pll.c \
D:/BM1000Code/sw/drivers/drvic/process_ctrl.c \
D:/BM1000Code/sw/solutions/instaspin_foc/src/proj_lab02b.c \
D:/BM1000Code/sw/drivers/pwm/src/32b/f28x/f2802x/pwm.c \
D:/BM1000Code/sw/drivers/pwr/src/32b/f28x/f2802x/pwr.c \
D:/BM1000Code/sw/drivers/sci/src/32b/f28x/f2802x/sci.c \
D:/BM1000Code/sw/drivers/spi/src/32b/f28x/f2802x/spi.c \
D:/BM1000Code/sw/modules/svgen/src/32b/svgen.c \
D:/BM1000Code/sw/drivers/timer/src/32b/f28x/f2802x/timer.c \
D:/BM1000Code/sw/modules/traj/src/32b/traj.c \
D:/BM1000Code/sw/modules/user/src/32b/user.c \
D:/BM1000Code/sw/drivers/wdog/src/32b/f28x/f2802x/wdog.c 

OBJS += \
./CodeStartBranch.obj \
./adc.obj \
./clarke.obj \
./clk.obj \
./cpu.obj \
./ctrl.obj \
./decoder.obj \
./filter_fo.obj \
./flash.obj \
./gpio.obj \
./hal.obj \
./i2c.obj \
./ipark.obj \
./ldc1612.obj \
./memCopy.obj \
./offset.obj \
./osc.obj \
./park.obj \
./pca9555.obj \
./pid.obj \
./pie.obj \
./pll.obj \
./process_ctrl.obj \
./proj_lab02b.obj \
./pwm.obj \
./pwr.obj \
./sci.obj \
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
./ctrl.d \
./decoder.d \
./filter_fo.d \
./flash.d \
./gpio.d \
./hal.d \
./i2c.d \
./ipark.d \
./ldc1612.d \
./memCopy.d \
./offset.d \
./osc.d \
./park.d \
./pca9555.d \
./pid.d \
./pie.d \
./pll.d \
./process_ctrl.d \
./proj_lab02b.d \
./pwm.d \
./pwr.d \
./sci.d \
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
"ctrl.d" \
"decoder.d" \
"filter_fo.d" \
"flash.d" \
"gpio.d" \
"hal.d" \
"i2c.d" \
"ipark.d" \
"ldc1612.d" \
"memCopy.d" \
"offset.d" \
"osc.d" \
"park.d" \
"pca9555.d" \
"pid.d" \
"pie.d" \
"pll.d" \
"process_ctrl.d" \
"proj_lab02b.d" \
"pwm.d" \
"pwr.d" \
"sci.d" \
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
"ctrl.obj" \
"decoder.obj" \
"filter_fo.obj" \
"flash.obj" \
"gpio.obj" \
"hal.obj" \
"i2c.obj" \
"ipark.obj" \
"ldc1612.obj" \
"memCopy.obj" \
"offset.obj" \
"osc.obj" \
"park.obj" \
"pca9555.obj" \
"pid.obj" \
"pie.obj" \
"pll.obj" \
"process_ctrl.obj" \
"proj_lab02b.obj" \
"pwm.obj" \
"pwr.obj" \
"sci.obj" \
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
"D:/BM1000Code/sw/drivers/cpu/src/32b/f28x/f2802x/CodeStartBranch.asm" \
"D:/BM1000Code/sw/modules/usDelay/src/32b/f28x/usDelay.asm" 

C_SRCS__QUOTED += \
"D:/BM1000Code/sw/drivers/adc/src/32b/f28x/f2802x/adc.c" \
"D:/BM1000Code/sw/modules/clarke/src/32b/clarke.c" \
"D:/BM1000Code/sw/drivers/clk/src/32b/f28x/f2802x/clk.c" \
"D:/BM1000Code/sw/drivers/cpu/src/32b/f28x/f2802x/cpu.c" \
"D:/BM1000Code/sw/modules/ctrl/src/32b/ctrl.c" \
"D:/BM1000Code/sw/drivers/drvic/decoder.c" \
"D:/BM1000Code/sw/modules/filter/src/32b/filter_fo.c" \
"D:/BM1000Code/sw/drivers/flash/src/32b/f28x/f2802x/flash.c" \
"D:/BM1000Code/sw/drivers/gpio/src/32b/f28x/f2802x/gpio.c" \
"D:/BM1000Code/sw/modules/hal/boards/hvkit_rev1p1/f28x/f2802x/src/hal.c" \
"D:/BM1000Code/sw/drivers/i2c/src/32b/f28x/f2802x/i2c.c" \
"D:/BM1000Code/sw/modules/ipark/src/32b/ipark.c" \
"D:/BM1000Code/sw/drivers/drvic/ldc1612.c" \
"D:/BM1000Code/sw/modules/memCopy/src/memCopy.c" \
"D:/BM1000Code/sw/modules/offset/src/32b/offset.c" \
"D:/BM1000Code/sw/drivers/osc/src/32b/f28x/f2802x/osc.c" \
"D:/BM1000Code/sw/modules/park/src/32b/park.c" \
"D:/BM1000Code/sw/drivers/drvic/pca9555.c" \
"D:/BM1000Code/sw/modules/pid/src/32b/pid.c" \
"D:/BM1000Code/sw/drivers/pie/src/32b/f28x/f2802x/pie.c" \
"D:/BM1000Code/sw/drivers/pll/src/32b/f28x/f2802x/pll.c" \
"D:/BM1000Code/sw/drivers/drvic/process_ctrl.c" \
"D:/BM1000Code/sw/solutions/instaspin_foc/src/proj_lab02b.c" \
"D:/BM1000Code/sw/drivers/pwm/src/32b/f28x/f2802x/pwm.c" \
"D:/BM1000Code/sw/drivers/pwr/src/32b/f28x/f2802x/pwr.c" \
"D:/BM1000Code/sw/drivers/sci/src/32b/f28x/f2802x/sci.c" \
"D:/BM1000Code/sw/drivers/spi/src/32b/f28x/f2802x/spi.c" \
"D:/BM1000Code/sw/modules/svgen/src/32b/svgen.c" \
"D:/BM1000Code/sw/drivers/timer/src/32b/f28x/f2802x/timer.c" \
"D:/BM1000Code/sw/modules/traj/src/32b/traj.c" \
"D:/BM1000Code/sw/modules/user/src/32b/user.c" \
"D:/BM1000Code/sw/drivers/wdog/src/32b/f28x/f2802x/wdog.c" 


