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
D:/BM1000/sw/modules/iqmath/lib/f28x/32b/IQmath.lib \
D:/BM1000/sw/modules/fast/lib/32b/f28x/f2802x/fast_public.lib 

ASM_SRCS += \
D:/BM1000/sw/drivers/cpu/src/32b/f28x/f2802x/CodeStartBranch.asm \
D:/BM1000/sw/modules/usDelay/src/32b/f28x/usDelay.asm 

C_SRCS += \
D:/BM1000/sw/drivers/adc/src/32b/f28x/f2802x/adc.c \
D:/BM1000/sw/drivers/clk/src/32b/f28x/f2802x/clk.c \
D:/BM1000/sw/drivers/cpu/src/32b/f28x/f2802x/cpu.c \
D:/BM1000/sw/drivers/flash/src/32b/f28x/f2802x/flash.c \
D:/BM1000/sw/drivers/gpio/src/32b/f28x/f2802x/gpio.c \
D:/BM1000/sw/modules/hal/boards/hvkit_rev1p1/f28x/f2802x/src/hal.c \
D:/BM1000/sw/drivers/i2c/src/32b/f28x/f2802x/i2c.c \
D:/BM1000/sw/drivers/drvic/modbus/mb.c \
D:/BM1000/sw/modules/memCopy/src/memCopy.c \
D:/BM1000/sw/drivers/osc/src/32b/f28x/f2802x/osc.c \
D:/BM1000/sw/drivers/pie/src/32b/f28x/f2802x/pie.c \
D:/BM1000/sw/drivers/pll/src/32b/f28x/f2802x/pll.c \
D:/BM1000/sw/solutions/instaspin_foc/src/proj_lab01.c \
D:/BM1000/sw/drivers/pwm/src/32b/f28x/f2802x/pwm.c \
D:/BM1000/sw/drivers/pwr/src/32b/f28x/f2802x/pwr.c \
D:/BM1000/sw/drivers/sci/src/32b/f28x/f2802x/sci.c \
D:/BM1000/sw/drivers/spi/src/32b/f28x/f2802x/spi.c \
D:/BM1000/sw/drivers/timer/src/32b/f28x/f2802x/timer.c \
D:/BM1000/sw/modules/user/src/32b/user.c \
D:/BM1000/sw/drivers/wdog/src/32b/f28x/f2802x/wdog.c 

OBJS += \
./CodeStartBranch.obj \
./adc.obj \
./clk.obj \
./cpu.obj \
./flash.obj \
./gpio.obj \
./hal.obj \
./i2c.obj \
./mb.obj \
./memCopy.obj \
./osc.obj \
./pie.obj \
./pll.obj \
./proj_lab01.obj \
./pwm.obj \
./pwr.obj \
./sci.obj \
./spi.obj \
./timer.obj \
./usDelay.obj \
./user.obj \
./wdog.obj 

ASM_DEPS += \
./CodeStartBranch.d \
./usDelay.d 

C_DEPS += \
./adc.d \
./clk.d \
./cpu.d \
./flash.d \
./gpio.d \
./hal.d \
./i2c.d \
./mb.d \
./memCopy.d \
./osc.d \
./pie.d \
./pll.d \
./proj_lab01.d \
./pwm.d \
./pwr.d \
./sci.d \
./spi.d \
./timer.d \
./user.d \
./wdog.d 

C_DEPS__QUOTED += \
"adc.d" \
"clk.d" \
"cpu.d" \
"flash.d" \
"gpio.d" \
"hal.d" \
"i2c.d" \
"mb.d" \
"memCopy.d" \
"osc.d" \
"pie.d" \
"pll.d" \
"proj_lab01.d" \
"pwm.d" \
"pwr.d" \
"sci.d" \
"spi.d" \
"timer.d" \
"user.d" \
"wdog.d" 

OBJS__QUOTED += \
"CodeStartBranch.obj" \
"adc.obj" \
"clk.obj" \
"cpu.obj" \
"flash.obj" \
"gpio.obj" \
"hal.obj" \
"i2c.obj" \
"mb.obj" \
"memCopy.obj" \
"osc.obj" \
"pie.obj" \
"pll.obj" \
"proj_lab01.obj" \
"pwm.obj" \
"pwr.obj" \
"sci.obj" \
"spi.obj" \
"timer.obj" \
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
"D:/BM1000/sw/drivers/clk/src/32b/f28x/f2802x/clk.c" \
"D:/BM1000/sw/drivers/cpu/src/32b/f28x/f2802x/cpu.c" \
"D:/BM1000/sw/drivers/flash/src/32b/f28x/f2802x/flash.c" \
"D:/BM1000/sw/drivers/gpio/src/32b/f28x/f2802x/gpio.c" \
"D:/BM1000/sw/modules/hal/boards/hvkit_rev1p1/f28x/f2802x/src/hal.c" \
"D:/BM1000/sw/drivers/i2c/src/32b/f28x/f2802x/i2c.c" \
"D:/BM1000/sw/drivers/drvic/modbus/mb.c" \
"D:/BM1000/sw/modules/memCopy/src/memCopy.c" \
"D:/BM1000/sw/drivers/osc/src/32b/f28x/f2802x/osc.c" \
"D:/BM1000/sw/drivers/pie/src/32b/f28x/f2802x/pie.c" \
"D:/BM1000/sw/drivers/pll/src/32b/f28x/f2802x/pll.c" \
"D:/BM1000/sw/solutions/instaspin_foc/src/proj_lab01.c" \
"D:/BM1000/sw/drivers/pwm/src/32b/f28x/f2802x/pwm.c" \
"D:/BM1000/sw/drivers/pwr/src/32b/f28x/f2802x/pwr.c" \
"D:/BM1000/sw/drivers/sci/src/32b/f28x/f2802x/sci.c" \
"D:/BM1000/sw/drivers/spi/src/32b/f28x/f2802x/spi.c" \
"D:/BM1000/sw/drivers/timer/src/32b/f28x/f2802x/timer.c" \
"D:/BM1000/sw/modules/user/src/32b/user.c" \
"D:/BM1000/sw/drivers/wdog/src/32b/f28x/f2802x/wdog.c" 


