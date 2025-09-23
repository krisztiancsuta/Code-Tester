################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Each subdirectory must supply rules for building sources it contributes
FRT_Library/%.o: ../FRT_Library/%.c $(GEN_OPTS) | $(GEN_FILES) $(GEN_MISC_FILES)
	@echo 'Building file: "$<"'
	@echo 'Invoking: Arm Compiler'
	"/Applications/ti/ccs1281/ccs/tools/compiler/ti-cgt-armllvm_3.2.1.LTS/bin/tiarmclang" -c -march=thumbv6m -mcpu=cortex-m0plus -mfloat-abi=soft -mlittle-endian -mthumb -O2 -I"/Users/krisztiancsuta/Documents/FRT/MAS_SW_2025" -I"/Users/krisztiancsuta/ti/mspm0_sdk_2_04_00_06/source/third_party/CMSIS/Core/Include" -I"/Users/krisztiancsuta/ti/mspm0_sdk_2_04_00_06/kernel/freertos/Source/include" -I"/Users/krisztiancsuta/ti/mspm0_sdk_2_04_00_06/source" -I"/Users/krisztiancsuta/ti/mspm0_sdk_2_04_00_06/kernel/freertos/Source/portable/TI_ARM_CLANG/ARM_CM0" -I"/Users/krisztiancsuta/ti/mspm0_sdk_2_04_00_06/source/ti/posix/ticlang" -I"/Users/krisztiancsuta/Documents/FRT/freertos_builds_LP_MSPM0G3507_release_ticlang" -D__MSPM0G3507__ -gdwarf-3 -MMD -MP -MF"FRT_Library/$(basename $(<F)).d_raw" -MT"$(@)"  $(GEN_OPTS__FLAG) -o"$@" "$<"
	@echo 'Finished building: "$<"'
	@echo ' '


