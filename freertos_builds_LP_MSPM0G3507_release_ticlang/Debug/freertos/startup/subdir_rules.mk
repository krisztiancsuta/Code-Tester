################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Each subdirectory must supply rules for building sources it contributes
freertos/startup/%.o: ../freertos/startup/%.c $(GEN_OPTS) | $(GEN_FILES) $(GEN_MISC_FILES)
	@echo 'Building file: "$<"'
	@echo 'Invoking: Arm Compiler'
	"/Applications/ti/ccs2030/ccs/tools/compiler/ti-cgt-armllvm_4.0.3.LTS/bin/tiarmclang" -c -march=thumbv6m -mcpu=cortex-m0plus -mfloat-abi=soft -mlittle-endian -mthumb -I"/Users/krisztiancsuta/workspace_ccstheia/freertos_builds_LP_MSPM0G3507_release_ticlang" -I"/Users/krisztiancsuta/ti/mspm0_sdk_2_06_00_05/kernel/freertos/Source/include" -I"/Users/krisztiancsuta/ti/mspm0_sdk_2_06_00_05/kernel/freertos/Source/portable/TI_ARM_CLANG/ARM_CM0" -I"/Users/krisztiancsuta/ti/mspm0_sdk_2_06_00_05/source/third_party/CMSIS/Core/Include" -I"/Users/krisztiancsuta/ti/mspm0_sdk_2_06_00_05/source/ti/posix/ticlang" -I"/Users/krisztiancsuta/ti/mspm0_sdk_2_06_00_05/source" -I"/Applications/ti/ccs2030/ccs/tools/compiler/ti-cgt-armllvm_4.0.3.LTS/include" -D__MSPM0G3507__ -gdwarf-3 -MMD -MP -MF"freertos/startup/$(basename $(<F)).d_raw" -MT"$(@)"  $(GEN_OPTS__FLAG) -o"$@" "$<"
	@echo 'Finished building: "$<"'
	@echo ' '


