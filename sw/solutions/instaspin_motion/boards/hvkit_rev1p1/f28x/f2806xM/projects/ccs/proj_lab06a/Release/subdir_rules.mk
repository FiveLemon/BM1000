################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Each subdirectory must supply rules for building sources it contributes
CodeStartBranch.obj: D:/FOC_69/sw/drivers/cpu/src/32b/f28x/f2806x/CodeStartBranch.asm $(GEN_OPTS) | $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: C2000 Compiler'
	"C:/ti/ccsv6/tools/compiler/c2000_6.2.5/bin/cl2000" -v28 -ml -mt --cla_support=cla0 --vcu_support=vcu0 -O2 --include_path="D:/FOC_69/sw/modules/hal/boards/hvkit_rev1p1/f28x/f2806x/src/" --include_path="C:/ti/ccsv6/tools/compiler/c2000_6.2.5/include" --include_path="D:/FOC_69/sw/solutions/instaspin_motion/boards/hvkit_rev1p1/f28x/f2806xM/src" --include_path="D:/FOC_69" -g --define=FAST_ROM_V1p6 --diag_warning=225 --display_error_number --preproc_with_compile --preproc_dependency="CodeStartBranch.d" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

adc.obj: D:/FOC_69/sw/drivers/adc/src/32b/f28x/f2806x/adc.c $(GEN_OPTS) | $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: C2000 Compiler'
	"C:/ti/ccsv6/tools/compiler/c2000_6.2.5/bin/cl2000" -v28 -ml -mt --cla_support=cla0 --vcu_support=vcu0 -O2 --include_path="D:/FOC_69/sw/modules/hal/boards/hvkit_rev1p1/f28x/f2806x/src/" --include_path="C:/ti/ccsv6/tools/compiler/c2000_6.2.5/include" --include_path="D:/FOC_69/sw/solutions/instaspin_motion/boards/hvkit_rev1p1/f28x/f2806xM/src" --include_path="D:/FOC_69" -g --define=FAST_ROM_V1p6 --diag_warning=225 --display_error_number --preproc_with_compile --preproc_dependency="adc.d" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

clarke.obj: D:/FOC_69/sw/modules/clarke/src/32b/clarke.c $(GEN_OPTS) | $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: C2000 Compiler'
	"C:/ti/ccsv6/tools/compiler/c2000_6.2.5/bin/cl2000" -v28 -ml -mt --cla_support=cla0 --vcu_support=vcu0 -O2 --include_path="D:/FOC_69/sw/modules/hal/boards/hvkit_rev1p1/f28x/f2806x/src/" --include_path="C:/ti/ccsv6/tools/compiler/c2000_6.2.5/include" --include_path="D:/FOC_69/sw/solutions/instaspin_motion/boards/hvkit_rev1p1/f28x/f2806xM/src" --include_path="D:/FOC_69" -g --define=FAST_ROM_V1p6 --diag_warning=225 --display_error_number --preproc_with_compile --preproc_dependency="clarke.d" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

clk.obj: D:/FOC_69/sw/drivers/clk/src/32b/f28x/f2806x/clk.c $(GEN_OPTS) | $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: C2000 Compiler'
	"C:/ti/ccsv6/tools/compiler/c2000_6.2.5/bin/cl2000" -v28 -ml -mt --cla_support=cla0 --vcu_support=vcu0 -O2 --include_path="D:/FOC_69/sw/modules/hal/boards/hvkit_rev1p1/f28x/f2806x/src/" --include_path="C:/ti/ccsv6/tools/compiler/c2000_6.2.5/include" --include_path="D:/FOC_69/sw/solutions/instaspin_motion/boards/hvkit_rev1p1/f28x/f2806xM/src" --include_path="D:/FOC_69" -g --define=FAST_ROM_V1p6 --diag_warning=225 --display_error_number --preproc_with_compile --preproc_dependency="clk.d" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

cpu.obj: D:/FOC_69/sw/drivers/cpu/src/32b/f28x/f2806x/cpu.c $(GEN_OPTS) | $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: C2000 Compiler'
	"C:/ti/ccsv6/tools/compiler/c2000_6.2.5/bin/cl2000" -v28 -ml -mt --cla_support=cla0 --vcu_support=vcu0 -O2 --include_path="D:/FOC_69/sw/modules/hal/boards/hvkit_rev1p1/f28x/f2806x/src/" --include_path="C:/ti/ccsv6/tools/compiler/c2000_6.2.5/include" --include_path="D:/FOC_69/sw/solutions/instaspin_motion/boards/hvkit_rev1p1/f28x/f2806xM/src" --include_path="D:/FOC_69" -g --define=FAST_ROM_V1p6 --diag_warning=225 --display_error_number --preproc_with_compile --preproc_dependency="cpu.d" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

ctrl.obj: D:/FOC_69/sw/modules/ctrl/src/32b/ctrl.c $(GEN_OPTS) | $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: C2000 Compiler'
	"C:/ti/ccsv6/tools/compiler/c2000_6.2.5/bin/cl2000" -v28 -ml -mt --cla_support=cla0 --vcu_support=vcu0 -O2 --include_path="D:/FOC_69/sw/modules/hal/boards/hvkit_rev1p1/f28x/f2806x/src/" --include_path="C:/ti/ccsv6/tools/compiler/c2000_6.2.5/include" --include_path="D:/FOC_69/sw/solutions/instaspin_motion/boards/hvkit_rev1p1/f28x/f2806xM/src" --include_path="D:/FOC_69" -g --define=FAST_ROM_V1p6 --diag_warning=225 --display_error_number --preproc_with_compile --preproc_dependency="ctrl.d" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

filter_fo.obj: D:/FOC_69/sw/modules/filter/src/32b/filter_fo.c $(GEN_OPTS) | $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: C2000 Compiler'
	"C:/ti/ccsv6/tools/compiler/c2000_6.2.5/bin/cl2000" -v28 -ml -mt --cla_support=cla0 --vcu_support=vcu0 -O2 --include_path="D:/FOC_69/sw/modules/hal/boards/hvkit_rev1p1/f28x/f2806x/src/" --include_path="C:/ti/ccsv6/tools/compiler/c2000_6.2.5/include" --include_path="D:/FOC_69/sw/solutions/instaspin_motion/boards/hvkit_rev1p1/f28x/f2806xM/src" --include_path="D:/FOC_69" -g --define=FAST_ROM_V1p6 --diag_warning=225 --display_error_number --preproc_with_compile --preproc_dependency="filter_fo.d" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

flash.obj: D:/FOC_69/sw/drivers/flash/src/32b/f28x/f2806x/flash.c $(GEN_OPTS) | $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: C2000 Compiler'
	"C:/ti/ccsv6/tools/compiler/c2000_6.2.5/bin/cl2000" -v28 -ml -mt --cla_support=cla0 --vcu_support=vcu0 -O2 --include_path="D:/FOC_69/sw/modules/hal/boards/hvkit_rev1p1/f28x/f2806x/src/" --include_path="C:/ti/ccsv6/tools/compiler/c2000_6.2.5/include" --include_path="D:/FOC_69/sw/solutions/instaspin_motion/boards/hvkit_rev1p1/f28x/f2806xM/src" --include_path="D:/FOC_69" -g --define=FAST_ROM_V1p6 --diag_warning=225 --display_error_number --preproc_with_compile --preproc_dependency="flash.d" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

gpio.obj: D:/FOC_69/sw/drivers/gpio/src/32b/f28x/f2806x/gpio.c $(GEN_OPTS) | $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: C2000 Compiler'
	"C:/ti/ccsv6/tools/compiler/c2000_6.2.5/bin/cl2000" -v28 -ml -mt --cla_support=cla0 --vcu_support=vcu0 -O2 --include_path="D:/FOC_69/sw/modules/hal/boards/hvkit_rev1p1/f28x/f2806x/src/" --include_path="C:/ti/ccsv6/tools/compiler/c2000_6.2.5/include" --include_path="D:/FOC_69/sw/solutions/instaspin_motion/boards/hvkit_rev1p1/f28x/f2806xM/src" --include_path="D:/FOC_69" -g --define=FAST_ROM_V1p6 --diag_warning=225 --display_error_number --preproc_with_compile --preproc_dependency="gpio.d" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

hal.obj: D:/FOC_69/sw/modules/hal/boards/hvkit_rev1p1/f28x/f2806x/src/hal.c $(GEN_OPTS) | $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: C2000 Compiler'
	"C:/ti/ccsv6/tools/compiler/c2000_6.2.5/bin/cl2000" -v28 -ml -mt --cla_support=cla0 --vcu_support=vcu0 -O2 --include_path="D:/FOC_69/sw/modules/hal/boards/hvkit_rev1p1/f28x/f2806x/src/" --include_path="C:/ti/ccsv6/tools/compiler/c2000_6.2.5/include" --include_path="D:/FOC_69/sw/solutions/instaspin_motion/boards/hvkit_rev1p1/f28x/f2806xM/src" --include_path="D:/FOC_69" -g --define=FAST_ROM_V1p6 --diag_warning=225 --display_error_number --preproc_with_compile --preproc_dependency="hal.d" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

ipark.obj: D:/FOC_69/sw/modules/ipark/src/32b/ipark.c $(GEN_OPTS) | $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: C2000 Compiler'
	"C:/ti/ccsv6/tools/compiler/c2000_6.2.5/bin/cl2000" -v28 -ml -mt --cla_support=cla0 --vcu_support=vcu0 -O2 --include_path="D:/FOC_69/sw/modules/hal/boards/hvkit_rev1p1/f28x/f2806x/src/" --include_path="C:/ti/ccsv6/tools/compiler/c2000_6.2.5/include" --include_path="D:/FOC_69/sw/solutions/instaspin_motion/boards/hvkit_rev1p1/f28x/f2806xM/src" --include_path="D:/FOC_69" -g --define=FAST_ROM_V1p6 --diag_warning=225 --display_error_number --preproc_with_compile --preproc_dependency="ipark.d" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

mb.obj: D:/FOC_69/sw/drivers/drvic/modbus/mb.c $(GEN_OPTS) | $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: C2000 Compiler'
	"C:/ti/ccsv6/tools/compiler/c2000_6.2.5/bin/cl2000" -v28 -ml -mt --cla_support=cla0 --vcu_support=vcu0 -O2 --include_path="D:/FOC_69/sw/modules/hal/boards/hvkit_rev1p1/f28x/f2806x/src/" --include_path="C:/ti/ccsv6/tools/compiler/c2000_6.2.5/include" --include_path="D:/FOC_69/sw/solutions/instaspin_motion/boards/hvkit_rev1p1/f28x/f2806xM/src" --include_path="D:/FOC_69" -g --define=FAST_ROM_V1p6 --diag_warning=225 --display_error_number --preproc_with_compile --preproc_dependency="mb.d" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

offset.obj: D:/FOC_69/sw/modules/offset/src/32b/offset.c $(GEN_OPTS) | $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: C2000 Compiler'
	"C:/ti/ccsv6/tools/compiler/c2000_6.2.5/bin/cl2000" -v28 -ml -mt --cla_support=cla0 --vcu_support=vcu0 -O2 --include_path="D:/FOC_69/sw/modules/hal/boards/hvkit_rev1p1/f28x/f2806x/src/" --include_path="C:/ti/ccsv6/tools/compiler/c2000_6.2.5/include" --include_path="D:/FOC_69/sw/solutions/instaspin_motion/boards/hvkit_rev1p1/f28x/f2806xM/src" --include_path="D:/FOC_69" -g --define=FAST_ROM_V1p6 --diag_warning=225 --display_error_number --preproc_with_compile --preproc_dependency="offset.d" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

osc.obj: D:/FOC_69/sw/drivers/osc/src/32b/f28x/f2806x/osc.c $(GEN_OPTS) | $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: C2000 Compiler'
	"C:/ti/ccsv6/tools/compiler/c2000_6.2.5/bin/cl2000" -v28 -ml -mt --cla_support=cla0 --vcu_support=vcu0 -O2 --include_path="D:/FOC_69/sw/modules/hal/boards/hvkit_rev1p1/f28x/f2806x/src/" --include_path="C:/ti/ccsv6/tools/compiler/c2000_6.2.5/include" --include_path="D:/FOC_69/sw/solutions/instaspin_motion/boards/hvkit_rev1p1/f28x/f2806xM/src" --include_path="D:/FOC_69" -g --define=FAST_ROM_V1p6 --diag_warning=225 --display_error_number --preproc_with_compile --preproc_dependency="osc.d" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

park.obj: D:/FOC_69/sw/modules/park/src/32b/park.c $(GEN_OPTS) | $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: C2000 Compiler'
	"C:/ti/ccsv6/tools/compiler/c2000_6.2.5/bin/cl2000" -v28 -ml -mt --cla_support=cla0 --vcu_support=vcu0 -O2 --include_path="D:/FOC_69/sw/modules/hal/boards/hvkit_rev1p1/f28x/f2806x/src/" --include_path="C:/ti/ccsv6/tools/compiler/c2000_6.2.5/include" --include_path="D:/FOC_69/sw/solutions/instaspin_motion/boards/hvkit_rev1p1/f28x/f2806xM/src" --include_path="D:/FOC_69" -g --define=FAST_ROM_V1p6 --diag_warning=225 --display_error_number --preproc_with_compile --preproc_dependency="park.d" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

pid.obj: D:/FOC_69/sw/modules/pid/src/32b/pid.c $(GEN_OPTS) | $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: C2000 Compiler'
	"C:/ti/ccsv6/tools/compiler/c2000_6.2.5/bin/cl2000" -v28 -ml -mt --cla_support=cla0 --vcu_support=vcu0 -O2 --include_path="D:/FOC_69/sw/modules/hal/boards/hvkit_rev1p1/f28x/f2806x/src/" --include_path="C:/ti/ccsv6/tools/compiler/c2000_6.2.5/include" --include_path="D:/FOC_69/sw/solutions/instaspin_motion/boards/hvkit_rev1p1/f28x/f2806xM/src" --include_path="D:/FOC_69" -g --define=FAST_ROM_V1p6 --diag_warning=225 --display_error_number --preproc_with_compile --preproc_dependency="pid.d" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

pie.obj: D:/FOC_69/sw/drivers/pie/src/32b/f28x/f2806x/pie.c $(GEN_OPTS) | $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: C2000 Compiler'
	"C:/ti/ccsv6/tools/compiler/c2000_6.2.5/bin/cl2000" -v28 -ml -mt --cla_support=cla0 --vcu_support=vcu0 -O2 --include_path="D:/FOC_69/sw/modules/hal/boards/hvkit_rev1p1/f28x/f2806x/src/" --include_path="C:/ti/ccsv6/tools/compiler/c2000_6.2.5/include" --include_path="D:/FOC_69/sw/solutions/instaspin_motion/boards/hvkit_rev1p1/f28x/f2806xM/src" --include_path="D:/FOC_69" -g --define=FAST_ROM_V1p6 --diag_warning=225 --display_error_number --preproc_with_compile --preproc_dependency="pie.d" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

pll.obj: D:/FOC_69/sw/drivers/pll/src/32b/f28x/f2806x/pll.c $(GEN_OPTS) | $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: C2000 Compiler'
	"C:/ti/ccsv6/tools/compiler/c2000_6.2.5/bin/cl2000" -v28 -ml -mt --cla_support=cla0 --vcu_support=vcu0 -O2 --include_path="D:/FOC_69/sw/modules/hal/boards/hvkit_rev1p1/f28x/f2806x/src/" --include_path="C:/ti/ccsv6/tools/compiler/c2000_6.2.5/include" --include_path="D:/FOC_69/sw/solutions/instaspin_motion/boards/hvkit_rev1p1/f28x/f2806xM/src" --include_path="D:/FOC_69" -g --define=FAST_ROM_V1p6 --diag_warning=225 --display_error_number --preproc_with_compile --preproc_dependency="pll.d" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

proj_lab06a.obj: D:/FOC_69/sw/solutions/instaspin_motion/src/proj_lab06a.c $(GEN_OPTS) | $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: C2000 Compiler'
	"C:/ti/ccsv6/tools/compiler/c2000_6.2.5/bin/cl2000" -v28 -ml -mt --cla_support=cla0 --vcu_support=vcu0 -O2 --include_path="D:/FOC_69/sw/modules/hal/boards/hvkit_rev1p1/f28x/f2806x/src/" --include_path="C:/ti/ccsv6/tools/compiler/c2000_6.2.5/include" --include_path="D:/FOC_69/sw/solutions/instaspin_motion/boards/hvkit_rev1p1/f28x/f2806xM/src" --include_path="D:/FOC_69" -g --define=FAST_ROM_V1p6 --diag_warning=225 --display_error_number --preproc_with_compile --preproc_dependency="proj_lab06a.d" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

pwm.obj: D:/FOC_69/sw/drivers/pwm/src/32b/f28x/f2806x/pwm.c $(GEN_OPTS) | $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: C2000 Compiler'
	"C:/ti/ccsv6/tools/compiler/c2000_6.2.5/bin/cl2000" -v28 -ml -mt --cla_support=cla0 --vcu_support=vcu0 -O2 --include_path="D:/FOC_69/sw/modules/hal/boards/hvkit_rev1p1/f28x/f2806x/src/" --include_path="C:/ti/ccsv6/tools/compiler/c2000_6.2.5/include" --include_path="D:/FOC_69/sw/solutions/instaspin_motion/boards/hvkit_rev1p1/f28x/f2806xM/src" --include_path="D:/FOC_69" -g --define=FAST_ROM_V1p6 --diag_warning=225 --display_error_number --preproc_with_compile --preproc_dependency="pwm.d" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

pwr.obj: D:/FOC_69/sw/drivers/pwr/src/32b/f28x/f2806x/pwr.c $(GEN_OPTS) | $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: C2000 Compiler'
	"C:/ti/ccsv6/tools/compiler/c2000_6.2.5/bin/cl2000" -v28 -ml -mt --cla_support=cla0 --vcu_support=vcu0 -O2 --include_path="D:/FOC_69/sw/modules/hal/boards/hvkit_rev1p1/f28x/f2806x/src/" --include_path="C:/ti/ccsv6/tools/compiler/c2000_6.2.5/include" --include_path="D:/FOC_69/sw/solutions/instaspin_motion/boards/hvkit_rev1p1/f28x/f2806xM/src" --include_path="D:/FOC_69" -g --define=FAST_ROM_V1p6 --diag_warning=225 --display_error_number --preproc_with_compile --preproc_dependency="pwr.d" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

sci.obj: D:/BM1000/sw/drivers/sci/src/32b/f28x/f2806x/sci.c $(GEN_OPTS) | $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: C2000 Compiler'
	"C:/ti/ccsv6/tools/compiler/c2000_6.2.5/bin/cl2000" -v28 -ml -mt --cla_support=cla0 --vcu_support=vcu0 -O2 --include_path="D:/FOC_69/sw/modules/hal/boards/hvkit_rev1p1/f28x/f2806x/src/" --include_path="C:/ti/ccsv6/tools/compiler/c2000_6.2.5/include" --include_path="D:/FOC_69/sw/solutions/instaspin_motion/boards/hvkit_rev1p1/f28x/f2806xM/src" --include_path="D:/FOC_69" -g --define=FAST_ROM_V1p6 --diag_warning=225 --display_error_number --preproc_with_compile --preproc_dependency="sci.d" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

spi.obj: D:/FOC_69/sw/drivers/spi/src/32b/f28x/f2806x/spi.c $(GEN_OPTS) | $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: C2000 Compiler'
	"C:/ti/ccsv6/tools/compiler/c2000_6.2.5/bin/cl2000" -v28 -ml -mt --cla_support=cla0 --vcu_support=vcu0 -O2 --include_path="D:/FOC_69/sw/modules/hal/boards/hvkit_rev1p1/f28x/f2806x/src/" --include_path="C:/ti/ccsv6/tools/compiler/c2000_6.2.5/include" --include_path="D:/FOC_69/sw/solutions/instaspin_motion/boards/hvkit_rev1p1/f28x/f2806xM/src" --include_path="D:/FOC_69" -g --define=FAST_ROM_V1p6 --diag_warning=225 --display_error_number --preproc_with_compile --preproc_dependency="spi.d" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

svgen.obj: D:/FOC_69/sw/modules/svgen/src/32b/svgen.c $(GEN_OPTS) | $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: C2000 Compiler'
	"C:/ti/ccsv6/tools/compiler/c2000_6.2.5/bin/cl2000" -v28 -ml -mt --cla_support=cla0 --vcu_support=vcu0 -O2 --include_path="D:/FOC_69/sw/modules/hal/boards/hvkit_rev1p1/f28x/f2806x/src/" --include_path="C:/ti/ccsv6/tools/compiler/c2000_6.2.5/include" --include_path="D:/FOC_69/sw/solutions/instaspin_motion/boards/hvkit_rev1p1/f28x/f2806xM/src" --include_path="D:/FOC_69" -g --define=FAST_ROM_V1p6 --diag_warning=225 --display_error_number --preproc_with_compile --preproc_dependency="svgen.d" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

timer.obj: D:/FOC_69/sw/drivers/timer/src/32b/f28x/f2806x/timer.c $(GEN_OPTS) | $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: C2000 Compiler'
	"C:/ti/ccsv6/tools/compiler/c2000_6.2.5/bin/cl2000" -v28 -ml -mt --cla_support=cla0 --vcu_support=vcu0 -O2 --include_path="D:/FOC_69/sw/modules/hal/boards/hvkit_rev1p1/f28x/f2806x/src/" --include_path="C:/ti/ccsv6/tools/compiler/c2000_6.2.5/include" --include_path="D:/FOC_69/sw/solutions/instaspin_motion/boards/hvkit_rev1p1/f28x/f2806xM/src" --include_path="D:/FOC_69" -g --define=FAST_ROM_V1p6 --diag_warning=225 --display_error_number --preproc_with_compile --preproc_dependency="timer.d" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

traj.obj: D:/FOC_69/sw/modules/traj/src/32b/traj.c $(GEN_OPTS) | $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: C2000 Compiler'
	"C:/ti/ccsv6/tools/compiler/c2000_6.2.5/bin/cl2000" -v28 -ml -mt --cla_support=cla0 --vcu_support=vcu0 -O2 --include_path="D:/FOC_69/sw/modules/hal/boards/hvkit_rev1p1/f28x/f2806x/src/" --include_path="C:/ti/ccsv6/tools/compiler/c2000_6.2.5/include" --include_path="D:/FOC_69/sw/solutions/instaspin_motion/boards/hvkit_rev1p1/f28x/f2806xM/src" --include_path="D:/FOC_69" -g --define=FAST_ROM_V1p6 --diag_warning=225 --display_error_number --preproc_with_compile --preproc_dependency="traj.d" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

usDelay.obj: D:/FOC_69/sw/modules/usDelay/src/32b/f28x/usDelay.asm $(GEN_OPTS) | $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: C2000 Compiler'
	"C:/ti/ccsv6/tools/compiler/c2000_6.2.5/bin/cl2000" -v28 -ml -mt --cla_support=cla0 --vcu_support=vcu0 -O2 --include_path="D:/FOC_69/sw/modules/hal/boards/hvkit_rev1p1/f28x/f2806x/src/" --include_path="C:/ti/ccsv6/tools/compiler/c2000_6.2.5/include" --include_path="D:/FOC_69/sw/solutions/instaspin_motion/boards/hvkit_rev1p1/f28x/f2806xM/src" --include_path="D:/FOC_69" -g --define=FAST_ROM_V1p6 --diag_warning=225 --display_error_number --preproc_with_compile --preproc_dependency="usDelay.d" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

user.obj: D:/FOC_69/sw/modules/user/src/32b/user.c $(GEN_OPTS) | $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: C2000 Compiler'
	"C:/ti/ccsv6/tools/compiler/c2000_6.2.5/bin/cl2000" -v28 -ml -mt --cla_support=cla0 --vcu_support=vcu0 -O2 --include_path="D:/FOC_69/sw/modules/hal/boards/hvkit_rev1p1/f28x/f2806x/src/" --include_path="C:/ti/ccsv6/tools/compiler/c2000_6.2.5/include" --include_path="D:/FOC_69/sw/solutions/instaspin_motion/boards/hvkit_rev1p1/f28x/f2806xM/src" --include_path="D:/FOC_69" -g --define=FAST_ROM_V1p6 --diag_warning=225 --display_error_number --preproc_with_compile --preproc_dependency="user.d" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

wdog.obj: D:/FOC_69/sw/drivers/wdog/src/32b/f28x/f2806x/wdog.c $(GEN_OPTS) | $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: C2000 Compiler'
	"C:/ti/ccsv6/tools/compiler/c2000_6.2.5/bin/cl2000" -v28 -ml -mt --cla_support=cla0 --vcu_support=vcu0 -O2 --include_path="D:/FOC_69/sw/modules/hal/boards/hvkit_rev1p1/f28x/f2806x/src/" --include_path="C:/ti/ccsv6/tools/compiler/c2000_6.2.5/include" --include_path="D:/FOC_69/sw/solutions/instaspin_motion/boards/hvkit_rev1p1/f28x/f2806xM/src" --include_path="D:/FOC_69" -g --define=FAST_ROM_V1p6 --diag_warning=225 --display_error_number --preproc_with_compile --preproc_dependency="wdog.d" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '


