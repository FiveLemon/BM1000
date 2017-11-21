################################################################################
# Automatically-generated file. Do not edit!
################################################################################

SHELL = cmd.exe

CG_TOOL_ROOT := C:/ti/ccsv6/tools/compiler/c2000_15.12.3.LTS

GEN_OPTS__FLAG := 
GEN_CMDS__FLAG := 

ORDERED_OBJS += \
"C:/Users/wmj/Desktop/BM1000_v1.1/sw/modules/fast/lib/32b/f28x/f2806x/2806xRevB_FastSpinROMSymbols.lib" \
"C:/Users/wmj/Desktop/BM1000_v1.1/sw/modules/fast/lib/32b/f28x/f2806x/2806xRevB_IQmath_BootROMSymbols.lib" \
"C:/Users/wmj/Desktop/BM1000_v1.1/sw/modules/spintac/lib/32b/SpinTAC.lib" \
"C:/Users/wmj/Desktop/BM1000_v1.1/sw/modules/iqmath/lib/f28x/32b/IQmath.lib" \
"./CodeStartBranch.obj" \
"./adc.obj" \
"./brake.obj" \
"./clarke.obj" \
"./clk.obj" \
"./cpu.obj" \
"./ctrl.obj" \
"./enc.obj" \
"./filter_fo.obj" \
"./flash.obj" \
"./flyingStart.obj" \
"./fsm.obj" \
"./gpio.obj" \
"./hal.obj" \
"./i2c.obj" \
"./ipark.obj" \
"./mb.obj" \
"./memCopy.obj" \
"./motor.obj" \
"./offset.obj" \
"./osc.obj" \
"./park.obj" \
"./pid.obj" \
"./pie.obj" \
"./pll.obj" \
"./process_ctrl.obj" \
"./proj_bm1000.obj" \
"./pwm.obj" \
"./pwr.obj" \
"./qep.obj" \
"./sci.obj" \
"./slip.obj" \
"./spi.obj" \
"./svgen.obj" \
"./timer.obj" \
"./traj.obj" \
"./usDelay.obj" \
"./user.obj" \
"./wdog.obj" \
"C:/Users/wmj/Desktop/BM1000_v1.1/sw/ide/ccs/cmd/f2806x/F28069M.cmd" \
$(GEN_CMDS__FLAG) \
-llibc.a \

-include ../makefile.init

RM := DEL /F
RMDIR := RMDIR /S/Q

# All of the sources participating in the build are defined here
-include sources.mk
-include subdir_vars.mk
-include subdir_rules.mk
-include objects.mk

ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(S_DEPS)),)
-include $(S_DEPS)
endif
ifneq ($(strip $(S_UPPER_DEPS)),)
-include $(S_UPPER_DEPS)
endif
ifneq ($(strip $(S62_DEPS)),)
-include $(S62_DEPS)
endif
ifneq ($(strip $(C64_DEPS)),)
-include $(C64_DEPS)
endif
ifneq ($(strip $(ASM_DEPS)),)
-include $(ASM_DEPS)
endif
ifneq ($(strip $(CC_DEPS)),)
-include $(CC_DEPS)
endif
ifneq ($(strip $(SV7A_DEPS)),)
-include $(SV7A_DEPS)
endif
ifneq ($(strip $(S55_DEPS)),)
-include $(S55_DEPS)
endif
ifneq ($(strip $(C67_DEPS)),)
-include $(C67_DEPS)
endif
ifneq ($(strip $(CLA_DEPS)),)
-include $(CLA_DEPS)
endif
ifneq ($(strip $(C??_DEPS)),)
-include $(C??_DEPS)
endif
ifneq ($(strip $(CPP_DEPS)),)
-include $(CPP_DEPS)
endif
ifneq ($(strip $(S??_DEPS)),)
-include $(S??_DEPS)
endif
ifneq ($(strip $(C_DEPS)),)
-include $(C_DEPS)
endif
ifneq ($(strip $(C62_DEPS)),)
-include $(C62_DEPS)
endif
ifneq ($(strip $(CXX_DEPS)),)
-include $(CXX_DEPS)
endif
ifneq ($(strip $(C++_DEPS)),)
-include $(C++_DEPS)
endif
ifneq ($(strip $(ASM_UPPER_DEPS)),)
-include $(ASM_UPPER_DEPS)
endif
ifneq ($(strip $(K_DEPS)),)
-include $(K_DEPS)
endif
ifneq ($(strip $(C43_DEPS)),)
-include $(C43_DEPS)
endif
ifneq ($(strip $(INO_DEPS)),)
-include $(INO_DEPS)
endif
ifneq ($(strip $(S67_DEPS)),)
-include $(S67_DEPS)
endif
ifneq ($(strip $(SA_DEPS)),)
-include $(SA_DEPS)
endif
ifneq ($(strip $(S43_DEPS)),)
-include $(S43_DEPS)
endif
ifneq ($(strip $(OPT_DEPS)),)
-include $(OPT_DEPS)
endif
ifneq ($(strip $(PDE_DEPS)),)
-include $(PDE_DEPS)
endif
ifneq ($(strip $(S64_DEPS)),)
-include $(S64_DEPS)
endif
ifneq ($(strip $(C_UPPER_DEPS)),)
-include $(C_UPPER_DEPS)
endif
ifneq ($(strip $(C55_DEPS)),)
-include $(C55_DEPS)
endif
endif

-include ../makefile.defs

# Add inputs and outputs from these tool invocations to the build variables 
EXE_OUTPUTS += \
proj_lab13c.out \

EXE_OUTPUTS__QUOTED += \
"proj_lab13c.out" \

BIN_OUTPUTS += \
proj_lab13c.hex \

BIN_OUTPUTS__QUOTED += \
"proj_lab13c.hex" \


# All Target
all: proj_lab13c.out

# Tool invocations
proj_lab13c.out: $(OBJS) $(CMD_SRCS) $(LIB_SRCS) $(GEN_CMDS)
	@echo 'Building target: $@'
	@echo 'Invoking: C2000 Linker'
	"C:/ti/ccsv6/tools/compiler/c2000_15.12.3.LTS/bin/cl2000" -v28 -ml -mt --cla_support=cla0 --float_support=softlib --vcu_support=vcu0 -O2 -g --define=SOFT_FIX_ERROR --define=FAST_ROM_V1p6 --define=TMS320F28069 --define=USE_SpinTAC --define=FLASH --define=QEP --diag_warning=225 --display_error_number -z -m"proj_lab13c.map" --stack_size=0x3B0 --warn_sections -i"C:/ti/ccsv6/tools/compiler/c2000_15.12.3.LTS/lib" -i"C:/ti/ccsv6/tools/compiler/c2000_15.12.3.LTS/include" --reread_libs --priority --disable_auto_rts --diag_suppress=16002 --xml_link_info="proj_lab13c_linkInfo.xml" --rom_model -o "proj_lab13c.out" $(ORDERED_OBJS)
	@echo 'Finished building target: $@'
	@echo ' '

proj_lab13c.hex: $(EXE_OUTPUTS)
	@echo 'Invoking: C2000 Hex Utility'
	"C:/ti/ccsv6/tools/compiler/c2000_15.12.3.LTS/bin/hex2000"  -o "proj_lab13c.hex" $(EXE_OUTPUTS__QUOTED)
	@echo 'Finished building: $@'
	@echo ' '

# Other Targets
clean:
	-$(RM) $(EXE_OUTPUTS__QUOTED)$(BIN_OUTPUTS__QUOTED)
	-$(RM) "adc.d" "brake.d" "clarke.d" "clk.d" "cpu.d" "ctrl.d" "enc.d" "filter_fo.d" "flash.d" "flyingStart.d" "fsm.d" "gpio.d" "hal.d" "i2c.d" "ipark.d" "mb.d" "memCopy.d" "motor.d" "offset.d" "osc.d" "park.d" "pid.d" "pie.d" "pll.d" "process_ctrl.d" "proj_bm1000.d" "pwm.d" "pwr.d" "qep.d" "sci.d" "slip.d" "spi.d" "svgen.d" "timer.d" "traj.d" "user.d" "wdog.d" 
	-$(RM) "CodeStartBranch.obj" "adc.obj" "brake.obj" "clarke.obj" "clk.obj" "cpu.obj" "ctrl.obj" "enc.obj" "filter_fo.obj" "flash.obj" "flyingStart.obj" "fsm.obj" "gpio.obj" "hal.obj" "i2c.obj" "ipark.obj" "mb.obj" "memCopy.obj" "motor.obj" "offset.obj" "osc.obj" "park.obj" "pid.obj" "pie.obj" "pll.obj" "process_ctrl.obj" "proj_bm1000.obj" "pwm.obj" "pwr.obj" "qep.obj" "sci.obj" "slip.obj" "spi.obj" "svgen.obj" "timer.obj" "traj.obj" "usDelay.obj" "user.obj" "wdog.obj" 
	-$(RM) "CodeStartBranch.d" "usDelay.d" 
	-@echo 'Finished clean'
	-@echo ' '

.PHONY: all clean dependents
.SECONDARY:

-include ../makefile.targets

