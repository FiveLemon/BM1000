################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Each subdirectory must supply rules for building sources it contributes
CodeStartBranch.obj: C:/ti/motorware/motorware_1_01_00_18/sw/drivers/cpu/src/32b/f28x/f2806x/CodeStartBranch.asm $(GEN_OPTS) | $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: C2000 Compiler'
	"C:/ti/ccsv6/tools/compiler/c2000_6.2.5/bin/cl2000" -v28 -ml -mt --cla_support=cla0 --float_support=softlib --vcu_support=vcu0 -O2 --include_path="C:/ti/motorware/motorware_1_01_00_18/sw/modules/hal/boards/hvkit_rev1p1/f28x/f2806x/src/" --include_path="C:/ti/ccsv6/tools/compiler/c2000_6.2.5/include" --include_path="C:/ti/motorware/motorware_1_01_00_18/sw/solutions/instaspin_foc/boards/hvkit_rev1p1/f28x/f2806xF/src" --include_path="C:/ti/motorware/motorware_1_01_00_18" -g --define=FAST_ROM_V1p6 --diag_warning=225 --display_error_number --preproc_with_compile --preproc_dependency="CodeStartBranch.d" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

adc.obj: C:/ti/motorware/motorware_1_01_00_18/sw/drivers/adc/src/32b/f28x/f2806x/adc.c $(GEN_OPTS) | $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: C2000 Compiler'
	"C:/ti/ccsv6/tools/compiler/c2000_6.2.5/bin/cl2000" -v28 -ml -mt --cla_support=cla0 --float_support=softlib --vcu_support=vcu0 -O2 --include_path="C:/ti/motorware/motorware_1_01_00_18/sw/modules/hal/boards/hvkit_rev1p1/f28x/f2806x/src/" --include_path="C:/ti/ccsv6/tools/compiler/c2000_6.2.5/include" --include_path="C:/ti/motorware/motorware_1_01_00_18/sw/solutions/instaspin_foc/boards/hvkit_rev1p1/f28x/f2806xF/src" --include_path="C:/ti/motorware/motorware_1_01_00_18" -g --define=FAST_ROM_V1p6 --diag_warning=225 --display_error_number --preproc_with_compile --preproc_dependency="adc.d" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

clk.obj: C:/ti/motorware/motorware_1_01_00_18/sw/drivers/clk/src/32b/f28x/f2806x/clk.c $(GEN_OPTS) | $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: C2000 Compiler'
	"C:/ti/ccsv6/tools/compiler/c2000_6.2.5/bin/cl2000" -v28 -ml -mt --cla_support=cla0 --float_support=softlib --vcu_support=vcu0 -O2 --include_path="C:/ti/motorware/motorware_1_01_00_18/sw/modules/hal/boards/hvkit_rev1p1/f28x/f2806x/src/" --include_path="C:/ti/ccsv6/tools/compiler/c2000_6.2.5/include" --include_path="C:/ti/motorware/motorware_1_01_00_18/sw/solutions/instaspin_foc/boards/hvkit_rev1p1/f28x/f2806xF/src" --include_path="C:/ti/motorware/motorware_1_01_00_18" -g --define=FAST_ROM_V1p6 --diag_warning=225 --display_error_number --preproc_with_compile --preproc_dependency="clk.d" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

cpu.obj: C:/ti/motorware/motorware_1_01_00_18/sw/drivers/cpu/src/32b/f28x/f2806x/cpu.c $(GEN_OPTS) | $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: C2000 Compiler'
	"C:/ti/ccsv6/tools/compiler/c2000_6.2.5/bin/cl2000" -v28 -ml -mt --cla_support=cla0 --float_support=softlib --vcu_support=vcu0 -O2 --include_path="C:/ti/motorware/motorware_1_01_00_18/sw/modules/hal/boards/hvkit_rev1p1/f28x/f2806x/src/" --include_path="C:/ti/ccsv6/tools/compiler/c2000_6.2.5/include" --include_path="C:/ti/motorware/motorware_1_01_00_18/sw/solutions/instaspin_foc/boards/hvkit_rev1p1/f28x/f2806xF/src" --include_path="C:/ti/motorware/motorware_1_01_00_18" -g --define=FAST_ROM_V1p6 --diag_warning=225 --display_error_number --preproc_with_compile --preproc_dependency="cpu.d" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

flash.obj: C:/ti/motorware/motorware_1_01_00_18/sw/drivers/flash/src/32b/f28x/f2806x/flash.c $(GEN_OPTS) | $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: C2000 Compiler'
	"C:/ti/ccsv6/tools/compiler/c2000_6.2.5/bin/cl2000" -v28 -ml -mt --cla_support=cla0 --float_support=softlib --vcu_support=vcu0 -O2 --include_path="C:/ti/motorware/motorware_1_01_00_18/sw/modules/hal/boards/hvkit_rev1p1/f28x/f2806x/src/" --include_path="C:/ti/ccsv6/tools/compiler/c2000_6.2.5/include" --include_path="C:/ti/motorware/motorware_1_01_00_18/sw/solutions/instaspin_foc/boards/hvkit_rev1p1/f28x/f2806xF/src" --include_path="C:/ti/motorware/motorware_1_01_00_18" -g --define=FAST_ROM_V1p6 --diag_warning=225 --display_error_number --preproc_with_compile --preproc_dependency="flash.d" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

gpio.obj: C:/ti/motorware/motorware_1_01_00_18/sw/drivers/gpio/src/32b/f28x/f2806x/gpio.c $(GEN_OPTS) | $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: C2000 Compiler'
	"C:/ti/ccsv6/tools/compiler/c2000_6.2.5/bin/cl2000" -v28 -ml -mt --cla_support=cla0 --float_support=softlib --vcu_support=vcu0 -O2 --include_path="C:/ti/motorware/motorware_1_01_00_18/sw/modules/hal/boards/hvkit_rev1p1/f28x/f2806x/src/" --include_path="C:/ti/ccsv6/tools/compiler/c2000_6.2.5/include" --include_path="C:/ti/motorware/motorware_1_01_00_18/sw/solutions/instaspin_foc/boards/hvkit_rev1p1/f28x/f2806xF/src" --include_path="C:/ti/motorware/motorware_1_01_00_18" -g --define=FAST_ROM_V1p6 --diag_warning=225 --display_error_number --preproc_with_compile --preproc_dependency="gpio.d" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

hal.obj: C:/ti/motorware/motorware_1_01_00_18/sw/modules/hal/boards/hvkit_rev1p1/f28x/f2806x/src/hal.c $(GEN_OPTS) | $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: C2000 Compiler'
	"C:/ti/ccsv6/tools/compiler/c2000_6.2.5/bin/cl2000" -v28 -ml -mt --cla_support=cla0 --float_support=softlib --vcu_support=vcu0 -O2 --include_path="C:/ti/motorware/motorware_1_01_00_18/sw/modules/hal/boards/hvkit_rev1p1/f28x/f2806x/src/" --include_path="C:/ti/ccsv6/tools/compiler/c2000_6.2.5/include" --include_path="C:/ti/motorware/motorware_1_01_00_18/sw/solutions/instaspin_foc/boards/hvkit_rev1p1/f28x/f2806xF/src" --include_path="C:/ti/motorware/motorware_1_01_00_18" -g --define=FAST_ROM_V1p6 --diag_warning=225 --display_error_number --preproc_with_compile --preproc_dependency="hal.d" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

osc.obj: C:/ti/motorware/motorware_1_01_00_18/sw/drivers/osc/src/32b/f28x/f2806x/osc.c $(GEN_OPTS) | $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: C2000 Compiler'
	"C:/ti/ccsv6/tools/compiler/c2000_6.2.5/bin/cl2000" -v28 -ml -mt --cla_support=cla0 --float_support=softlib --vcu_support=vcu0 -O2 --include_path="C:/ti/motorware/motorware_1_01_00_18/sw/modules/hal/boards/hvkit_rev1p1/f28x/f2806x/src/" --include_path="C:/ti/ccsv6/tools/compiler/c2000_6.2.5/include" --include_path="C:/ti/motorware/motorware_1_01_00_18/sw/solutions/instaspin_foc/boards/hvkit_rev1p1/f28x/f2806xF/src" --include_path="C:/ti/motorware/motorware_1_01_00_18" -g --define=FAST_ROM_V1p6 --diag_warning=225 --display_error_number --preproc_with_compile --preproc_dependency="osc.d" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

