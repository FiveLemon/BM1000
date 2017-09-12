################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Each subdirectory must supply rules for building sources it contributes
CodeStartBranch.obj: D:/BM1000/sw/drivers/cpu/src/32b/f28x/f2802x/CodeStartBranch.asm $(GEN_OPTS) | $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: C2000 Compiler'
	"C:/ti/ccsv6/tools/compiler/c2000_6.2.5/bin/cl2000" -v28 -ml -mt -O2 --include_path="D:/BM1000/sw/modules/hal/boards/hvkit_rev1p1/f28x/f2802x/src/" --include_path="C:/ti/ccsv6/tools/compiler/c2000_6.2.5/include" --include_path="D:/BM1000/sw/solutions/instaspin_foc/boards/hvkit_rev1p1/f28x/f2802xF/src" --include_path="D:/BM1000" -g --define=FLASH --define=FAST_ROM_V1p7 --define=F2802xF --diag_warning=225 --display_error_number --asm_listing --preproc_with_compile --preproc_dependency="CodeStartBranch.d" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

adc.obj: D:/BM1000/sw/drivers/adc/src/32b/f28x/f2802x/adc.c $(GEN_OPTS) | $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: C2000 Compiler'
	"C:/ti/ccsv6/tools/compiler/c2000_6.2.5/bin/cl2000" -v28 -ml -mt -O2 --include_path="D:/BM1000/sw/modules/hal/boards/hvkit_rev1p1/f28x/f2802x/src/" --include_path="C:/ti/ccsv6/tools/compiler/c2000_6.2.5/include" --include_path="D:/BM1000/sw/solutions/instaspin_foc/boards/hvkit_rev1p1/f28x/f2802xF/src" --include_path="D:/BM1000" -g --define=FLASH --define=FAST_ROM_V1p7 --define=F2802xF --diag_warning=225 --display_error_number --asm_listing --preproc_with_compile --preproc_dependency="adc.d" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

clarke.obj: D:/BM1000/sw/modules/clarke/src/32b/clarke.c $(GEN_OPTS) | $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: C2000 Compiler'
	"C:/ti/ccsv6/tools/compiler/c2000_6.2.5/bin/cl2000" -v28 -ml -mt -O2 --include_path="D:/BM1000/sw/modules/hal/boards/hvkit_rev1p1/f28x/f2802x/src/" --include_path="C:/ti/ccsv6/tools/compiler/c2000_6.2.5/include" --include_path="D:/BM1000/sw/solutions/instaspin_foc/boards/hvkit_rev1p1/f28x/f2802xF/src" --include_path="D:/BM1000" -g --define=FLASH --define=FAST_ROM_V1p7 --define=F2802xF --diag_warning=225 --display_error_number --asm_listing --preproc_with_compile --preproc_dependency="clarke.d" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

clk.obj: D:/BM1000/sw/drivers/clk/src/32b/f28x/f2802x/clk.c $(GEN_OPTS) | $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: C2000 Compiler'
	"C:/ti/ccsv6/tools/compiler/c2000_6.2.5/bin/cl2000" -v28 -ml -mt -O2 --include_path="D:/BM1000/sw/modules/hal/boards/hvkit_rev1p1/f28x/f2802x/src/" --include_path="C:/ti/ccsv6/tools/compiler/c2000_6.2.5/include" --include_path="D:/BM1000/sw/solutions/instaspin_foc/boards/hvkit_rev1p1/f28x/f2802xF/src" --include_path="D:/BM1000" -g --define=FLASH --define=FAST_ROM_V1p7 --define=F2802xF --diag_warning=225 --display_error_number --asm_listing --preproc_with_compile --preproc_dependency="clk.d" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

cpu.obj: D:/BM1000/sw/drivers/cpu/src/32b/f28x/f2802x/cpu.c $(GEN_OPTS) | $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: C2000 Compiler'
	"C:/ti/ccsv6/tools/compiler/c2000_6.2.5/bin/cl2000" -v28 -ml -mt -O2 --include_path="D:/BM1000/sw/modules/hal/boards/hvkit_rev1p1/f28x/f2802x/src/" --include_path="C:/ti/ccsv6/tools/compiler/c2000_6.2.5/include" --include_path="D:/BM1000/sw/solutions/instaspin_foc/boards/hvkit_rev1p1/f28x/f2802xF/src" --include_path="D:/BM1000" -g --define=FLASH --define=FAST_ROM_V1p7 --define=F2802xF --diag_warning=225 --display_error_number --asm_listing --preproc_with_compile --preproc_dependency="cpu.d" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

