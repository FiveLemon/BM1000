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
D:/BM1000Code/sw/modules/angle_gen/src/32b/angle_gen.c \
D:/BM1000Code/sw/modules/clarke/src/32b/clarke.c \
D:/BM1000Code/sw/drivers/clk/src/32b/f28x/f2802x/clk.c \
D:/BM1000Code/sw/drivers/cpu/src/32b/f28x/f2802x/cpu.c \
D:/BM1000Code/sw/modules/cpu_time/src/32b/cpu_time.c \
D:/BM1000Code/sw/modules/ctrl/src/32b/ctrl.c \
D:/BM1000Code/sw/modules/datalog/src/32b/datalog.c \
D:/BM1000Code/sw/modules/filter/src/32b/filter_fo.c \
D:/BM1000Code/sw/drivers/flash/src/32b/f28x/f2802x/flash.c \
D:/BM1000Code/sw/modules/fw/src/32b/fw.c \
D:/BM1000Code/sw/drivers/gpio/src/32b/f28x/f2802x/gpio.c \
D:/BM1000Code/sw/modules/hal/boards/hvkit_rev1p1/f28x/f2802x/src/hal.c \
D:/BM1000Code/sw/modules/ipark/src/32b/ipark.c \
D:/BM1000Code/sw/modules/memCopy/src/memCopy.c \
D:/BM1000Code/sw/modules/offset/src/32b/offset.c \
D:/BM1000Code/sw/drivers/osc/src/32b/f28x/f2802x/osc.c \
D:/BM1000Code/sw/modules/park/src/32b/park.c \
D:/BM1000Code/sw/modules/pid/src/32b/pid.c \
D:/BM1000Code/sw/drivers/pie/src/32b/f28x/f2802x/pie.c \
D:/BM1000Code/sw/drivers/pll/src/32b/f28x/f2802x/pll.c \
D:/BM1000Code/sw/solutions/instaspin_foc/src/proj_lab01b.c \
D:/BM1000Code/sw/drivers/pwm/src/32b/f28x/f2802x/pwm.c \
D:/BM1000Code/sw/drivers/pwr/src/32b/f28x/f2802x/pwr.c \
D:/BM1000Code/sw/drivers/spi/src/32b/f28x/f2802x/spi.c \
D:/BM1000Code/sw/modules/svgen/src/32b/svgen.c \
D:/BM1000Code/sw/modules/svgen/src/32b/svgen_current.c \
D:/BM1000Code/sw/drivers/timer/src/32b/f28x/f2802x/timer.c \
D:/BM1000Code/sw/modules/traj/src/32b/traj.c \
D:/BM1000Code/sw/modules/user/src/32b/user.c \
D:/BM1000Code/sw/modules/vs_freq/src/32b/vs_freq.c \
D:/BM1000Code/sw/drivers/wdog/src/32b/f28x/f2802x/wdog.c 

OBJS += \
./CodeStartBranch.obj \
./adc.obj \
./angle_gen.obj \
./clarke.obj \
./clk.obj \
./cpu.obj \
./cpu_time.obj \
./ctrl.obj \
./datalog.obj \
./filter_fo.obj \
./flash.obj \
./fw.obj \
./gpio.obj \
./hal.obj \
./ipark.obj \
./memCopy.obj \
./offset.obj \
./osc.obj \
./park.obj \
./pid.obj \
./pie.obj \
./pll.obj \
./proj_lab01b.obj \
./pwm.obj \
./pwr.obj \
./spi.obj \
./svgen.obj \
./svgen_current.obj \
./timer.obj \
./traj.obj \
./usDelay.obj \
./user.obj \
./vs_freq.obj \
./wdog.obj 

ASM_DEPS += \
./CodeStartBranch.d \
./usDelay.d 

C_DEPS += \
./adc.d \
./angle_gen.d \
./clarke.d \
./clk.d \
./cpu.d \
./cpu_time.d \
./ctrl.d \
./datalog.d \
./filter_fo.d \
./flash.d \
./fw.d \
./gpio.d \
./hal.d \
./ipark.d \
./memCopy.d \
./offset.d \
./osc.d \
./park.d \
./pid.d \
./pie.d \
./pll.d \
./proj_lab01b.d \
./pwm.d \
./pwr.d \
./spi.d \
./svgen.d \
./svgen_current.d \
./timer.d \
./traj.d \
./user.d \
./vs_freq.d \
./wdog.d 

C_DEPS__QUOTED += \
"adc.d" \
"angle_gen.d" \
"clarke.d" \
"clk.d" \
"cpu.d" \
"cpu_time.d" \
"ctrl.d" \
"datalog.d" \
"filter_fo.d" \
"flash.d" \
"fw.d" \
"gpio.d" \
"hal.d" \
"ipark.d" \
"memCopy.d" \
"offset.d" \
"osc.d" \
"park.d" \
"pid.d" \
"pie.d" \
"pll.d" \
"proj_lab01b.d" \
"pwm.d" \
"pwr.d" \
"spi.d" \
"svgen.d" \
"svgen_current.d" \
"timer.d" \
"traj.d" \
"user.d" \
"vs_freq.d" \
"wdog.d" 

OBJS__QUOTED += \
"CodeStartBranch.obj" \
"adc.obj" \
"angle_gen.obj" \
"clarke.obj" \
"clk.obj" \
"cpu.obj" \
"cpu_time.obj" \
"ctrl.obj" \
"datalog.obj" \
"filter_fo.obj" \
"flash.obj" \
"fw.obj" \
"gpio.obj" \
"hal.obj" \
"ipark.obj" \
"memCopy.obj" \
"offset.obj" \
"osc.obj" \
"park.obj" \
"pid.obj" \
"pie.obj" \
"pll.obj" \
"proj_lab01b.obj" \
"pwm.obj" \
"pwr.obj" \
"spi.obj" \
"svgen.obj" \
"svgen_current.obj" \
"timer.obj" \
"traj.obj" \
"usDelay.obj" \
"user.obj" \
"vs_freq.obj" \
"wdog.obj" 

ASM_DEPS__QUOTED += \
"CodeStartBranch.d" \
"usDelay.d" 

ASM_SRCS__QUOTED += \
"D:/BM1000Code/sw/drivers/cpu/src/32b/f28x/f2802x/CodeStartBranch.asm" \
"D:/BM1000Code/sw/modules/usDelay/src/32b/f28x/usDelay.asm" 

C_SRCS__QUOTED += \
"D:/BM1000Code/sw/drivers/adc/src/32b/f28x/f2802x/adc.c" \
"D:/BM1000Code/sw/modules/angle_gen/src/32b/angle_gen.c" \
"D:/BM1000Code/sw/modules/clarke/src/32b/clarke.c" \
"D:/BM1000Code/sw/drivers/clk/src/32b/f28x/f2802x/clk.c" \
"D:/BM1000Code/sw/drivers/cpu/src/32b/f28x/f2802x/cpu.c" \
"D:/BM1000Code/sw/modules/cpu_time/src/32b/cpu_time.c" \
"D:/BM1000Code/sw/modules/ctrl/src/32b/ctrl.c" \
"D:/BM1000Code/sw/modules/datalog/src/32b/datalog.c" \
"D:/BM1000Code/sw/modules/filter/src/32b/filter_fo.c" \
"D:/BM1000Code/sw/drivers/flash/src/32b/f28x/f2802x/flash.c" \
"D:/BM1000Code/sw/modules/fw/src/32b/fw.c" \
"D:/BM1000Code/sw/drivers/gpio/src/32b/f28x/f2802x/gpio.c" \
"D:/BM1000Code/sw/modules/hal/boards/hvkit_rev1p1/f28x/f2802x/src/hal.c" \
"D:/BM1000Code/sw/modules/ipark/src/32b/ipark.c" \
"D:/BM1000Code/sw/modules/memCopy/src/memCopy.c" \
"D:/BM1000Code/sw/modules/offset/src/32b/offset.c" \
"D:/BM1000Code/sw/drivers/osc/src/32b/f28x/f2802x/osc.c" \
"D:/BM1000Code/sw/modules/park/src/32b/park.c" \
"D:/BM1000Code/sw/modules/pid/src/32b/pid.c" \
"D:/BM1000Code/sw/drivers/pie/src/32b/f28x/f2802x/pie.c" \
"D:/BM1000Code/sw/drivers/pll/src/32b/f28x/f2802x/pll.c" \
"D:/BM1000Code/sw/solutions/instaspin_foc/src/proj_lab01b.c" \
"D:/BM1000Code/sw/drivers/pwm/src/32b/f28x/f2802x/pwm.c" \
"D:/BM1000Code/sw/drivers/pwr/src/32b/f28x/f2802x/pwr.c" \
"D:/BM1000Code/sw/drivers/spi/src/32b/f28x/f2802x/spi.c" \
"D:/BM1000Code/sw/modules/svgen/src/32b/svgen.c" \
"D:/BM1000Code/sw/modules/svgen/src/32b/svgen_current.c" \
"D:/BM1000Code/sw/drivers/timer/src/32b/f28x/f2802x/timer.c" \
"D:/BM1000Code/sw/modules/traj/src/32b/traj.c" \
"D:/BM1000Code/sw/modules/user/src/32b/user.c" \
"D:/BM1000Code/sw/modules/vs_freq/src/32b/vs_freq.c" \
"D:/BM1000Code/sw/drivers/wdog/src/32b/f28x/f2802x/wdog.c" 