pie.obj: C:/ti/motorware/motorware_1_01_00_18/sw/drivers/pie/src/32b/f28x/f2806x/pie.c $(GEN_OPTS) | $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: C2000 Compiler'
	"C:/ti/ccsv6/tools/compiler/c2000_6.2.5/bin/cl2000" -v28 -ml -mt --cla_support=cla0 --float_support=softlib --vcu_support=vcu0 -O2 --include_path="C:/ti/motorware/motorware_1_01_00_18/sw/modules/hal/boards/hvkit_rev1p1/f28x/f2806x/src/" --include_path="C:/ti/ccsv6/tools/compiler/c2000_6.2.5/include" --include_path="C:/ti/motorware/motorware_1_01_00_18/sw/solutions/instaspin_foc/boards/hvkit_rev1p1/f28x/f2806xF/src" --include_path="C:/ti/motorware/motorware_1_01_00_18" -g --define=FAST_ROM_V1p6 --diag_warning=225 --display_error_number --preproc_with_compile --preproc_dependency="pie.d" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

pll.obj: C:/ti/motorware/motorware_1_01_00_18/sw/drivers/pll/src/32b/f28x/f2806x/pll.c $(GEN_OPTS) | $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: C2000 Compiler'
	"C:/ti/ccsv6/tools/compiler/c2000_6.2.5/bin/cl2000" -v28 -ml -mt --cla_support=cla0 --float_support=softlib --vcu_support=vcu0 -O2 --include_path="C:/ti/motorware/motorware_1_01_00_18/sw/modules/hal/boards/hvkit_rev1p1/f28x/f2806x/src/" --include_path="C:/ti/ccsv6/tools/compiler/c2000_6.2.5/include" --include_path="C:/ti/motorware/motorware_1_01_00_18/sw/solutions/instaspin_foc/boards/hvkit_rev1p1/f28x/f2806xF/src" --include_path="C:/ti/motorware/motorware_1_01_00_18" -g --define=FAST_ROM_V1p6 --diag_warning=225 --display_error_number --preproc_with_compile --preproc_dependency="pll.d" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

proj_lab02a.obj: C:/ti/motorware/motorware_1_01_00_18/sw/solutions/instaspin_foc/src/proj_lab02a.c $(GEN_OPTS) | $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: C2000 Compiler'
	"C:/ti/ccsv6/tools/compiler/c2000_6.2.5/bin/cl2000" -v28 -ml -mt --cla_support=cla0 --float_support=softlib --vcu_support=vcu0 -O2 --include_path="C:/ti/motorware/motorware_1_01_00_18/sw/modules/hal/boards/hvkit_rev1p1/f28x/f2806x/src/" --include_path="C:/ti/ccsv6/tools/compiler/c2000_6.2.5/include" --include_path="C:/ti/motorware/motorware_1_01_00_18/sw/solutions/instaspin_foc/boards/hvkit_rev1p1/f28x/f2806xF/src" --include_path="C:/ti/motorware/motorware_1_01_00_18" -g --define=FAST_ROM_V1p6 --diag_warning=225 --display_error_number --preproc_with_compile --preproc_dependency="proj_lab02a.d" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

pwm.obj: C:/ti/motorware/motorware_1_01_00_18/sw/drivers/pwm/src/32b/f28x/f2806x/pwm.c $(GEN_OPTS) | $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: C2000 Compiler'
	"C:/ti/ccsv6/tools/compiler/c2000_6.2.5/bin/cl2000" -v28 -ml -mt --cla_support=cla0 --float_support=softlib --vcu_support=vcu0 -O2 --include_path="C:/ti/motorware/motorware_1_01_00_18/sw/modules/hal/boards/hvkit_rev1p1/f28x/f2806x/src/" --include_path="C:/ti/ccsv6/tools/compiler/c2000_6.2.5/include" --include_path="C:/ti/motorware/motorware_1_01_00_18/sw/solutions/instaspin_foc/boards/hvkit_rev1p1/f28x/f2806xF/src" --include_path="C:/ti/motorware/motorware_1_01_00_18" -g --define=FAST_ROM_V1p6 --diag_warning=225 --display_error_number --preproc_with_compile --preproc_dependency="pwm.d" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

pwr.obj: C:/ti/motorware/motorware_1_01_00_18/sw/drivers/pwr/src/32b/f28x/f2806x/pwr.c $(GEN_OPTS) | $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: C2000 Compiler'
	"C:/ti/ccsv6/tools/compiler/c2000_6.2.5/bin/cl2000" -v28 -ml -mt --cla_support=cla0 --float_support=softlib --vcu_support=vcu0 -O2 --include_path="C:/ti/motorware/motorware_1_01_00_18/sw/modules/hal/boards/hvkit_rev1p1/f28x/f2806x/src/" --include_path="C:/ti/ccsv6/tools/compiler/c2000_6.2.5/include" --include_path="C:/ti/motorware/motorware_1_01_00_18/sw/solutions/instaspin_foc/boards/hvkit_rev1p1/f28x/f2806xF/src" --include_path="C:/ti/motorware/motorware_1_01_00_18" -g --define=FAST_ROM_V1p6 --diag_warning=225 --display_error_number --preproc_with_compile --preproc_dependency="pwr.d" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

timer.obj: C:/ti/motorware/motorware_1_01_00_18/sw/drivers/timer/src/32b/f28x/f2806x/timer.c $(GEN_OPTS) | $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: C2000 Compiler'
	"C:/ti/ccsv6/tools/compiler/c2000_6.2.5/bin/cl2000" -v28 -ml -mt --cla_support=cla0 --float_support=softlib --vcu_support=vcu0 -O2 --include_path="C:/ti/motorware/motorware_1_01_00_18/sw/modules/hal/boards/hvkit_rev1p1/f28x/f2806x/src/" --include_path="C:/ti/ccsv6/tools/compiler/c2000_6.2.5/include" --include_path="C:/ti/motorware/motorware_1_01_00_18/sw/solutions/instaspin_foc/boards/hvkit_rev1p1/f28x/f2806xF/src" --include_path="C:/ti/motorware/motorware_1_01_00_18" -g --define=FAST_ROM_V1p6 --diag_warning=225 --display_error_number --preproc_with_compile --preproc_dependency="timer.d" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

usDelay.obj: C:/ti/motorware/motorware_1_01_00_18/sw/modules/usDelay/src/32b/f28x/usDelay.asm $(GEN_OPTS) | $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: C2000 Compiler'
	"C:/ti/ccsv6/tools/compiler/c2000_6.2.5/bin/cl2000" -v28 -ml -mt --cla_support=cla0 --float_support=softlib --vcu_support=vcu0 -O2 --include_path="C:/ti/motorware/motorware_1_01_00_18/sw/modules/hal/boards/hvkit_rev1p1/f28x/f2806x/src/" --include_path="C:/ti/ccsv6/tools/compiler/c2000_6.2.5/include" --include_path="C:/ti/motorware/motorware_1_01_00_18/sw/solutions/instaspin_foc/boards/hvkit_rev1p1/f28x/f2806xF/src" --include_path="C:/ti/motorware/motorware_1_01_00_18" -g --define=FAST_ROM_V1p6 --diag_warning=225 --display_error_number --preproc_with_compile --preproc_dependency="usDelay.d" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

user.obj: C:/ti/motorware/motorware_1_01_00_18/sw/modules/user/src/32b/user.c $(GEN_OPTS) | $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: C2000 Compiler'
	"C:/ti/ccsv6/tools/compiler/c2000_6.2.5/bin/cl2000" -v28 -ml -mt --cla_support=cla0 --float_support=softlib --vcu_support=vcu0 -O2 --include_path="C:/ti/motorware/motorware_1_01_00_18/sw/modules/hal/boards/hvkit_rev1p1/f28x/f2806x/src/" --include_path="C:/ti/ccsv6/tools/compiler/c2000_6.2.5/include" --include_path="C:/ti/motorware/motorware_1_01_00_18/sw/solutions/instaspin_foc/boards/hvkit_rev1p1/f28x/f2806xF/src" --include_path="C:/ti/motorware/motorware_1_01_00_18" -g --define=FAST_ROM_V1p6 --diag_warning=225 --display_error_number --preproc_with_compile --preproc_dependency="user.d" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

wdog.obj: C:/ti/motorware/motorware_1_01_00_18/sw/drivers/wdog/src/32b/f28x/f2806x/wdog.c $(GEN_OPTS) | $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: C2000 Compiler'
	"C:/ti/ccsv6/tools/compiler/c2000_6.2.5/bin/cl2000" -v28 -ml -mt --cla_support=cla0 --float_support=softlib --vcu_support=vcu0 -O2 --include_path="C:/ti/motorware/motorware_1_01_00_18/sw/modules/hal/boards/hvkit_rev1p1/f28x/f2806x/src/" --include_path="C:/ti/ccsv6/tools/compiler/c2000_6.2.5/include" --include_path="C:/ti/motorware/motorware_1_01_00_18/sw/solutions/instaspin_foc/boards/hvkit_rev1p1/f28x/f2806xF/src" --include_path="C:/ti/motorware/motorware_1_01_00_18" -g --define=FAST_ROM_V1p6 --diag_warning=225 --display_error_number --preproc_with_compile --preproc_dependency="wdog.d" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '


