################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Each subdirectory must supply rules for building sources it contributes
dpl/AppHooks_freertos.o: /Users/krisztiancsuta/ti/mspm0_sdk_2_06_00_05/kernel/freertos/dpl/AppHooks_freertos.c $(GEN_OPTS) | $(GEN_FILES) $(GEN_MISC_FILES)
	@echo 'Building file: "$<"'
	@echo 'Invoking: Arm Compiler'
	"/Applications/ti/ccs2030/ccs/tools/compiler/ti-cgt-armllvm_4.0.3.LTS/bin/tiarmclang" -c -march=thumbv6m -mcpu=cortex-m0plus -mfloat-abi=soft -mlittle-endian -mthumb -I"/Users/krisztiancsuta/workspace_ccstheia/freertos_builds_LP_MSPM0G3507_release_ticlang" -I"/Users/krisztiancsuta/ti/mspm0_sdk_2_06_00_05/kernel/freertos/Source/include" -I"/Users/krisztiancsuta/ti/mspm0_sdk_2_06_00_05/kernel/freertos/Source/portable/TI_ARM_CLANG/ARM_CM0" -I"/Users/krisztiancsuta/ti/mspm0_sdk_2_06_00_05/source/third_party/CMSIS/Core/Include" -I"/Users/krisztiancsuta/ti/mspm0_sdk_2_06_00_05/source/ti/posix/ticlang" -I"/Users/krisztiancsuta/ti/mspm0_sdk_2_06_00_05/source" -I"/Applications/ti/ccs2030/ccs/tools/compiler/ti-cgt-armllvm_4.0.3.LTS/include" -D__MSPM0G3507__ -gdwarf-3 -MMD -MP -MF"dpl/$(basename $(<F)).d_raw" -MT"$(@)"  $(GEN_OPTS__FLAG) -o"$@" "$<"
	@echo 'Finished building: "$<"'
	@echo ' '

dpl/ClockP_freertos.o: /Users/krisztiancsuta/ti/mspm0_sdk_2_06_00_05/kernel/freertos/dpl/ClockP_freertos.c $(GEN_OPTS) | $(GEN_FILES) $(GEN_MISC_FILES)
	@echo 'Building file: "$<"'
	@echo 'Invoking: Arm Compiler'
	"/Applications/ti/ccs2030/ccs/tools/compiler/ti-cgt-armllvm_4.0.3.LTS/bin/tiarmclang" -c -march=thumbv6m -mcpu=cortex-m0plus -mfloat-abi=soft -mlittle-endian -mthumb -I"/Users/krisztiancsuta/workspace_ccstheia/freertos_builds_LP_MSPM0G3507_release_ticlang" -I"/Users/krisztiancsuta/ti/mspm0_sdk_2_06_00_05/kernel/freertos/Source/include" -I"/Users/krisztiancsuta/ti/mspm0_sdk_2_06_00_05/kernel/freertos/Source/portable/TI_ARM_CLANG/ARM_CM0" -I"/Users/krisztiancsuta/ti/mspm0_sdk_2_06_00_05/source/third_party/CMSIS/Core/Include" -I"/Users/krisztiancsuta/ti/mspm0_sdk_2_06_00_05/source/ti/posix/ticlang" -I"/Users/krisztiancsuta/ti/mspm0_sdk_2_06_00_05/source" -I"/Applications/ti/ccs2030/ccs/tools/compiler/ti-cgt-armllvm_4.0.3.LTS/include" -D__MSPM0G3507__ -gdwarf-3 -MMD -MP -MF"dpl/$(basename $(<F)).d_raw" -MT"$(@)"  $(GEN_OPTS__FLAG) -o"$@" "$<"
	@echo 'Finished building: "$<"'
	@echo ' '

dpl/DebugP_freertos.o: /Users/krisztiancsuta/ti/mspm0_sdk_2_06_00_05/kernel/freertos/dpl/DebugP_freertos.c $(GEN_OPTS) | $(GEN_FILES) $(GEN_MISC_FILES)
	@echo 'Building file: "$<"'
	@echo 'Invoking: Arm Compiler'
	"/Applications/ti/ccs2030/ccs/tools/compiler/ti-cgt-armllvm_4.0.3.LTS/bin/tiarmclang" -c -march=thumbv6m -mcpu=cortex-m0plus -mfloat-abi=soft -mlittle-endian -mthumb -I"/Users/krisztiancsuta/workspace_ccstheia/freertos_builds_LP_MSPM0G3507_release_ticlang" -I"/Users/krisztiancsuta/ti/mspm0_sdk_2_06_00_05/kernel/freertos/Source/include" -I"/Users/krisztiancsuta/ti/mspm0_sdk_2_06_00_05/kernel/freertos/Source/portable/TI_ARM_CLANG/ARM_CM0" -I"/Users/krisztiancsuta/ti/mspm0_sdk_2_06_00_05/source/third_party/CMSIS/Core/Include" -I"/Users/krisztiancsuta/ti/mspm0_sdk_2_06_00_05/source/ti/posix/ticlang" -I"/Users/krisztiancsuta/ti/mspm0_sdk_2_06_00_05/source" -I"/Applications/ti/ccs2030/ccs/tools/compiler/ti-cgt-armllvm_4.0.3.LTS/include" -D__MSPM0G3507__ -gdwarf-3 -MMD -MP -MF"dpl/$(basename $(<F)).d_raw" -MT"$(@)"  $(GEN_OPTS__FLAG) -o"$@" "$<"
	@echo 'Finished building: "$<"'
	@echo ' '

dpl/HwiPMSPM0_freertos.o: /Users/krisztiancsuta/ti/mspm0_sdk_2_06_00_05/kernel/freertos/dpl/HwiPMSPM0_freertos.c $(GEN_OPTS) | $(GEN_FILES) $(GEN_MISC_FILES)
	@echo 'Building file: "$<"'
	@echo 'Invoking: Arm Compiler'
	"/Applications/ti/ccs2030/ccs/tools/compiler/ti-cgt-armllvm_4.0.3.LTS/bin/tiarmclang" -c -march=thumbv6m -mcpu=cortex-m0plus -mfloat-abi=soft -mlittle-endian -mthumb -I"/Users/krisztiancsuta/workspace_ccstheia/freertos_builds_LP_MSPM0G3507_release_ticlang" -I"/Users/krisztiancsuta/ti/mspm0_sdk_2_06_00_05/kernel/freertos/Source/include" -I"/Users/krisztiancsuta/ti/mspm0_sdk_2_06_00_05/kernel/freertos/Source/portable/TI_ARM_CLANG/ARM_CM0" -I"/Users/krisztiancsuta/ti/mspm0_sdk_2_06_00_05/source/third_party/CMSIS/Core/Include" -I"/Users/krisztiancsuta/ti/mspm0_sdk_2_06_00_05/source/ti/posix/ticlang" -I"/Users/krisztiancsuta/ti/mspm0_sdk_2_06_00_05/source" -I"/Applications/ti/ccs2030/ccs/tools/compiler/ti-cgt-armllvm_4.0.3.LTS/include" -D__MSPM0G3507__ -gdwarf-3 -MMD -MP -MF"dpl/$(basename $(<F)).d_raw" -MT"$(@)"  $(GEN_OPTS__FLAG) -o"$@" "$<"
	@echo 'Finished building: "$<"'
	@echo ' '

dpl/MutexP_freertos.o: /Users/krisztiancsuta/ti/mspm0_sdk_2_06_00_05/kernel/freertos/dpl/MutexP_freertos.c $(GEN_OPTS) | $(GEN_FILES) $(GEN_MISC_FILES)
	@echo 'Building file: "$<"'
	@echo 'Invoking: Arm Compiler'
	"/Applications/ti/ccs2030/ccs/tools/compiler/ti-cgt-armllvm_4.0.3.LTS/bin/tiarmclang" -c -march=thumbv6m -mcpu=cortex-m0plus -mfloat-abi=soft -mlittle-endian -mthumb -I"/Users/krisztiancsuta/workspace_ccstheia/freertos_builds_LP_MSPM0G3507_release_ticlang" -I"/Users/krisztiancsuta/ti/mspm0_sdk_2_06_00_05/kernel/freertos/Source/include" -I"/Users/krisztiancsuta/ti/mspm0_sdk_2_06_00_05/kernel/freertos/Source/portable/TI_ARM_CLANG/ARM_CM0" -I"/Users/krisztiancsuta/ti/mspm0_sdk_2_06_00_05/source/third_party/CMSIS/Core/Include" -I"/Users/krisztiancsuta/ti/mspm0_sdk_2_06_00_05/source/ti/posix/ticlang" -I"/Users/krisztiancsuta/ti/mspm0_sdk_2_06_00_05/source" -I"/Applications/ti/ccs2030/ccs/tools/compiler/ti-cgt-armllvm_4.0.3.LTS/include" -D__MSPM0G3507__ -gdwarf-3 -MMD -MP -MF"dpl/$(basename $(<F)).d_raw" -MT"$(@)"  $(GEN_OPTS__FLAG) -o"$@" "$<"
	@echo 'Finished building: "$<"'
	@echo ' '

dpl/SemaphoreP_freertos.o: /Users/krisztiancsuta/ti/mspm0_sdk_2_06_00_05/kernel/freertos/dpl/SemaphoreP_freertos.c $(GEN_OPTS) | $(GEN_FILES) $(GEN_MISC_FILES)
	@echo 'Building file: "$<"'
	@echo 'Invoking: Arm Compiler'
	"/Applications/ti/ccs2030/ccs/tools/compiler/ti-cgt-armllvm_4.0.3.LTS/bin/tiarmclang" -c -march=thumbv6m -mcpu=cortex-m0plus -mfloat-abi=soft -mlittle-endian -mthumb -I"/Users/krisztiancsuta/workspace_ccstheia/freertos_builds_LP_MSPM0G3507_release_ticlang" -I"/Users/krisztiancsuta/ti/mspm0_sdk_2_06_00_05/kernel/freertos/Source/include" -I"/Users/krisztiancsuta/ti/mspm0_sdk_2_06_00_05/kernel/freertos/Source/portable/TI_ARM_CLANG/ARM_CM0" -I"/Users/krisztiancsuta/ti/mspm0_sdk_2_06_00_05/source/third_party/CMSIS/Core/Include" -I"/Users/krisztiancsuta/ti/mspm0_sdk_2_06_00_05/source/ti/posix/ticlang" -I"/Users/krisztiancsuta/ti/mspm0_sdk_2_06_00_05/source" -I"/Applications/ti/ccs2030/ccs/tools/compiler/ti-cgt-armllvm_4.0.3.LTS/include" -D__MSPM0G3507__ -gdwarf-3 -MMD -MP -MF"dpl/$(basename $(<F)).d_raw" -MT"$(@)"  $(GEN_OPTS__FLAG) -o"$@" "$<"
	@echo 'Finished building: "$<"'
	@echo ' '

dpl/StaticAllocs_freertos.o: /Users/krisztiancsuta/ti/mspm0_sdk_2_06_00_05/kernel/freertos/dpl/StaticAllocs_freertos.c $(GEN_OPTS) | $(GEN_FILES) $(GEN_MISC_FILES)
	@echo 'Building file: "$<"'
	@echo 'Invoking: Arm Compiler'
	"/Applications/ti/ccs2030/ccs/tools/compiler/ti-cgt-armllvm_4.0.3.LTS/bin/tiarmclang" -c -march=thumbv6m -mcpu=cortex-m0plus -mfloat-abi=soft -mlittle-endian -mthumb -I"/Users/krisztiancsuta/workspace_ccstheia/freertos_builds_LP_MSPM0G3507_release_ticlang" -I"/Users/krisztiancsuta/ti/mspm0_sdk_2_06_00_05/kernel/freertos/Source/include" -I"/Users/krisztiancsuta/ti/mspm0_sdk_2_06_00_05/kernel/freertos/Source/portable/TI_ARM_CLANG/ARM_CM0" -I"/Users/krisztiancsuta/ti/mspm0_sdk_2_06_00_05/source/third_party/CMSIS/Core/Include" -I"/Users/krisztiancsuta/ti/mspm0_sdk_2_06_00_05/source/ti/posix/ticlang" -I"/Users/krisztiancsuta/ti/mspm0_sdk_2_06_00_05/source" -I"/Applications/ti/ccs2030/ccs/tools/compiler/ti-cgt-armllvm_4.0.3.LTS/include" -D__MSPM0G3507__ -gdwarf-3 -MMD -MP -MF"dpl/$(basename $(<F)).d_raw" -MT"$(@)"  $(GEN_OPTS__FLAG) -o"$@" "$<"
	@echo 'Finished building: "$<"'
	@echo ' '

dpl/SystemP_freertos.o: /Users/krisztiancsuta/ti/mspm0_sdk_2_06_00_05/kernel/freertos/dpl/SystemP_freertos.c $(GEN_OPTS) | $(GEN_FILES) $(GEN_MISC_FILES)
	@echo 'Building file: "$<"'
	@echo 'Invoking: Arm Compiler'
	"/Applications/ti/ccs2030/ccs/tools/compiler/ti-cgt-armllvm_4.0.3.LTS/bin/tiarmclang" -c -march=thumbv6m -mcpu=cortex-m0plus -mfloat-abi=soft -mlittle-endian -mthumb -I"/Users/krisztiancsuta/workspace_ccstheia/freertos_builds_LP_MSPM0G3507_release_ticlang" -I"/Users/krisztiancsuta/ti/mspm0_sdk_2_06_00_05/kernel/freertos/Source/include" -I"/Users/krisztiancsuta/ti/mspm0_sdk_2_06_00_05/kernel/freertos/Source/portable/TI_ARM_CLANG/ARM_CM0" -I"/Users/krisztiancsuta/ti/mspm0_sdk_2_06_00_05/source/third_party/CMSIS/Core/Include" -I"/Users/krisztiancsuta/ti/mspm0_sdk_2_06_00_05/source/ti/posix/ticlang" -I"/Users/krisztiancsuta/ti/mspm0_sdk_2_06_00_05/source" -I"/Applications/ti/ccs2030/ccs/tools/compiler/ti-cgt-armllvm_4.0.3.LTS/include" -D__MSPM0G3507__ -gdwarf-3 -MMD -MP -MF"dpl/$(basename $(<F)).d_raw" -MT"$(@)"  $(GEN_OPTS__FLAG) -o"$@" "$<"
	@echo 'Finished building: "$<"'
	@echo ' '

dpl/TaskP_freertos.o: /Users/krisztiancsuta/ti/mspm0_sdk_2_06_00_05/kernel/freertos/dpl/TaskP_freertos.c $(GEN_OPTS) | $(GEN_FILES) $(GEN_MISC_FILES)
	@echo 'Building file: "$<"'
	@echo 'Invoking: Arm Compiler'
	"/Applications/ti/ccs2030/ccs/tools/compiler/ti-cgt-armllvm_4.0.3.LTS/bin/tiarmclang" -c -march=thumbv6m -mcpu=cortex-m0plus -mfloat-abi=soft -mlittle-endian -mthumb -I"/Users/krisztiancsuta/workspace_ccstheia/freertos_builds_LP_MSPM0G3507_release_ticlang" -I"/Users/krisztiancsuta/ti/mspm0_sdk_2_06_00_05/kernel/freertos/Source/include" -I"/Users/krisztiancsuta/ti/mspm0_sdk_2_06_00_05/kernel/freertos/Source/portable/TI_ARM_CLANG/ARM_CM0" -I"/Users/krisztiancsuta/ti/mspm0_sdk_2_06_00_05/source/third_party/CMSIS/Core/Include" -I"/Users/krisztiancsuta/ti/mspm0_sdk_2_06_00_05/source/ti/posix/ticlang" -I"/Users/krisztiancsuta/ti/mspm0_sdk_2_06_00_05/source" -I"/Applications/ti/ccs2030/ccs/tools/compiler/ti-cgt-armllvm_4.0.3.LTS/include" -D__MSPM0G3507__ -gdwarf-3 -MMD -MP -MF"dpl/$(basename $(<F)).d_raw" -MT"$(@)"  $(GEN_OPTS__FLAG) -o"$@" "$<"
	@echo 'Finished building: "$<"'
	@echo ' '


