################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CMD_SRCS += \
D:/BM1000/sw/ide/ccs/cmd/f2806x/f28069F_ram_lnk.cmd 

LIB_SRCS += \
D:/BM1000/sw/modules/fast/lib/32b/f28x/f2806x/2806xRevB_FastSpinROMSymbols.lib \
D:/BM1000/sw/modules/iqmath/lib/f28x/32b/IQmath.lib 

ASM_SRCS += \
D:/BM1000/sw/drivers/cpu/src/32b/f28x/f2806x/CodeStartBranch.asm \
D:/BM1000/sw/modules/usDelay/src/32b/f28x/usDelay.asm 

C_SRCS += \
D:/BM1000/sw/drivers/adc/src/32b/f28x/f2806x/adc.c \
D:/BM1000/sw/drivers/drvic/brake.c \
D:/BM1000/sw/modules/clarke/src/32b/clarke.c \
D:/BM1000/sw/drivers/clk/src/32b/f28x/f2806x/clk.c \
D:/BM1000/sw/drivers/cpu/src/32b/f28x/f2806x/cpu.c \
D:/BM1000/sw/modules/ctrl/src/32b/ctrl.c \
D:/BM1000/sw/modules/filter/src/32b/filter_fo.c \
D:/BM1000/sw/drivers/flash/src/32b/f28x/f2806x/flash.c \
D:/BM1000/sw/modules/flyingStart/src/32b/flyingStart.c \
D:/BM1000/sw/drivers/drvic/fsm.c \
D:/BM1000/sw/drivers/gpio/src/32b/f28x/f2806x/gpio.c \
D:/BM1000/sw/modules/hal/boards/hvkit_rev1p1/f28x/f2806x/src/hal.c \
D:/BM1000/sw/drivers/i2c/src/32b/f28x/f2806x/i2c.c \
D:/BM1000/sw/modules/ipark/src/32b/ipark.c \
D:/BM1000/sw/drivers/drvic/modbus/mb.c \
D:/BM1000/sw/drivers/drvic/motor.c \
D:/BM1000/sw/modules/offset/src/32b/offset.c \
D:/BM1000/sw/drivers/osc/src/32b/f28x/f2806x/osc.c \
D:/BM1000/sw/modules/park/src/32b/park.c \
D:/BM1000/sw/drivers/drvic/pca9555.c \
D:/BM1000/sw/modules/pid/src/32b/pid.c \
D:/BM1000/sw/drivers/pie/src/32b/f28x/f2806x/pie.c \
D:/BM1000/sw/drivers/pll/src/32b/f28x/f2806x/pll.c \
D:/BM1000/sw/drivers/drvic/process_ctrl.c \
D:/BM1000/sw/solutions/instaspin_foc/src/proj_lab05b.c \
D:/BM1000/sw/drivers/pwm/src/32b/f28x/f2806x/pwm.c \
D:/BM1000/sw/drivers/pwr/src/32b/f28x/f2806x/pwr.c \
D:/BM1000/sw/drivers/sci/src/32b/f28x/f2806x/sci.c \
D:/BM1000/sw/drivers/spi/src/32b/f28x/f2806x/spi.c \
D:/BM1000/sw/modules/svgen/src/32b/svgen.c \
D:/BM1000/sw/drivers/timer/src/32b/f28x/f2806x/timer.c \
D:/BM1000/sw/modules/traj/src/32b/traj.c \
D:/BM1000/sw/modules/user/src/32b/user.c \
D:/BM1000/sw/drivers/wdog/src/32b/f28x/f2806x/wdog.c 

OBJS += \
./CodeStartBranch.obj \
./adc.obj \
./brake.obj \
./clarke.obj \
./clk.obj \
./cpu.obj \
./ctrl.obj \
./filter_fo.obj \
./flash.obj \
./flyingStart.obj \
./fsm.obj \
./gpio.obj \
./hal.obj \
./i2c.obj \
./ipark.obj \
./mb.obj \
./motor.obj \
./offset.obj \
./osc.obj \
./park.obj \
./pca9555.obj \
./pid.obj \
./pie.obj \
./pll.obj \
./process_ctrl.obj \
./proj_lab05b.obj \
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
./brake.d \
./clarke.d \
./clk.d \
./cpu.d \
./ctrl.d \
./filter_fo.d \
./flash.d \
./flyingStart.d \
./fsm.d \
./gpio.d \
./hal.d \
./i2c.d \
./ipark.d \
./mb.d \
./motor.d \
./offset.d \
./osc.d \
./park.d \
./pca9555.d \
./pid.d \
./pie.d \
./pll.d \
./process_ctrl.d \
./proj_lab05b.d \
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
"brake.d" \
"clarke.d" \
"clk.d" \
"cpu.d" \
"ctrl.d" \
"filter_fo.d" \
"flash.d" \
"flyingStart.d" \
"fsm.d" \
"gpio.d" \
"hal.d" \
"i2c.d" \
"ipark.d" \
"mb.d" \
"motor.d" \
"offset.d" \
"osc.d" \
"park.d" \
"pca9555.d" \
"pid.d" \
"pie.d" \
"pll.d" \
"process_ctrl.d" \
"proj_lab05b.d" \
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
"brake.obj" \
"clarke.obj" \
"clk.obj" \
"cpu.obj" \
"ctrl.obj" \
"filter_fo.obj" \
"flash.obj" \
"flyingStart.obj" \
"fsm.obj" \
"gpio.obj" \
"hal.obj" \
"i2c.obj" \
"ipark.obj" \
"mb.obj" \
"motor.obj" \
"offset.obj" \
"osc.obj" \
"park.obj" \
"pca9555.obj" \
"pid.obj" \
"pie.obj" \
"pll.obj" \
"process_ctrl.obj" \
"proj_lab05b.obj" \
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
"D:/BM1000/sw/drivers/cpu/src/32b/f28x/f2806x/CodeStartBranch.asm" \
"D:/BM1000/sw/modules/usDelay/src/32b/f28x/usDelay.asm" 

C_SRCS__QUOTED += \
"D:/BM1000/sw/drivers/adc/src/32b/f28x/f2806x/adc.c" \
"D:/BM1000/sw/drivers/drvic/brake.c" \
"D:/BM1000/sw/modules/clarke/src/32b/clarke.c" \
"D:/BM1000/sw/drivers/clk/src/32b/f28x/f2806x/clk.c" \
"D:/BM1000/sw/drivers/cpu/src/32b/f28x/f2806x/cpu.c" \
"D:/BM1000/sw/modules/ctrl/src/32b/ctrl.c" \
"D:/BM1000/sw/modules/filter/src/32b/filter_fo.c" \
"D:/BM1000/sw/drivers/flash/src/32b/f28x/f2806x/flash.c" \
"D:/BM1000/sw/modules/flyingStart/src/32b/flyingStart.c" \
"D:/BM1000/sw/drivers/drvic/fsm.c" \
"D:/BM1000/sw/drivers/gpio/src/32b/f28x/f2806x/gpio.c" \
"D:/BM1000/sw/modules/hal/boards/hvkit_rev1p1/f28x/f2806x/src/hal.c" \
"D:/BM1000/sw/drivers/i2c/src/32b/f28x/f2806x/i2c.c" \
"D:/BM1000/sw/modules/ipark/src/32b/ipark.c" \
"D:/BM1000/sw/drivers/drvic/modbus/mb.c" \
"D:/BM1000/sw/drivers/drvic/motor.c" \
"D:/BM1000/sw/modules/offset/src/32b/offset.c" \
"D:/BM1000/sw/drivers/osc/src/32b/f28x/f2806x/osc.c" \
"D:/BM1000/sw/modules/park/src/32b/park.c" \
"D:/BM1000/sw/drivers/drvic/pca9555.c" \
"D:/BM1000/sw/modules/pid/src/32b/pid.c" \
"D:/BM1000/sw/drivers/pie/src/32b/f28x/f2806x/pie.c" \
"D:/BM1000/sw/drivers/pll/src/32b/f28x/f2806x/pll.c" \
"D:/BM1000/sw/drivers/drvic/process_ctrl.c" \
"D:/BM1000/sw/solutions/instaspin_foc/src/proj_lab05b.c" \
"D:/BM1000/sw/drivers/pwm/src/32b/f28x/f2806x/pwm.c" \
"D:/BM1000/sw/drivers/pwr/src/32b/f28x/f2806x/pwr.c" \
"D:/BM1000/sw/drivers/sci/src/32b/f28x/f2806x/sci.c" \
"D:/BM1000/sw/drivers/spi/src/32b/f28x/f2806x/spi.c" \
"D:/BM1000/sw/modules/svgen/src/32b/svgen.c" \
"D:/BM1000/sw/drivers/timer/src/32b/f28x/f2806x/timer.c" \
"D:/BM1000/sw/modules/traj/src/32b/traj.c" \
"D:/BM1000/sw/modules/user/src/32b/user.c" \
"D:/BM1000/sw/drivers/wdog/src/32b/f28x/f2806x/wdog.c" 