ctrl.obj: D:/BM1000/sw/modules/ctrl/src/32b/ctrl.c $(GEN_OPTS) | $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: C2000 Compiler'
	"C:/ti/ccsv6/tools/compiler/c2000_6.2.5/bin/cl2000" -v28 -ml -mt -O2 --include_path="D:/BM1000/sw/modules/hal/boards/hvkit_rev1p1/f28x/f2802x/src/" --include_path="C:/ti/ccsv6/tools/compiler/c2000_6.2.5/include" --include_path="D:/BM1000/sw/solutions/instaspin_foc/boards/hvkit_rev1p1/f28x/f2802xF/src" --include_path="D:/BM1000" -g --define=FLASH --define=FAST_ROM_V1p7 --define=F2802xF --diag_warning=225 --display_error_number --asm_listing --preproc_with_compile --preproc_dependency="ctrl.d" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

filter_fo.obj: D:/BM1000/sw/modules/filter/src/32b/filter_fo.c $(GEN_OPTS) | $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: C2000 Compiler'
	"C:/ti/ccsv6/tools/compiler/c2000_6.2.5/bin/cl2000" -v28 -ml -mt -O2 --include_path="D:/BM1000/sw/modules/hal/boards/hvkit_rev1p1/f28x/f2802x/src/" --include_path="C:/ti/ccsv6/tools/compiler/c2000_6.2.5/include" --include_path="D:/BM1000/sw/solutions/instaspin_foc/boards/hvkit_rev1p1/f28x/f2802xF/src" --include_path="D:/BM1000" -g --define=FLASH --define=FAST_ROM_V1p7 --define=F2802xF --diag_warning=225 --display_error_number --asm_listing --preproc_with_compile --preproc_dependency="filter_fo.d" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

flash.obj: D:/BM1000/sw/drivers/flash/src/32b/f28x/f2802x/flash.c $(GEN_OPTS) | $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: C2000 Compiler'
	"C:/ti/ccsv6/tools/compiler/c2000_6.2.5/bin/cl2000" -v28 -ml -mt -O2 --include_path="D:/BM1000/sw/modules/hal/boards/hvkit_rev1p1/f28x/f2802x/src/" --include_path="C:/ti/ccsv6/tools/compiler/c2000_6.2.5/include" --include_path="D:/BM1000/sw/solutions/instaspin_foc/boards/hvkit_rev1p1/f28x/f2802xF/src" --include_path="D:/BM1000" -g --define=FLASH --define=FAST_ROM_V1p7 --define=F2802xF --diag_warning=225 --display_error_number --asm_listing --preproc_with_compile --preproc_dependency="flash.d" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

fw.obj: D:/BM1000/sw/modules/fw/src/32b/fw.c $(GEN_OPTS) | $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: C2000 Compiler'
	"C:/ti/ccsv6/tools/compiler/c2000_6.2.5/bin/cl2000" -v28 -ml -mt -O2 --include_path="D:/BM1000/sw/modules/hal/boards/hvkit_rev1p1/f28x/f2802x/src/" --include_path="C:/ti/ccsv6/tools/compiler/c2000_6.2.5/include" --include_path="D:/BM1000/sw/solutions/instaspin_foc/boards/hvkit_rev1p1/f28x/f2802xF/src" --include_path="D:/BM1000" -g --define=FLASH --define=FAST_ROM_V1p7 --define=F2802xF --diag_warning=225 --display_error_number --asm_listing --preproc_with_compile --preproc_dependency="fw.d" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

gpio.obj: D:/BM1000/sw/drivers/gpio/src/32b/f28x/f2802x/gpio.c $(GEN_OPTS) | $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: C2000 Compiler'
	"C:/ti/ccsv6/tools/compiler/c2000_6.2.5/bin/cl2000" -v28 -ml -mt -O2 --include_path="D:/BM1000/sw/modules/hal/boards/hvkit_rev1p1/f28x/f2802x/src/" --include_path="C:/ti/ccsv6/tools/compiler/c2000_6.2.5/include" --include_path="D:/BM1000/sw/solutions/instaspin_foc/boards/hvkit_rev1p1/f28x/f2802xF/src" --include_path="D:/BM1000" -g --define=FLASH --define=FAST_ROM_V1p7 --define=F2802xF --diag_warning=225 --display_error_number --asm_listing --preproc_with_compile --preproc_dependency="gpio.d" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

hal.obj: D:/BM1000/sw/modules/hal/boards/hvkit_rev1p1/f28x/f2802x/src/hal.c $(GEN_OPTS) | $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: C2000 Compiler'
	"C:/ti/ccsv6/tools/compiler/c2000_6.2.5/bin/cl2000" -v28 -ml -mt -O2 --include_path="D:/BM1000/sw/modules/hal/boards/hvkit_rev1p1/f28x/f2802x/src/" --include_path="C:/ti/ccsv6/tools/compiler/c2000_6.2.5/include" --include_path="D:/BM1000/sw/solutions/instaspin_foc/boards/hvkit_rev1p1/f28x/f2802xF/src" --include_path="D:/BM1000" -g --define=FLASH --define=FAST_ROM_V1p7 --define=F2802xF --diag_warning=225 --display_error_number --asm_listing --preproc_with_compile --preproc_dependency="hal.d" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

i2c.obj: D:/BM1000/sw/drivers/i2c/src/32b/f28x/f2802x/i2c.c $(GEN_OPTS) | $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: C2000 Compiler'
	"C:/ti/ccsv6/tools/compiler/c2000_6.2.5/bin/cl2000" -v28 -ml -mt -O2 --include_path="D:/BM1000/sw/modules/hal/boards/hvkit_rev1p1/f28x/f2802x/src/" --include_path="C:/ti/ccsv6/tools/compiler/c2000_6.2.5/include" --include_path="D:/BM1000/sw/solutions/instaspin_foc/boards/hvkit_rev1p1/f28x/f2802xF/src" --include_path="D:/BM1000" -g --define=FLASH --define=FAST_ROM_V1p7 --define=F2802xF --diag_warning=225 --display_error_number --asm_listing --preproc_with_compile --preproc_dependency="i2c.d" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

ipark.obj: D:/BM1000/sw/modules/ipark/src/32b/ipark.c $(GEN_OPTS) | $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: C2000 Compiler'
	"C:/ti/ccsv6/tools/compiler/c2000_6.2.5/bin/cl2000" -v28 -ml -mt -O2 --include_path="D:/BM1000/sw/modules/hal/boards/hvkit_rev1p1/f28x/f2802x/src/" --include_path="C:/ti/ccsv6/tools/compiler/c2000_6.2.5/include" --include_path="D:/BM1000/sw/solutions/instaspin_foc/boards/hvkit_rev1p1/f28x/f2802xF/src" --include_path="D:/BM1000" -g --define=FLASH --define=FAST_ROM_V1p7 --define=F2802xF --diag_warning=225 --display_error_number --asm_listing --preproc_with_compile --preproc_dependency="ipark.d" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

memCopy.obj: D:/BM1000/sw/modules/memCopy/src/memCopy.c $(GEN_OPTS) | $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: C2000 Compiler'
	"C:/ti/ccsv6/tools/compiler/c2000_6.2.5/bin/cl2000" -v28 -ml -mt -O2 --include_path="D:/BM1000/sw/modules/hal/boards/hvkit_rev1p1/f28x/f2802x/src/" --include_path="C:/ti/ccsv6/tools/compiler/c2000_6.2.5/include" --include_path="D:/BM1000/sw/solutions/instaspin_foc/boards/hvkit_rev1p1/f28x/f2802xF/src" --include_path="D:/BM1000" -g --define=FLASH --define=FAST_ROM_V1p7 --define=F2802xF --diag_warning=225 --display_error_number --asm_listing --preproc_with_compile --preproc_dependency="memCopy.d" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

offset.obj: D:/BM1000/sw/modules/offset/src/32b/offset.c $(GEN_OPTS) | $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: C2000 Compiler'
	"C:/ti/ccsv6/tools/compiler/c2000_6.2.5/bin/cl2000" -v28 -ml -mt -O2 --include_path="D:/BM1000/sw/modules/hal/boards/hvkit_rev1p1/f28x/f2802x/src/" --include_path="C:/ti/ccsv6/tools/compiler/c2000_6.2.5/include" --include_path="D:/BM1000/sw/solutions/instaspin_foc/boards/hvkit_rev1p1/f28x/f2802xF/src" --include_path="D:/BM1000" -g --define=FLASH --define=FAST_ROM_V1p7 --define=F2802xF --diag_warning=225 --display_error_number --asm_listing --preproc_with_compile --preproc_dependency="offset.d" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

osc.obj: D:/BM1000/sw/drivers/osc/src/32b/f28x/f2802x/osc.c $(GEN_OPTS) | $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: C2000 Compiler'
	"C:/ti/ccsv6/tools/compiler/c2000_6.2.5/bin/cl2000" -v28 -ml -mt -O2 --include_path="D:/BM1000/sw/modules/hal/boards/hvkit_rev1p1/f28x/f2802x/src/" --include_path="C:/ti/ccsv6/tools/compiler/c2000_6.2.5/include" --include_path="D:/BM1000/sw/solutions/instaspin_foc/boards/hvkit_rev1p1/f28x/f2802xF/src" --include_path="D:/BM1000" -g --define=FLASH --define=FAST_ROM_V1p7 --define=F2802xF --diag_warning=225 --display_error_number --asm_listing --preproc_with_compile --preproc_dependency="osc.d" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

park.obj: D:/BM1000/sw/modules/park/src/32b/park.c $(GEN_OPTS) | $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: C2000 Compiler'
	"C:/ti/ccsv6/tools/compiler/c2000_6.2.5/bin/cl2000" -v28 -ml -mt -O2 --include_path="D:/BM1000/sw/modules/hal/boards/hvkit_rev1p1/f28x/f2802x/src/" --include_path="C:/ti/ccsv6/tools/compiler/c2000_6.2.5/include" --include_path="D:/BM1000/sw/solutions/instaspin_foc/boards/hvkit_rev1p1/f28x/f2802xF/src" --include_path="D:/BM1000" -g --define=FLASH --define=FAST_ROM_V1p7 --define=F2802xF --diag_warning=225 --display_error_number --asm_listing --preproc_with_compile --preproc_dependency="park.d" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

pid.obj: D:/BM1000/sw/modules/pid/src/32b/pid.c $(GEN_OPTS) | $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: C2000 Compiler'
	"C:/ti/ccsv6/tools/compiler/c2000_6.2.5/bin/cl2000" -v28 -ml -mt -O2 --include_path="D:/BM1000/sw/modules/hal/boards/hvkit_rev1p1/f28x/f2802x/src/" --include_path="C:/ti/ccsv6/tools/compiler/c2000_6.2.5/include" --include_path="D:/BM1000/sw/solutions/instaspin_foc/boards/hvkit_rev1p1/f28x/f2802xF/src" --include_path="D:/BM1000" -g --define=FLASH --define=FAST_ROM_V1p7 --define=F2802xF --diag_warning=225 --display_error_number --asm_listing --preproc_with_compile --preproc_dependency="pid.d" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

pie.obj: D:/BM1000/sw/drivers/pie/src/32b/f28x/f2802x/pie.c $(GEN_OPTS) | $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: C2000 Compiler'
	"C:/ti/ccsv6/tools/compiler/c2000_6.2.5/bin/cl2000" -v28 -ml -mt -O2 --include_path="D:/BM1000/sw/modules/hal/boards/hvkit_rev1p1/f28x/f2802x/src/" --include_path="C:/ti/ccsv6/tools/compiler/c2000_6.2.5/include" --include_path="D:/BM1000/sw/solutions/instaspin_foc/boards/hvkit_rev1p1/f28x/f2802xF/src" --include_path="D:/BM1000" -g --define=FLASH --define=FAST_ROM_V1p7 --define=F2802xF --diag_warning=225 --display_error_number --asm_listing --preproc_with_compile --preproc_dependency="pie.d" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

pll.obj: D:/BM1000/sw/drivers/pll/src/32b/f28x/f2802x/pll.c $(GEN_OPTS) | $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: C2000 Compiler'
	"C:/ti/ccsv6/tools/compiler/c2000_6.2.5/bin/cl2000" -v28 -ml -mt -O2 --include_path="D:/BM1000/sw/modules/hal/boards/hvkit_rev1p1/f28x/f2802x/src/" --include_path="C:/ti/ccsv6/tools/compiler/c2000_6.2.5/include" --include_path="D:/BM1000/sw/solutions/instaspin_foc/boards/hvkit_rev1p1/f28x/f2802xF/src" --include_path="D:/BM1000" -g --define=FLASH --define=FAST_ROM_V1p7 --define=F2802xF --diag_warning=225 --display_error_number --asm_listing --preproc_with_compile --preproc_dependency="pll.d" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

proj_lab09.obj: D:/BM1000/sw/solutions/instaspin_foc/src/proj_lab09.c $(GEN_OPTS) | $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: C2000 Compiler'
	"C:/ti/ccsv6/tools/compiler/c2000_6.2.5/bin/cl2000" -v28 -ml -mt -O2 --include_path="D:/BM1000/sw/modules/hal/boards/hvkit_rev1p1/f28x/f2802x/src/" --include_path="C:/ti/ccsv6/tools/compiler/c2000_6.2.5/include" --include_path="D:/BM1000/sw/solutions/instaspin_foc/boards/hvkit_rev1p1/f28x/f2802xF/src" --include_path="D:/BM1000" -g --define=FLASH --define=FAST_ROM_V1p7 --define=F2802xF --diag_warning=225 --display_error_number --asm_listing --preproc_with_compile --preproc_dependency="proj_lab09.d" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

pwm.obj: D:/BM1000/sw/drivers/pwm/src/32b/f28x/f2802x/pwm.c $(GEN_OPTS) | $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: C2000 Compiler'
	"C:/ti/ccsv6/tools/compiler/c2000_6.2.5/bin/cl2000" -v28 -ml -mt -O2 --include_path="D:/BM1000/sw/modules/hal/boards/hvkit_rev1p1/f28x/f2802x/src/" --include_path="C:/ti/ccsv6/tools/compiler/c2000_6.2.5/include" --include_path="D:/BM1000/sw/solutions/instaspin_foc/boards/hvkit_rev1p1/f28x/f2802xF/src" --include_path="D:/BM1000" -g --define=FLASH --define=FAST_ROM_V1p7 --define=F2802xF --diag_warning=225 --display_error_number --asm_listing --preproc_with_compile --preproc_dependency="pwm.d" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

pwr.obj: D:/BM1000/sw/drivers/pwr/src/32b/f28x/f2802x/pwr.c $(GEN_OPTS) | $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: C2000 Compiler'
	"C:/ti/ccsv6/tools/compiler/c2000_6.2.5/bin/cl2000" -v28 -ml -mt -O2 --include_path="D:/BM1000/sw/modules/hal/boards/hvkit_rev1p1/f28x/f2802x/src/" --include_path="C:/ti/ccsv6/tools/compiler/c2000_6.2.5/include" --include_path="D:/BM1000/sw/solutions/instaspin_foc/boards/hvkit_rev1p1/f28x/f2802xF/src" --include_path="D:/BM1000" -g --define=FLASH --define=FAST_ROM_V1p7 --define=F2802xF --diag_warning=225 --display_error_number --asm_listing --preproc_with_compile --preproc_dependency="pwr.d" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

svgen.obj: D:/BM1000/sw/modules/svgen/src/32b/svgen.c $(GEN_OPTS) | $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: C2000 Compiler'
	"C:/ti/ccsv6/tools/compiler/c2000_6.2.5/bin/cl2000" -v28 -ml -mt -O2 --include_path="D:/BM1000/sw/modules/hal/boards/hvkit_rev1p1/f28x/f2802x/src/" --include_path="C:/ti/ccsv6/tools/compiler/c2000_6.2.5/include" --include_path="D:/BM1000/sw/solutions/instaspin_foc/boards/hvkit_rev1p1/f28x/f2802xF/src" --include_path="D:/BM1000" -g --define=FLASH --define=FAST_ROM_V1p7 --define=F2802xF --diag_warning=225 --display_error_number --asm_listing --preproc_with_compile --preproc_dependency="svgen.d" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

svgen_current.obj: D:/BM1000/sw/modules/svgen/src/32b/svgen_current.c $(GEN_OPTS) | $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: C2000 Compiler'
	"C:/ti/ccsv6/tools/compiler/c2000_6.2.5/bin/cl2000" -v28 -ml -mt -O2 --include_path="D:/BM1000/sw/modules/hal/boards/hvkit_rev1p1/f28x/f2802x/src/" --include_path="C:/ti/ccsv6/tools/compiler/c2000_6.2.5/include" --include_path="D:/BM1000/sw/solutions/instaspin_foc/boards/hvkit_rev1p1/f28x/f2802xF/src" --include_path="D:/BM1000" -g --define=FLASH --define=FAST_ROM_V1p7 --define=F2802xF --diag_warning=225 --display_error_number --asm_listing --preproc_with_compile --preproc_dependency="svgen_current.d" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

timer.obj: D:/BM1000/sw/drivers/timer/src/32b/f28x/f2802x/timer.c $(GEN_OPTS) | $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: C2000 Compiler'
	"C:/ti/ccsv6/tools/compiler/c2000_6.2.5/bin/cl2000" -v28 -ml -mt -O2 --include_path="D:/BM1000/sw/modules/hal/boards/hvkit_rev1p1/f28x/f2802x/src/" --include_path="C:/ti/ccsv6/tools/compiler/c2000_6.2.5/include" --include_path="D:/BM1000/sw/solutions/instaspin_foc/boards/hvkit_rev1p1/f28x/f2802xF/src" --include_path="D:/BM1000" -g --define=FLASH --define=FAST_ROM_V1p7 --define=F2802xF --diag_warning=225 --display_error_number --asm_listing --preproc_with_compile --preproc_dependency="timer.d" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

traj.obj: D:/BM1000/sw/modules/traj/src/32b/traj.c $(GEN_OPTS) | $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: C2000 Compiler'
	"C:/ti/ccsv6/tools/compiler/c2000_6.2.5/bin/cl2000" -v28 -ml -mt -O2 --include_path="D:/BM1000/sw/modules/hal/boards/hvkit_rev1p1/f28x/f2802x/src/" --include_path="C:/ti/ccsv6/tools/compiler/c2000_6.2.5/include" --include_path="D:/BM1000/sw/solutions/instaspin_foc/boards/hvkit_rev1p1/f28x/f2802xF/src" --include_path="D:/BM1000" -g --define=FLASH --define=FAST_ROM_V1p7 --define=F2802xF --diag_warning=225 --display_error_number --asm_listing --preproc_with_compile --preproc_dependency="traj.d" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

usDelay.obj: D:/BM1000/sw/modules/usDelay/src/32b/f28x/usDelay.asm $(GEN_OPTS) | $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: C2000 Compiler'
	"C:/ti/ccsv6/tools/compiler/c2000_6.2.5/bin/cl2000" -v28 -ml -mt -O2 --include_path="D:/BM1000/sw/modules/hal/boards/hvkit_rev1p1/f28x/f2802x/src/" --include_path="C:/ti/ccsv6/tools/compiler/c2000_6.2.5/include" --include_path="D:/BM1000/sw/solutions/instaspin_foc/boards/hvkit_rev1p1/f28x/f2802xF/src" --include_path="D:/BM1000" -g --define=FLASH --define=FAST_ROM_V1p7 --define=F2802xF --diag_warning=225 --display_error_number --asm_listing --preproc_with_compile --preproc_dependency="usDelay.d" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

user.obj: D:/BM1000/sw/modules/user/src/32b/user.c $(GEN_OPTS) | $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: C2000 Compiler'
	"C:/ti/ccsv6/tools/compiler/c2000_6.2.5/bin/cl2000" -v28 -ml -mt -O2 --include_path="D:/BM1000/sw/modules/hal/boards/hvkit_rev1p1/f28x/f2802x/src/" --include_path="C:/ti/ccsv6/tools/compiler/c2000_6.2.5/include" --include_path="D:/BM1000/sw/solutions/instaspin_foc/boards/hvkit_rev1p1/f28x/f2802xF/src" --include_path="D:/BM1000" -g --define=FLASH --define=FAST_ROM_V1p7 --define=F2802xF --diag_warning=225 --display_error_number --asm_listing --preproc_with_compile --preproc_dependency="user.d" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

wdog.obj: D:/BM1000/sw/drivers/wdog/src/32b/f28x/f2802x/wdog.c $(GEN_OPTS) | $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: C2000 Compiler'
	"C:/ti/ccsv6/tools/compiler/c2000_6.2.5/bin/cl2000" -v28 -ml -mt -O2 --include_path="D:/BM1000/sw/modules/hal/boards/hvkit_rev1p1/f28x/f2802x/src/" --include_path="C:/ti/ccsv6/tools/compiler/c2000_6.2.5/include" --include_path="D:/BM1000/sw/solutions/instaspin_foc/boards/hvkit_rev1p1/f28x/f2802xF/src" --include_path="D:/BM1000" -g --define=FLASH --define=FAST_ROM_V1p7 --define=F2802xF --diag_warning=225 --display_error_number --asm_listing --preproc_with_compile --preproc_dependency="wdog.d" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '


