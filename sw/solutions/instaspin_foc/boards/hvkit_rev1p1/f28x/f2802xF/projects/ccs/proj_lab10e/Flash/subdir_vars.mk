################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CMD_SRCS += \
C:/Users/wmj/Desktop/BM1000_v1.1/sw/ide/ccs/cmd/f2802x/F28027F.cmd 

LIB_SRCS += \
C:/Users/wmj/Desktop/BM1000_v1.1/sw/modules/fast/lib/32b/f28x/f2802x/2802xRevB_Fast_IQ_ROMSymbols.lib \
C:/Users/wmj/Desktop/BM1000_v1.1/sw/modules/fast/lib/32b/f28x/f2802x/2802xRevB_Fast_ONLY_ROMSymbols.lib \
C:/Users/wmj/Desktop/BM1000_v1.1/sw/modules/fast/lib/32b/f28x/f2802x/2802xRevB_Fast_RTS_ROMSymbols.lib \
C:/Users/wmj/Desktop/BM1000_v1.1/sw/modules/iqmath/lib/f28x/32b/IQmath.lib \
C:/Users/wmj/Desktop/BM1000_v1.1/sw/modules/fast/lib/32b/f28x/f2802x/fast_public.lib 

ASM_SRCS += \
C:/Users/wmj/Desktop/BM1000_v1.1/sw/drivers/cpu/src/32b/f28x/f2802x/CodeStartBranch.asm \
C:/Users/wmj/Desktop/BM1000_v1.1/sw/modules/usDelay/src/32b/f28x/usDelay.asm 

C_SRCS += \
C:/Users/wmj/Desktop/BM1000_v1.1/sw/drivers/adc/src/32b/f28x/f2802x/adc.c \
C:/Users/wmj/Desktop/BM1000_v1.1/sw/drivers/drvic/brake.c \
C:/Users/wmj/Desktop/BM1000_v1.1/sw/modules/clarke/src/32b/clarke.c \
C:/Users/wmj/Desktop/BM1000_v1.1/sw/drivers/clk/src/32b/f28x/f2802x/clk.c \
C:/Users/wmj/Desktop/BM1000_v1.1/sw/drivers/cpu/src/32b/f28x/f2802x/cpu.c \
C:/Users/wmj/Desktop/BM1000_v1.1/sw/modules/cpu_time/src/32b/cpu_time.c \
C:/Users/wmj/Desktop/BM1000_v1.1/sw/modules/ctrl/src/32b/ctrl.c \
C:/Users/wmj/Desktop/BM1000_v1.1/sw/modules/filter/src/32b/filter_fo.c \
C:/Users/wmj/Desktop/BM1000_v1.1/sw/drivers/flash/src/32b/f28x/f2802x/flash.c \
C:/Users/wmj/Desktop/BM1000_v1.1/sw/modules/flyingStart/src/32b/flyingStart.c \
C:/Users/wmj/Desktop/BM1000_v1.1/sw/drivers/drvic/fsm.c \
C:/Users/wmj/Desktop/BM1000_v1.1/sw/modules/fw/src/32b/fw.c \
C:/Users/wmj/Desktop/BM1000_v1.1/sw/drivers/gpio/src/32b/f28x/f2802x/gpio.c \
C:/Users/wmj/Desktop/BM1000_v1.1/sw/modules/hal/boards/hvkit_rev1p1/f28x/f2802x/src/hal.c \
C:/Users/wmj/Desktop/BM1000_v1.1/sw/modules/ipark/src/32b/ipark.c \
C:/Users/wmj/Desktop/BM1000_v1.1/sw/drivers/drvic/modbus/mb.c \
C:/Users/wmj/Desktop/BM1000_v1.1/sw/modules/memCopy/src/memCopy.c \
C:/Users/wmj/Desktop/BM1000_v1.1/sw/drivers/drvic/motor.c \
C:/Users/wmj/Desktop/BM1000_v1.1/sw/modules/offset/src/32b/offset.c \
C:/Users/wmj/Desktop/BM1000_v1.1/sw/drivers/osc/src/32b/f28x/f2802x/osc.c \
C:/Users/wmj/Desktop/BM1000_v1.1/sw/modules/park/src/32b/park.c \
C:/Users/wmj/Desktop/BM1000_v1.1/sw/modules/pid/src/32b/pid.c \
C:/Users/wmj/Desktop/BM1000_v1.1/sw/drivers/pie/src/32b/f28x/f2802x/pie.c \
C:/Users/wmj/Desktop/BM1000_v1.1/sw/drivers/pll/src/32b/f28x/f2802x/pll.c \
C:/Users/wmj/Desktop/BM1000_v1.1/sw/drivers/drvic/process_ctrl.c \
C:/Users/wmj/Desktop/BM1000_v1.1/sw/solutions/instaspin/src/proj_bm1000.c \
C:/Users/wmj/Desktop/BM1000_v1.1/sw/drivers/pwm/src/32b/f28x/f2802x/pwm.c \
C:/Users/wmj/Desktop/BM1000_v1.1/sw/drivers/pwr/src/32b/f28x/f2802x/pwr.c \
C:/Users/wmj/Desktop/BM1000_v1.1/sw/drivers/sci/src/32b/f28x/f2802x/sci.c \
C:/Users/wmj/Desktop/BM1000_v1.1/sw/drivers/spi/src/32b/f28x/f2802x/spi.c \
C:/Users/wmj/Desktop/BM1000_v1.1/sw/modules/svgen/src/32b/svgen.c \
C:/Users/wmj/Desktop/BM1000_v1.1/sw/modules/svgen/src/32b/svgen_current.c \
C:/Users/wmj/Desktop/BM1000_v1.1/sw/drivers/timer/src/32b/f28x/f2802x/timer.c \
C:/Users/wmj/Desktop/BM1000_v1.1/sw/modules/traj/src/32b/traj.c \
C:/Users/wmj/Desktop/BM1000_v1.1/sw/modules/user/src/32b/user.c \
C:/Users/wmj/Desktop/BM1000_v1.1/sw/drivers/wdog/src/32b/f28x/f2802x/wdog.c 

OBJS += \
./CodeStartBranch.obj \
./adc.obj \
./brake.obj \
./clarke.obj \
./clk.obj \
./cpu.obj \
./cpu_time.obj \
./ctrl.obj \
./filter_fo.obj \
./flash.obj \
./flyingStart.obj \
./fsm.obj \
./fw.obj \
./gpio.obj \
./hal.obj \
./ipark.obj \
./mb.obj \
./memCopy.obj \
./motor.obj \
./offset.obj \
./osc.obj \
./park.obj \
./pid.obj \
./pie.obj \
./pll.obj \
./process_ctrl.obj \
./proj_bm1000.obj \
./pwm.obj \
./pwr.obj \
./sci.obj \
./spi.obj \
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
./brake.d \
./clarke.d \
./clk.d \
./cpu.d \
./cpu_time.d \
./ctrl.d \
./filter_fo.d \
./flash.d \
./flyingStart.d \
./fsm.d \
./fw.d \
./gpio.d \
./hal.d \
./ipark.d \
./mb.d \
./memCopy.d \
./motor.d \
./offset.d \
./osc.d \
./park.d \
./pid.d \
./pie.d \
./pll.d \
./process_ctrl.d \
./proj_bm1000.d \
./pwm.d \
./pwr.d \
./sci.d \
./spi.d \
./svgen.d \
./svgen_current.d \
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
"cpu_time.d" \
"ctrl.d" \
"filter_fo.d" \
"flash.d" \
"flyingStart.d" \
"fsm.d" \
"fw.d" \
"gpio.d" \
"hal.d" \
"ipark.d" \
"mb.d" \
"memCopy.d" \
"motor.d" \
"offset.d" \
"osc.d" \
"park.d" \
"pid.d" \
"pie.d" \
"pll.d" \
"process_ctrl.d" \
"proj_bm1000.d" \
"pwm.d" \
"pwr.d" \
"sci.d" \
"spi.d" \
"svgen.d" \
"svgen_current.d" \
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
"cpu_time.obj" \
"ctrl.obj" \
"filter_fo.obj" \
"flash.obj" \
"flyingStart.obj" \
"fsm.obj" \
"fw.obj" \
"gpio.obj" \
"hal.obj" \
"ipark.obj" \
"mb.obj" \
"memCopy.obj" \
"motor.obj" \
"offset.obj" \
"osc.obj" \
"park.obj" \
"pid.obj" \
"pie.obj" \
"pll.obj" \
"process_ctrl.obj" \
"proj_bm1000.obj" \
"pwm.obj" \
"pwr.obj" \
"sci.obj" \
"spi.obj" \
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
"C:/Users/wmj/Desktop/BM1000_v1.1/sw/drivers/cpu/src/32b/f28x/f2802x/CodeStartBranch.asm" \
"C:/Users/wmj/Desktop/BM1000_v1.1/sw/modules/usDelay/src/32b/f28x/usDelay.asm" 

C_SRCS__QUOTED += \
"C:/Users/wmj/Desktop/BM1000_v1.1/sw/drivers/adc/src/32b/f28x/f2802x/adc.c" \
"C:/Users/wmj/Desktop/BM1000_v1.1/sw/drivers/drvic/brake.c" \
"C:/Users/wmj/Desktop/BM1000_v1.1/sw/modules/clarke/src/32b/clarke.c" \
"C:/Users/wmj/Desktop/BM1000_v1.1/sw/drivers/clk/src/32b/f28x/f2802x/clk.c" \
"C:/Users/wmj/Desktop/BM1000_v1.1/sw/drivers/cpu/src/32b/f28x/f2802x/cpu.c" \
"C:/Users/wmj/Desktop/BM1000_v1.1/sw/modules/cpu_time/src/32b/cpu_time.c" \
"C:/Users/wmj/Desktop/BM1000_v1.1/sw/modules/ctrl/src/32b/ctrl.c" \
"C:/Users/wmj/Desktop/BM1000_v1.1/sw/modules/filter/src/32b/filter_fo.c" \
"C:/Users/wmj/Desktop/BM1000_v1.1/sw/drivers/flash/src/32b/f28x/f2802x/flash.c" \
"C:/Users/wmj/Desktop/BM1000_v1.1/sw/modules/flyingStart/src/32b/flyingStart.c" \
"C:/Users/wmj/Desktop/BM1000_v1.1/sw/drivers/drvic/fsm.c" \
"C:/Users/wmj/Desktop/BM1000_v1.1/sw/modules/fw/src/32b/fw.c" \
"C:/Users/wmj/Desktop/BM1000_v1.1/sw/drivers/gpio/src/32b/f28x/f2802x/gpio.c" \
"C:/Users/wmj/Desktop/BM1000_v1.1/sw/modules/hal/boards/hvkit_rev1p1/f28x/f2802x/src/hal.c" \
"C:/Users/wmj/Desktop/BM1000_v1.1/sw/modules/ipark/src/32b/ipark.c" \
"C:/Users/wmj/Desktop/BM1000_v1.1/sw/drivers/drvic/modbus/mb.c" \
"C:/Users/wmj/Desktop/BM1000_v1.1/sw/modules/memCopy/src/memCopy.c" \
"C:/Users/wmj/Desktop/BM1000_v1.1/sw/drivers/drvic/motor.c" \
"C:/Users/wmj/Desktop/BM1000_v1.1/sw/modules/offset/src/32b/offset.c" \
"C:/Users/wmj/Desktop/BM1000_v1.1/sw/drivers/osc/src/32b/f28x/f2802x/osc.c" \
"C:/Users/wmj/Desktop/BM1000_v1.1/sw/modules/park/src/32b/park.c" \
"C:/Users/wmj/Desktop/BM1000_v1.1/sw/modules/pid/src/32b/pid.c" \
"C:/Users/wmj/Desktop/BM1000_v1.1/sw/drivers/pie/src/32b/f28x/f2802x/pie.c" \
"C:/Users/wmj/Desktop/BM1000_v1.1/sw/drivers/pll/src/32b/f28x/f2802x/pll.c" \
"C:/Users/wmj/Desktop/BM1000_v1.1/sw/drivers/drvic/process_ctrl.c" \
"C:/Users/wmj/Desktop/BM1000_v1.1/sw/solutions/instaspin/src/proj_bm1000.c" \
"C:/Users/wmj/Desktop/BM1000_v1.1/sw/drivers/pwm/src/32b/f28x/f2802x/pwm.c" \
"C:/Users/wmj/Desktop/BM1000_v1.1/sw/drivers/pwr/src/32b/f28x/f2802x/pwr.c" \
"C:/Users/wmj/Desktop/BM1000_v1.1/sw/drivers/sci/src/32b/f28x/f2802x/sci.c" \
"C:/Users/wmj/Desktop/BM1000_v1.1/sw/drivers/spi/src/32b/f28x/f2802x/spi.c" \
"C:/Users/wmj/Desktop/BM1000_v1.1/sw/modules/svgen/src/32b/svgen.c" \
"C:/Users/wmj/Desktop/BM1000_v1.1/sw/modules/svgen/src/32b/svgen_current.c" \
"C:/Users/wmj/Desktop/BM1000_v1.1/sw/drivers/timer/src/32b/f28x/f2802x/timer.c" \
"C:/Users/wmj/Desktop/BM1000_v1.1/sw/modules/traj/src/32b/traj.c" \
"C:/Users/wmj/Desktop/BM1000_v1.1/sw/modules/user/src/32b/user.c" \
"C:/Users/wmj/Desktop/BM1000_v1.1/sw/drivers/wdog/src/32b/f28x/f2802x/wdog.c" 


