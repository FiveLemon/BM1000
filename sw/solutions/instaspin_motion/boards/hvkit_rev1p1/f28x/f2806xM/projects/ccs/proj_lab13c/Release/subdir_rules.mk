################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Each subdirectory must supply rules for building sources it contributes
CodeStartBranch.obj: C:/Users/wmj/Desktop/BM1000_v1.1/sw/drivers/cpu/src/32b/f28x/f2806x/CodeStartBranch.asm $(GEN_OPTS) | $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: C2000 Compiler'
	"C:/ti/ccsv6/tools/compiler/c2000_15.12.3.LTS/bin/cl2000" -v28 -ml -mt --cla_support=cla0 --vcu_support=vcu0 -O2 --include_path="C:/ti/ccsv6/tools/compiler/c2000_15.12.3.LTS/include" --include_path="C:/Users/wmj/Desktop/BM1000_v1.1/sw/modules/hal/boards/hvkit_rev1p1/f28x/f2806x/src" --include_path="C:/Users/wmj/Desktop/BM1000_v1.1/sw/solutions/instaspin_motion/boards/hvkit_rev1p1/f28x/f2806xM/src" --include_path="C:/Users/wmj/Desktop/BM1000_v1.1" -g --define=USE_SpinTAC --define=SOFT_FIX_ERROR --define=TMS320F28069 --define=QEP --define=FAST_ROM_V1p6 --diag_warning=225 --display_error_number --preproc_with_compile --preproc_dependency="CodeStartBranch.d" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

adc.obj: C:/Users/wmj/Desktop/BM1000_v1.1/sw/drivers/adc/src/32b/f28x/f2806x/adc.c $(GEN_OPTS) | $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: C2000 Compiler'
	"C:/ti/ccsv6/tools/compiler/c2000_15.12.3.LTS/bin/cl2000" -v28 -ml -mt --cla_support=cla0 --vcu_support=vcu0 -O2 --include_path="C:/ti/ccsv6/tools/compiler/c2000_15.12.3.LTS/include" --include_path="C:/Users/wmj/Desktop/BM1000_v1.1/sw/modules/hal/boards/hvkit_rev1p1/f28x/f2806x/src" --include_path="C:/Users/wmj/Desktop/BM1000_v1.1/sw/solutions/instaspin_motion/boards/hvkit_rev1p1/f28x/f2806xM/src" --include_path="C:/Users/wmj/Desktop/BM1000_v1.1" -g --define=USE_SpinTAC --define=SOFT_FIX_ERROR --define=TMS320F28069 --define=QEP --define=FAST_ROM_V1p6 --diag_warning=225 --display_error_number --preproc_with_compile --preproc_dependency="adc.d" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

brake.obj: C:/Users/wmj/Desktop/BM1000_v1.1/sw/drivers/drvic/brake.c $(GEN_OPTS) | $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: C2000 Compiler'
	"C:/ti/ccsv6/tools/compiler/c2000_15.12.3.LTS/bin/cl2000" -v28 -ml -mt --cla_support=cla0 --vcu_support=vcu0 -O2 --include_path="C:/ti/ccsv6/tools/compiler/c2000_15.12.3.LTS/include" --include_path="C:/Users/wmj/Desktop/BM1000_v1.1/sw/modules/hal/boards/hvkit_rev1p1/f28x/f2806x/src" --include_path="C:/Users/wmj/Desktop/BM1000_v1.1/sw/solutions/instaspin_motion/boards/hvkit_rev1p1/f28x/f2806xM/src" --include_path="C:/Users/wmj/Desktop/BM1000_v1.1" -g --define=USE_SpinTAC --define=SOFT_FIX_ERROR --define=TMS320F28069 --define=QEP --define=FAST_ROM_V1p6 --diag_warning=225 --display_error_number --preproc_with_compile --preproc_dependency="brake.d" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

clarke.obj: C:/Users/wmj/Desktop/BM1000_v1.1/sw/modules/clarke/src/32b/clarke.c $(GEN_OPTS) | $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: C2000 Compiler'
	"C:/ti/ccsv6/tools/compiler/c2000_15.12.3.LTS/bin/cl2000" -v28 -ml -mt --cla_support=cla0 --vcu_support=vcu0 -O2 --include_path="C:/ti/ccsv6/tools/compiler/c2000_15.12.3.LTS/include" --include_path="C:/Users/wmj/Desktop/BM1000_v1.1/sw/modules/hal/boards/hvkit_rev1p1/f28x/f2806x/src" --include_path="C:/Users/wmj/Desktop/BM1000_v1.1/sw/solutions/instaspin_motion/boards/hvkit_rev1p1/f28x/f2806xM/src" --include_path="C:/Users/wmj/Desktop/BM1000_v1.1" -g --define=USE_SpinTAC --define=SOFT_FIX_ERROR --define=TMS320F28069 --define=QEP --define=FAST_ROM_V1p6 --diag_warning=225 --display_error_number --preproc_with_compile --preproc_dependency="clarke.d" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

clk.obj: C:/Users/wmj/Desktop/BM1000_v1.1/sw/drivers/clk/src/32b/f28x/f2806x/clk.c $(GEN_OPTS) | $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: C2000 Compiler'
	"C:/ti/ccsv6/tools/compiler/c2000_15.12.3.LTS/bin/cl2000" -v28 -ml -mt --cla_support=cla0 --vcu_support=vcu0 -O2 --include_path="C:/ti/ccsv6/tools/compiler/c2000_15.12.3.LTS/include" --include_path="C:/Users/wmj/Desktop/BM1000_v1.1/sw/modules/hal/boards/hvkit_rev1p1/f28x/f2806x/src" --include_path="C:/Users/wmj/Desktop/BM1000_v1.1/sw/solutions/instaspin_motion/boards/hvkit_rev1p1/f28x/f2806xM/src" --include_path="C:/Users/wmj/Desktop/BM1000_v1.1" -g --define=USE_SpinTAC --define=SOFT_FIX_ERROR --define=TMS320F28069 --define=QEP --define=FAST_ROM_V1p6 --diag_warning=225 --display_error_number --preproc_with_compile --preproc_dependency="clk.d" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

cpu.obj: C:/Users/wmj/Desktop/BM1000_v1.1/sw/drivers/cpu/src/32b/f28x/f2806x/cpu.c $(GEN_OPTS) | $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: C2000 Compiler'
	"C:/ti/ccsv6/tools/compiler/c2000_15.12.3.LTS/bin/cl2000" -v28 -ml -mt --cla_support=cla0 --vcu_support=vcu0 -O2 --include_path="C:/ti/ccsv6/tools/compiler/c2000_15.12.3.LTS/include" --include_path="C:/Users/wmj/Desktop/BM1000_v1.1/sw/modules/hal/boards/hvkit_rev1p1/f28x/f2806x/src" --include_path="C:/Users/wmj/Desktop/BM1000_v1.1/sw/solutions/instaspin_motion/boards/hvkit_rev1p1/f28x/f2806xM/src" --include_path="C:/Users/wmj/Desktop/BM1000_v1.1" -g --define=USE_SpinTAC --define=SOFT_FIX_ERROR --define=TMS320F28069 --define=QEP --define=FAST_ROM_V1p6 --diag_warning=225 --display_error_number --preproc_with_compile --preproc_dependency="cpu.d" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

ctrl.obj: C:/Users/wmj/Desktop/BM1000_v1.1/sw/modules/ctrl/src/32b/ctrl.c $(GEN_OPTS) | $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: C2000 Compiler'
	"C:/ti/ccsv6/tools/compiler/c2000_15.12.3.LTS/bin/cl2000" -v28 -ml -mt --cla_support=cla0 --vcu_support=vcu0 -O2 --include_path="C:/ti/ccsv6/tools/compiler/c2000_15.12.3.LTS/include" --include_path="C:/Users/wmj/Desktop/BM1000_v1.1/sw/modules/hal/boards/hvkit_rev1p1/f28x/f2806x/src" --include_path="C:/Users/wmj/Desktop/BM1000_v1.1/sw/solutions/instaspin_motion/boards/hvkit_rev1p1/f28x/f2806xM/src" --include_path="C:/Users/wmj/Desktop/BM1000_v1.1" -g --define=USE_SpinTAC --define=SOFT_FIX_ERROR --define=TMS320F28069 --define=QEP --define=FAST_ROM_V1p6 --diag_warning=225 --display_error_number --preproc_with_compile --preproc_dependency="ctrl.d" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

enc.obj: C:/Users/wmj/Desktop/BM1000_v1.1/sw/modules/enc/src/32b/enc.c $(GEN_OPTS) | $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: C2000 Compiler'
	"C:/ti/ccsv6/tools/compiler/c2000_15.12.3.LTS/bin/cl2000" -v28 -ml -mt --cla_support=cla0 --vcu_support=vcu0 -O2 --include_path="C:/ti/ccsv6/tools/compiler/c2000_15.12.3.LTS/include" --include_path="C:/Users/wmj/Desktop/BM1000_v1.1/sw/modules/hal/boards/hvkit_rev1p1/f28x/f2806x/src" --include_path="C:/Users/wmj/Desktop/BM1000_v1.1/sw/solutions/instaspin_motion/boards/hvkit_rev1p1/f28x/f2806xM/src" --include_path="C:/Users/wmj/Desktop/BM1000_v1.1" -g --define=USE_SpinTAC --define=SOFT_FIX_ERROR --define=TMS320F28069 --define=QEP --define=FAST_ROM_V1p6 --diag_warning=225 --display_error_number --preproc_with_compile --preproc_dependency="enc.d" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

filter_fo.obj: C:/Users/wmj/Desktop/BM1000_v1.1/sw/modules/filter/src/32b/filter_fo.c $(GEN_OPTS) | $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: C2000 Compiler'
	"C:/ti/ccsv6/tools/compiler/c2000_15.12.3.LTS/bin/cl2000" -v28 -ml -mt --cla_support=cla0 --vcu_support=vcu0 -O2 --include_path="C:/ti/ccsv6/tools/compiler/c2000_15.12.3.LTS/include" --include_path="C:/Users/wmj/Desktop/BM1000_v1.1/sw/modules/hal/boards/hvkit_rev1p1/f28x/f2806x/src" --include_path="C:/Users/wmj/Desktop/BM1000_v1.1/sw/solutions/instaspin_motion/boards/hvkit_rev1p1/f28x/f2806xM/src" --include_path="C:/Users/wmj/Desktop/BM1000_v1.1" -g --define=USE_SpinTAC --define=SOFT_FIX_ERROR --define=TMS320F28069 --define=QEP --define=FAST_ROM_V1p6 --diag_warning=225 --display_error_number --preproc_with_compile --preproc_dependency="filter_fo.d" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

flash.obj: C:/Users/wmj/Desktop/BM1000_v1.1/sw/drivers/flash/src/32b/f28x/f2806x/flash.c $(GEN_OPTS) | $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: C2000 Compiler'
	"C:/ti/ccsv6/tools/compiler/c2000_15.12.3.LTS/bin/cl2000" -v28 -ml -mt --cla_support=cla0 --vcu_support=vcu0 -O2 --include_path="C:/ti/ccsv6/tools/compiler/c2000_15.12.3.LTS/include" --include_path="C:/Users/wmj/Desktop/BM1000_v1.1/sw/modules/hal/boards/hvkit_rev1p1/f28x/f2806x/src" --include_path="C:/Users/wmj/Desktop/BM1000_v1.1/sw/solutions/instaspin_motion/boards/hvkit_rev1p1/f28x/f2806xM/src" --include_path="C:/Users/wmj/Desktop/BM1000_v1.1" -g --define=USE_SpinTAC --define=SOFT_FIX_ERROR --define=TMS320F28069 --define=QEP --define=FAST_ROM_V1p6 --diag_warning=225 --display_error_number --preproc_with_compile --preproc_dependency="flash.d" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

flyingStart.obj: C:/Users/wmj/Desktop/BM1000_v1.1/sw/modules/flyingStart/src/32b/flyingStart.c $(GEN_OPTS) | $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: C2000 Compiler'
	"C:/ti/ccsv6/tools/compiler/c2000_15.12.3.LTS/bin/cl2000" -v28 -ml -mt --cla_support=cla0 --vcu_support=vcu0 -O2 --include_path="C:/ti/ccsv6/tools/compiler/c2000_15.12.3.LTS/include" --include_path="C:/Users/wmj/Desktop/BM1000_v1.1/sw/modules/hal/boards/hvkit_rev1p1/f28x/f2806x/src" --include_path="C:/Users/wmj/Desktop/BM1000_v1.1/sw/solutions/instaspin_motion/boards/hvkit_rev1p1/f28x/f2806xM/src" --include_path="C:/Users/wmj/Desktop/BM1000_v1.1" -g --define=USE_SpinTAC --define=SOFT_FIX_ERROR --define=TMS320F28069 --define=QEP --define=FAST_ROM_V1p6 --diag_warning=225 --display_error_number --preproc_with_compile --preproc_dependency="flyingStart.d" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

fsm.obj: C:/Users/wmj/Desktop/BM1000_v1.1/sw/drivers/drvic/fsm.c $(GEN_OPTS) | $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: C2000 Compiler'
	"C:/ti/ccsv6/tools/compiler/c2000_15.12.3.LTS/bin/cl2000" -v28 -ml -mt --cla_support=cla0 --vcu_support=vcu0 -O2 --include_path="C:/ti/ccsv6/tools/compiler/c2000_15.12.3.LTS/include" --include_path="C:/Users/wmj/Desktop/BM1000_v1.1/sw/modules/hal/boards/hvkit_rev1p1/f28x/f2806x/src" --include_path="C:/Users/wmj/Desktop/BM1000_v1.1/sw/solutions/instaspin_motion/boards/hvkit_rev1p1/f28x/f2806xM/src" --include_path="C:/Users/wmj/Desktop/BM1000_v1.1" -g --define=USE_SpinTAC --define=SOFT_FIX_ERROR --define=TMS320F28069 --define=QEP --define=FAST_ROM_V1p6 --diag_warning=225 --display_error_number --preproc_with_compile --preproc_dependency="fsm.d" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

gpio.obj: C:/Users/wmj/Desktop/BM1000_v1.1/sw/drivers/gpio/src/32b/f28x/f2806x/gpio.c $(GEN_OPTS) | $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: C2000 Compiler'
	"C:/ti/ccsv6/tools/compiler/c2000_15.12.3.LTS/bin/cl2000" -v28 -ml -mt --cla_support=cla0 --vcu_support=vcu0 -O2 --include_path="C:/ti/ccsv6/tools/compiler/c2000_15.12.3.LTS/include" --include_path="C:/Users/wmj/Desktop/BM1000_v1.1/sw/modules/hal/boards/hvkit_rev1p1/f28x/f2806x/src" --include_path="C:/Users/wmj/Desktop/BM1000_v1.1/sw/solutions/instaspin_motion/boards/hvkit_rev1p1/f28x/f2806xM/src" --include_path="C:/Users/wmj/Desktop/BM1000_v1.1" -g --define=USE_SpinTAC --define=SOFT_FIX_ERROR --define=TMS320F28069 --define=QEP --define=FAST_ROM_V1p6 --diag_warning=225 --display_error_number --preproc_with_compile --preproc_dependency="gpio.d" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

hal.obj: C:/Users/wmj/Desktop/BM1000_v1.1/sw/modules/hal/boards/hvkit_rev1p1/f28x/f2806x/src/hal.c $(GEN_OPTS) | $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: C2000 Compiler'
	"C:/ti/ccsv6/tools/compiler/c2000_15.12.3.LTS/bin/cl2000" -v28 -ml -mt --cla_support=cla0 --vcu_support=vcu0 -O2 --include_path="C:/ti/ccsv6/tools/compiler/c2000_15.12.3.LTS/include" --include_path="C:/Users/wmj/Desktop/BM1000_v1.1/sw/modules/hal/boards/hvkit_rev1p1/f28x/f2806x/src" --include_path="C:/Users/wmj/Desktop/BM1000_v1.1/sw/solutions/instaspin_motion/boards/hvkit_rev1p1/f28x/f2806xM/src" --include_path="C:/Users/wmj/Desktop/BM1000_v1.1" -g --define=USE_SpinTAC --define=SOFT_FIX_ERROR --define=TMS320F28069 --define=QEP --define=FAST_ROM_V1p6 --diag_warning=225 --display_error_number --preproc_with_compile --preproc_dependency="hal.d" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

ipark.obj: C:/Users/wmj/Desktop/BM1000_v1.1/sw/modules/ipark/src/32b/ipark.c $(GEN_OPTS) | $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: C2000 Compiler'
	"C:/ti/ccsv6/tools/compiler/c2000_15.12.3.LTS/bin/cl2000" -v28 -ml -mt --cla_support=cla0 --vcu_support=vcu0 -O2 --include_path="C:/ti/ccsv6/tools/compiler/c2000_15.12.3.LTS/include" --include_path="C:/Users/wmj/Desktop/BM1000_v1.1/sw/modules/hal/boards/hvkit_rev1p1/f28x/f2806x/src" --include_path="C:/Users/wmj/Desktop/BM1000_v1.1/sw/solutions/instaspin_motion/boards/hvkit_rev1p1/f28x/f2806xM/src" --include_path="C:/Users/wmj/Desktop/BM1000_v1.1" -g --define=USE_SpinTAC --define=SOFT_FIX_ERROR --define=TMS320F28069 --define=QEP --define=FAST_ROM_V1p6 --diag_warning=225 --display_error_number --preproc_with_compile --preproc_dependency="ipark.d" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

mb.obj: C:/Users/wmj/Desktop/BM1000_v1.1/sw/drivers/drvic/modbus/mb.c $(GEN_OPTS) | $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: C2000 Compiler'
	"C:/ti/ccsv6/tools/compiler/c2000_15.12.3.LTS/bin/cl2000" -v28 -ml -mt --cla_support=cla0 --vcu_support=vcu0 -O2 --include_path="C:/ti/ccsv6/tools/compiler/c2000_15.12.3.LTS/include" --include_path="C:/Users/wmj/Desktop/BM1000_v1.1/sw/modules/hal/boards/hvkit_rev1p1/f28x/f2806x/src" --include_path="C:/Users/wmj/Desktop/BM1000_v1.1/sw/solutions/instaspin_motion/boards/hvkit_rev1p1/f28x/f2806xM/src" --include_path="C:/Users/wmj/Desktop/BM1000_v1.1" -g --define=USE_SpinTAC --define=SOFT_FIX_ERROR --define=TMS320F28069 --define=QEP --define=FAST_ROM_V1p6 --diag_warning=225 --display_error_number --preproc_with_compile --preproc_dependency="mb.d" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

motor.obj: C:/Users/wmj/Desktop/BM1000_v1.1/sw/drivers/drvic/motor.c $(GEN_OPTS) | $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: C2000 Compiler'
	"C:/ti/ccsv6/tools/compiler/c2000_15.12.3.LTS/bin/cl2000" -v28 -ml -mt --cla_support=cla0 --vcu_support=vcu0 -O2 --include_path="C:/ti/ccsv6/tools/compiler/c2000_15.12.3.LTS/include" --include_path="C:/Users/wmj/Desktop/BM1000_v1.1/sw/modules/hal/boards/hvkit_rev1p1/f28x/f2806x/src" --include_path="C:/Users/wmj/Desktop/BM1000_v1.1/sw/solutions/instaspin_motion/boards/hvkit_rev1p1/f28x/f2806xM/src" --include_path="C:/Users/wmj/Desktop/BM1000_v1.1" -g --define=USE_SpinTAC --define=SOFT_FIX_ERROR --define=TMS320F28069 --define=QEP --define=FAST_ROM_V1p6 --diag_warning=225 --display_error_number --preproc_with_compile --preproc_dependency="motor.d" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

offset.obj: C:/Users/wmj/Desktop/BM1000_v1.1/sw/modules/offset/src/32b/offset.c $(GEN_OPTS) | $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: C2000 Compiler'
	"C:/ti/ccsv6/tools/compiler/c2000_15.12.3.LTS/bin/cl2000" -v28 -ml -mt --cla_support=cla0 --vcu_support=vcu0 -O2 --include_path="C:/ti/ccsv6/tools/compiler/c2000_15.12.3.LTS/include" --include_path="C:/Users/wmj/Desktop/BM1000_v1.1/sw/modules/hal/boards/hvkit_rev1p1/f28x/f2806x/src" --include_path="C:/Users/wmj/Desktop/BM1000_v1.1/sw/solutions/instaspin_motion/boards/hvkit_rev1p1/f28x/f2806xM/src" --include_path="C:/Users/wmj/Desktop/BM1000_v1.1" -g --define=USE_SpinTAC --define=SOFT_FIX_ERROR --define=TMS320F28069 --define=QEP --define=FAST_ROM_V1p6 --diag_warning=225 --display_error_number --preproc_with_compile --preproc_dependency="offset.d" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

osc.obj: C:/Users/wmj/Desktop/BM1000_v1.1/sw/drivers/osc/src/32b/f28x/f2806x/osc.c $(GEN_OPTS) | $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: C2000 Compiler'
	"C:/ti/ccsv6/tools/compiler/c2000_15.12.3.LTS/bin/cl2000" -v28 -ml -mt --cla_support=cla0 --vcu_support=vcu0 -O2 --include_path="C:/ti/ccsv6/tools/compiler/c2000_15.12.3.LTS/include" --include_path="C:/Users/wmj/Desktop/BM1000_v1.1/sw/modules/hal/boards/hvkit_rev1p1/f28x/f2806x/src" --include_path="C:/Users/wmj/Desktop/BM1000_v1.1/sw/solutions/instaspin_motion/boards/hvkit_rev1p1/f28x/f2806xM/src" --include_path="C:/Users/wmj/Desktop/BM1000_v1.1" -g --define=USE_SpinTAC --define=SOFT_FIX_ERROR --define=TMS320F28069 --define=QEP --define=FAST_ROM_V1p6 --diag_warning=225 --display_error_number --preproc_with_compile --preproc_dependency="osc.d" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

park.obj: C:/Users/wmj/Desktop/BM1000_v1.1/sw/modules/park/src/32b/park.c $(GEN_OPTS) | $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: C2000 Compiler'
	"C:/ti/ccsv6/tools/compiler/c2000_15.12.3.LTS/bin/cl2000" -v28 -ml -mt --cla_support=cla0 --vcu_support=vcu0 -O2 --include_path="C:/ti/ccsv6/tools/compiler/c2000_15.12.3.LTS/include" --include_path="C:/Users/wmj/Desktop/BM1000_v1.1/sw/modules/hal/boards/hvkit_rev1p1/f28x/f2806x/src" --include_path="C:/Users/wmj/Desktop/BM1000_v1.1/sw/solutions/instaspin_motion/boards/hvkit_rev1p1/f28x/f2806xM/src" --include_path="C:/Users/wmj/Desktop/BM1000_v1.1" -g --define=USE_SpinTAC --define=SOFT_FIX_ERROR --define=TMS320F28069 --define=QEP --define=FAST_ROM_V1p6 --diag_warning=225 --display_error_number --preproc_with_compile --preproc_dependency="park.d" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

pid.obj: C:/Users/wmj/Desktop/BM1000_v1.1/sw/modules/pid/src/32b/pid.c $(GEN_OPTS) | $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: C2000 Compiler'
	"C:/ti/ccsv6/tools/compiler/c2000_15.12.3.LTS/bin/cl2000" -v28 -ml -mt --cla_support=cla0 --vcu_support=vcu0 -O2 --include_path="C:/ti/ccsv6/tools/compiler/c2000_15.12.3.LTS/include" --include_path="C:/Users/wmj/Desktop/BM1000_v1.1/sw/modules/hal/boards/hvkit_rev1p1/f28x/f2806x/src" --include_path="C:/Users/wmj/Desktop/BM1000_v1.1/sw/solutions/instaspin_motion/boards/hvkit_rev1p1/f28x/f2806xM/src" --include_path="C:/Users/wmj/Desktop/BM1000_v1.1" -g --define=USE_SpinTAC --define=SOFT_FIX_ERROR --define=TMS320F28069 --define=QEP --define=FAST_ROM_V1p6 --diag_warning=225 --display_error_number --preproc_with_compile --preproc_dependency="pid.d" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

pie.obj: C:/Users/wmj/Desktop/BM1000_v1.1/sw/drivers/pie/src/32b/f28x/f2806x/pie.c $(GEN_OPTS) | $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: C2000 Compiler'
	"C:/ti/ccsv6/tools/compiler/c2000_15.12.3.LTS/bin/cl2000" -v28 -ml -mt --cla_support=cla0 --vcu_support=vcu0 -O2 --include_path="C:/ti/ccsv6/tools/compiler/c2000_15.12.3.LTS/include" --include_path="C:/Users/wmj/Desktop/BM1000_v1.1/sw/modules/hal/boards/hvkit_rev1p1/f28x/f2806x/src" --include_path="C:/Users/wmj/Desktop/BM1000_v1.1/sw/solutions/instaspin_motion/boards/hvkit_rev1p1/f28x/f2806xM/src" --include_path="C:/Users/wmj/Desktop/BM1000_v1.1" -g --define=USE_SpinTAC --define=SOFT_FIX_ERROR --define=TMS320F28069 --define=QEP --define=FAST_ROM_V1p6 --diag_warning=225 --display_error_number --preproc_with_compile --preproc_dependency="pie.d" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

pll.obj: C:/Users/wmj/Desktop/BM1000_v1.1/sw/drivers/pll/src/32b/f28x/f2806x/pll.c $(GEN_OPTS) | $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: C2000 Compiler'
	"C:/ti/ccsv6/tools/compiler/c2000_15.12.3.LTS/bin/cl2000" -v28 -ml -mt --cla_support=cla0 --vcu_support=vcu0 -O2 --include_path="C:/ti/ccsv6/tools/compiler/c2000_15.12.3.LTS/include" --include_path="C:/Users/wmj/Desktop/BM1000_v1.1/sw/modules/hal/boards/hvkit_rev1p1/f28x/f2806x/src" --include_path="C:/Users/wmj/Desktop/BM1000_v1.1/sw/solutions/instaspin_motion/boards/hvkit_rev1p1/f28x/f2806xM/src" --include_path="C:/Users/wmj/Desktop/BM1000_v1.1" -g --define=USE_SpinTAC --define=SOFT_FIX_ERROR --define=TMS320F28069 --define=QEP --define=FAST_ROM_V1p6 --diag_warning=225 --display_error_number --preproc_with_compile --preproc_dependency="pll.d" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

process_ctrl.obj: C:/Users/wmj/Desktop/BM1000_v1.1/sw/drivers/drvic/process_ctrl.c $(GEN_OPTS) | $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: C2000 Compiler'
	"C:/ti/ccsv6/tools/compiler/c2000_15.12.3.LTS/bin/cl2000" -v28 -ml -mt --cla_support=cla0 --vcu_support=vcu0 -O2 --include_path="C:/ti/ccsv6/tools/compiler/c2000_15.12.3.LTS/include" --include_path="C:/Users/wmj/Desktop/BM1000_v1.1/sw/modules/hal/boards/hvkit_rev1p1/f28x/f2806x/src" --include_path="C:/Users/wmj/Desktop/BM1000_v1.1/sw/solutions/instaspin_motion/boards/hvkit_rev1p1/f28x/f2806xM/src" --include_path="C:/Users/wmj/Desktop/BM1000_v1.1" -g --define=USE_SpinTAC --define=SOFT_FIX_ERROR --define=TMS320F28069 --define=QEP --define=FAST_ROM_V1p6 --diag_warning=225 --display_error_number --preproc_with_compile --preproc_dependency="process_ctrl.d" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

proj_bm1000.obj: C:/Users/wmj/Desktop/BM1000_v1.1/sw/solutions/instaspin/src/proj_bm1000.c $(GEN_OPTS) | $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: C2000 Compiler'
	"C:/ti/ccsv6/tools/compiler/c2000_15.12.3.LTS/bin/cl2000" -v28 -ml -mt --cla_support=cla0 --vcu_support=vcu0 -O2 --include_path="C:/ti/ccsv6/tools/compiler/c2000_15.12.3.LTS/include" --include_path="C:/Users/wmj/Desktop/BM1000_v1.1/sw/modules/hal/boards/hvkit_rev1p1/f28x/f2806x/src" --include_path="C:/Users/wmj/Desktop/BM1000_v1.1/sw/solutions/instaspin_motion/boards/hvkit_rev1p1/f28x/f2806xM/src" --include_path="C:/Users/wmj/Desktop/BM1000_v1.1" -g --define=USE_SpinTAC --define=SOFT_FIX_ERROR --define=TMS320F28069 --define=QEP --define=FAST_ROM_V1p6 --diag_warning=225 --display_error_number --preproc_with_compile --preproc_dependency="proj_bm1000.d" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

pwm.obj: C:/Users/wmj/Desktop/BM1000_v1.1/sw/drivers/pwm/src/32b/f28x/f2806x/pwm.c $(GEN_OPTS) | $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: C2000 Compiler'
	"C:/ti/ccsv6/tools/compiler/c2000_15.12.3.LTS/bin/cl2000" -v28 -ml -mt --cla_support=cla0 --vcu_support=vcu0 -O2 --include_path="C:/ti/ccsv6/tools/compiler/c2000_15.12.3.LTS/include" --include_path="C:/Users/wmj/Desktop/BM1000_v1.1/sw/modules/hal/boards/hvkit_rev1p1/f28x/f2806x/src" --include_path="C:/Users/wmj/Desktop/BM1000_v1.1/sw/solutions/instaspin_motion/boards/hvkit_rev1p1/f28x/f2806xM/src" --include_path="C:/Users/wmj/Desktop/BM1000_v1.1" -g --define=USE_SpinTAC --define=SOFT_FIX_ERROR --define=TMS320F28069 --define=QEP --define=FAST_ROM_V1p6 --diag_warning=225 --display_error_number --preproc_with_compile --preproc_dependency="pwm.d" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

pwr.obj: C:/Users/wmj/Desktop/BM1000_v1.1/sw/drivers/pwr/src/32b/f28x/f2806x/pwr.c $(GEN_OPTS) | $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: C2000 Compiler'
	"C:/ti/ccsv6/tools/compiler/c2000_15.12.3.LTS/bin/cl2000" -v28 -ml -mt --cla_support=cla0 --vcu_support=vcu0 -O2 --include_path="C:/ti/ccsv6/tools/compiler/c2000_15.12.3.LTS/include" --include_path="C:/Users/wmj/Desktop/BM1000_v1.1/sw/modules/hal/boards/hvkit_rev1p1/f28x/f2806x/src" --include_path="C:/Users/wmj/Desktop/BM1000_v1.1/sw/solutions/instaspin_motion/boards/hvkit_rev1p1/f28x/f2806xM/src" --include_path="C:/Users/wmj/Desktop/BM1000_v1.1" -g --define=USE_SpinTAC --define=SOFT_FIX_ERROR --define=TMS320F28069 --define=QEP --define=FAST_ROM_V1p6 --diag_warning=225 --display_error_number --preproc_with_compile --preproc_dependency="pwr.d" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

qep.obj: C:/Users/wmj/Desktop/BM1000_v1.1/sw/drivers/qep/src/32b/f28x/f2806x/qep.c $(GEN_OPTS) | $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: C2000 Compiler'
	"C:/ti/ccsv6/tools/compiler/c2000_15.12.3.LTS/bin/cl2000" -v28 -ml -mt --cla_support=cla0 --vcu_support=vcu0 -O2 --include_path="C:/ti/ccsv6/tools/compiler/c2000_15.12.3.LTS/include" --include_path="C:/Users/wmj/Desktop/BM1000_v1.1/sw/modules/hal/boards/hvkit_rev1p1/f28x/f2806x/src" --include_path="C:/Users/wmj/Desktop/BM1000_v1.1/sw/solutions/instaspin_motion/boards/hvkit_rev1p1/f28x/f2806xM/src" --include_path="C:/Users/wmj/Desktop/BM1000_v1.1" -g --define=USE_SpinTAC --define=SOFT_FIX_ERROR --define=TMS320F28069 --define=QEP --define=FAST_ROM_V1p6 --diag_warning=225 --display_error_number --preproc_with_compile --preproc_dependency="qep.d" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

sci.obj: C:/Users/wmj/Desktop/BM1000_v1.1/sw/drivers/sci/src/32b/f28x/f2806x/sci.c $(GEN_OPTS) | $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: C2000 Compiler'
	"C:/ti/ccsv6/tools/compiler/c2000_15.12.3.LTS/bin/cl2000" -v28 -ml -mt --cla_support=cla0 --vcu_support=vcu0 -O2 --include_path="C:/ti/ccsv6/tools/compiler/c2000_15.12.3.LTS/include" --include_path="C:/Users/wmj/Desktop/BM1000_v1.1/sw/modules/hal/boards/hvkit_rev1p1/f28x/f2806x/src" --include_path="C:/Users/wmj/Desktop/BM1000_v1.1/sw/solutions/instaspin_motion/boards/hvkit_rev1p1/f28x/f2806xM/src" --include_path="C:/Users/wmj/Desktop/BM1000_v1.1" -g --define=USE_SpinTAC --define=SOFT_FIX_ERROR --define=TMS320F28069 --define=QEP --define=FAST_ROM_V1p6 --diag_warning=225 --display_error_number --preproc_with_compile --preproc_dependency="sci.d" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

slip.obj: C:/Users/wmj/Desktop/BM1000_v1.1/sw/modules/slip/src/32b/slip.c $(GEN_OPTS) | $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: C2000 Compiler'
	"C:/ti/ccsv6/tools/compiler/c2000_15.12.3.LTS/bin/cl2000" -v28 -ml -mt --cla_support=cla0 --vcu_support=vcu0 -O2 --include_path="C:/ti/ccsv6/tools/compiler/c2000_15.12.3.LTS/include" --include_path="C:/Users/wmj/Desktop/BM1000_v1.1/sw/modules/hal/boards/hvkit_rev1p1/f28x/f2806x/src" --include_path="C:/Users/wmj/Desktop/BM1000_v1.1/sw/solutions/instaspin_motion/boards/hvkit_rev1p1/f28x/f2806xM/src" --include_path="C:/Users/wmj/Desktop/BM1000_v1.1" -g --define=USE_SpinTAC --define=SOFT_FIX_ERROR --define=TMS320F28069 --define=QEP --define=FAST_ROM_V1p6 --diag_warning=225 --display_error_number --preproc_with_compile --preproc_dependency="slip.d" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

spi.obj: C:/Users/wmj/Desktop/BM1000_v1.1/sw/drivers/spi/src/32b/f28x/f2806x/spi.c $(GEN_OPTS) | $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: C2000 Compiler'
	"C:/ti/ccsv6/tools/compiler/c2000_15.12.3.LTS/bin/cl2000" -v28 -ml -mt --cla_support=cla0 --vcu_support=vcu0 -O2 --include_path="C:/ti/ccsv6/tools/compiler/c2000_15.12.3.LTS/include" --include_path="C:/Users/wmj/Desktop/BM1000_v1.1/sw/modules/hal/boards/hvkit_rev1p1/f28x/f2806x/src" --include_path="C:/Users/wmj/Desktop/BM1000_v1.1/sw/solutions/instaspin_motion/boards/hvkit_rev1p1/f28x/f2806xM/src" --include_path="C:/Users/wmj/Desktop/BM1000_v1.1" -g --define=USE_SpinTAC --define=SOFT_FIX_ERROR --define=TMS320F28069 --define=QEP --define=FAST_ROM_V1p6 --diag_warning=225 --display_error_number --preproc_with_compile --preproc_dependency="spi.d" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

svgen.obj: C:/Users/wmj/Desktop/BM1000_v1.1/sw/modules/svgen/src/32b/svgen.c $(GEN_OPTS) | $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: C2000 Compiler'
	"C:/ti/ccsv6/tools/compiler/c2000_15.12.3.LTS/bin/cl2000" -v28 -ml -mt --cla_support=cla0 --vcu_support=vcu0 -O2 --include_path="C:/ti/ccsv6/tools/compiler/c2000_15.12.3.LTS/include" --include_path="C:/Users/wmj/Desktop/BM1000_v1.1/sw/modules/hal/boards/hvkit_rev1p1/f28x/f2806x/src" --include_path="C:/Users/wmj/Desktop/BM1000_v1.1/sw/solutions/instaspin_motion/boards/hvkit_rev1p1/f28x/f2806xM/src" --include_path="C:/Users/wmj/Desktop/BM1000_v1.1" -g --define=USE_SpinTAC --define=SOFT_FIX_ERROR --define=TMS320F28069 --define=QEP --define=FAST_ROM_V1p6 --diag_warning=225 --display_error_number --preproc_with_compile --preproc_dependency="svgen.d" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

timer.obj: C:/Users/wmj/Desktop/BM1000_v1.1/sw/drivers/timer/src/32b/f28x/f2806x/timer.c $(GEN_OPTS) | $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: C2000 Compiler'
	"C:/ti/ccsv6/tools/compiler/c2000_15.12.3.LTS/bin/cl2000" -v28 -ml -mt --cla_support=cla0 --vcu_support=vcu0 -O2 --include_path="C:/ti/ccsv6/tools/compiler/c2000_15.12.3.LTS/include" --include_path="C:/Users/wmj/Desktop/BM1000_v1.1/sw/modules/hal/boards/hvkit_rev1p1/f28x/f2806x/src" --include_path="C:/Users/wmj/Desktop/BM1000_v1.1/sw/solutions/instaspin_motion/boards/hvkit_rev1p1/f28x/f2806xM/src" --include_path="C:/Users/wmj/Desktop/BM1000_v1.1" -g --define=USE_SpinTAC --define=SOFT_FIX_ERROR --define=TMS320F28069 --define=QEP --define=FAST_ROM_V1p6 --diag_warning=225 --display_error_number --preproc_with_compile --preproc_dependency="timer.d" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

traj.obj: C:/Users/wmj/Desktop/BM1000_v1.1/sw/modules/traj/src/32b/traj.c $(GEN_OPTS) | $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: C2000 Compiler'
	"C:/ti/ccsv6/tools/compiler/c2000_15.12.3.LTS/bin/cl2000" -v28 -ml -mt --cla_support=cla0 --vcu_support=vcu0 -O2 --include_path="C:/ti/ccsv6/tools/compiler/c2000_15.12.3.LTS/include" --include_path="C:/Users/wmj/Desktop/BM1000_v1.1/sw/modules/hal/boards/hvkit_rev1p1/f28x/f2806x/src" --include_path="C:/Users/wmj/Desktop/BM1000_v1.1/sw/solutions/instaspin_motion/boards/hvkit_rev1p1/f28x/f2806xM/src" --include_path="C:/Users/wmj/Desktop/BM1000_v1.1" -g --define=USE_SpinTAC --define=SOFT_FIX_ERROR --define=TMS320F28069 --define=QEP --define=FAST_ROM_V1p6 --diag_warning=225 --display_error_number --preproc_with_compile --preproc_dependency="traj.d" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

usDelay.obj: C:/Users/wmj/Desktop/BM1000_v1.1/sw/modules/usDelay/src/32b/f28x/usDelay.asm $(GEN_OPTS) | $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: C2000 Compiler'
	"C:/ti/ccsv6/tools/compiler/c2000_15.12.3.LTS/bin/cl2000" -v28 -ml -mt --cla_support=cla0 --vcu_support=vcu0 -O2 --include_path="C:/ti/ccsv6/tools/compiler/c2000_15.12.3.LTS/include" --include_path="C:/Users/wmj/Desktop/BM1000_v1.1/sw/modules/hal/boards/hvkit_rev1p1/f28x/f2806x/src" --include_path="C:/Users/wmj/Desktop/BM1000_v1.1/sw/solutions/instaspin_motion/boards/hvkit_rev1p1/f28x/f2806xM/src" --include_path="C:/Users/wmj/Desktop/BM1000_v1.1" -g --define=USE_SpinTAC --define=SOFT_FIX_ERROR --define=TMS320F28069 --define=QEP --define=FAST_ROM_V1p6 --diag_warning=225 --display_error_number --preproc_with_compile --preproc_dependency="usDelay.d" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

user.obj: C:/Users/wmj/Desktop/BM1000_v1.1/sw/modules/user/src/32b/user.c $(GEN_OPTS) | $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: C2000 Compiler'
	"C:/ti/ccsv6/tools/compiler/c2000_15.12.3.LTS/bin/cl2000" -v28 -ml -mt --cla_support=cla0 --vcu_support=vcu0 -O2 --include_path="C:/ti/ccsv6/tools/compiler/c2000_15.12.3.LTS/include" --include_path="C:/Users/wmj/Desktop/BM1000_v1.1/sw/modules/hal/boards/hvkit_rev1p1/f28x/f2806x/src" --include_path="C:/Users/wmj/Desktop/BM1000_v1.1/sw/solutions/instaspin_motion/boards/hvkit_rev1p1/f28x/f2806xM/src" --include_path="C:/Users/wmj/Desktop/BM1000_v1.1" -g --define=USE_SpinTAC --define=SOFT_FIX_ERROR --define=TMS320F28069 --define=QEP --define=FAST_ROM_V1p6 --diag_warning=225 --display_error_number --preproc_with_compile --preproc_dependency="user.d" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

wdog.obj: C:/Users/wmj/Desktop/BM1000_v1.1/sw/drivers/wdog/src/32b/f28x/f2806x/wdog.c $(GEN_OPTS) | $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: C2000 Compiler'
	"C:/ti/ccsv6/tools/compiler/c2000_15.12.3.LTS/bin/cl2000" -v28 -ml -mt --cla_support=cla0 --vcu_support=vcu0 -O2 --include_path="C:/ti/ccsv6/tools/compiler/c2000_15.12.3.LTS/include" --include_path="C:/Users/wmj/Desktop/BM1000_v1.1/sw/modules/hal/boards/hvkit_rev1p1/f28x/f2806x/src" --include_path="C:/Users/wmj/Desktop/BM1000_v1.1/sw/solutions/instaspin_motion/boards/hvkit_rev1p1/f28x/f2806xM/src" --include_path="C:/Users/wmj/Desktop/BM1000_v1.1" -g --define=USE_SpinTAC --define=SOFT_FIX_ERROR --define=TMS320F28069 --define=QEP --define=FAST_ROM_V1p6 --diag_warning=225 --display_error_number --preproc_with_compile --preproc_dependency="wdog.d" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '


