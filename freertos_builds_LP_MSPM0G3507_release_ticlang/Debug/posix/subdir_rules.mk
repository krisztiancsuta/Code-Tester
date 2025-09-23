################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Each subdirectory must supply rules for building sources it contributes
posix/PTLS.o: /Users/krisztiancsuta/ti/mspm0_sdk_2_06_00_05/source/ti/posix/freertos/PTLS.c $(GEN_OPTS) | $(GEN_FILES) $(GEN_MISC_FILES)
	@echo 'Building file: "$<"'
	@echo 'Invoking: Arm Compiler'
	"/Applications/ti/ccs2030/ccs/tools/compiler/ti-cgt-armllvm_4.0.3.LTS/bin/tiarmclang" -c -march=thumbv6m -mcpu=cortex-m0plus -mfloat-abi=soft -mlittle-endian -mthumb -I"/Users/krisztiancsuta/workspace_ccstheia/freertos_builds_LP_MSPM0G3507_release_ticlang" -I"/Users/krisztiancsuta/ti/mspm0_sdk_2_06_00_05/kernel/freertos/Source/include" -I"/Users/krisztiancsuta/ti/mspm0_sdk_2_06_00_05/kernel/freertos/Source/portable/TI_ARM_CLANG/ARM_CM0" -I"/Users/krisztiancsuta/ti/mspm0_sdk_2_06_00_05/source/third_party/CMSIS/Core/Include" -I"/Users/krisztiancsuta/ti/mspm0_sdk_2_06_00_05/source/ti/posix/ticlang" -I"/Users/krisztiancsuta/ti/mspm0_sdk_2_06_00_05/source" -I"/Applications/ti/ccs2030/ccs/tools/compiler/ti-cgt-armllvm_4.0.3.LTS/include" -D__MSPM0G3507__ -gdwarf-3 -MMD -MP -MF"posix/$(basename $(<F)).d_raw" -MT"$(@)"  $(GEN_OPTS__FLAG) -o"$@" "$<"
	@echo 'Finished building: "$<"'
	@echo ' '

posix/aeabi_portable.o: /Users/krisztiancsuta/ti/mspm0_sdk_2_06_00_05/source/ti/posix/freertos/aeabi_portable.c $(GEN_OPTS) | $(GEN_FILES) $(GEN_MISC_FILES)
	@echo 'Building file: "$<"'
	@echo 'Invoking: Arm Compiler'
	"/Applications/ti/ccs2030/ccs/tools/compiler/ti-cgt-armllvm_4.0.3.LTS/bin/tiarmclang" -c -march=thumbv6m -mcpu=cortex-m0plus -mfloat-abi=soft -mlittle-endian -mthumb -I"/Users/krisztiancsuta/workspace_ccstheia/freertos_builds_LP_MSPM0G3507_release_ticlang" -I"/Users/krisztiancsuta/ti/mspm0_sdk_2_06_00_05/kernel/freertos/Source/include" -I"/Users/krisztiancsuta/ti/mspm0_sdk_2_06_00_05/kernel/freertos/Source/portable/TI_ARM_CLANG/ARM_CM0" -I"/Users/krisztiancsuta/ti/mspm0_sdk_2_06_00_05/source/third_party/CMSIS/Core/Include" -I"/Users/krisztiancsuta/ti/mspm0_sdk_2_06_00_05/source/ti/posix/ticlang" -I"/Users/krisztiancsuta/ti/mspm0_sdk_2_06_00_05/source" -I"/Applications/ti/ccs2030/ccs/tools/compiler/ti-cgt-armllvm_4.0.3.LTS/include" -D__MSPM0G3507__ -gdwarf-3 -MMD -MP -MF"posix/$(basename $(<F)).d_raw" -MT"$(@)"  $(GEN_OPTS__FLAG) -o"$@" "$<"
	@echo 'Finished building: "$<"'
	@echo ' '

posix/clock.o: /Users/krisztiancsuta/ti/mspm0_sdk_2_06_00_05/source/ti/posix/freertos/clock.c $(GEN_OPTS) | $(GEN_FILES) $(GEN_MISC_FILES)
	@echo 'Building file: "$<"'
	@echo 'Invoking: Arm Compiler'
	"/Applications/ti/ccs2030/ccs/tools/compiler/ti-cgt-armllvm_4.0.3.LTS/bin/tiarmclang" -c -march=thumbv6m -mcpu=cortex-m0plus -mfloat-abi=soft -mlittle-endian -mthumb -I"/Users/krisztiancsuta/workspace_ccstheia/freertos_builds_LP_MSPM0G3507_release_ticlang" -I"/Users/krisztiancsuta/ti/mspm0_sdk_2_06_00_05/kernel/freertos/Source/include" -I"/Users/krisztiancsuta/ti/mspm0_sdk_2_06_00_05/kernel/freertos/Source/portable/TI_ARM_CLANG/ARM_CM0" -I"/Users/krisztiancsuta/ti/mspm0_sdk_2_06_00_05/source/third_party/CMSIS/Core/Include" -I"/Users/krisztiancsuta/ti/mspm0_sdk_2_06_00_05/source/ti/posix/ticlang" -I"/Users/krisztiancsuta/ti/mspm0_sdk_2_06_00_05/source" -I"/Applications/ti/ccs2030/ccs/tools/compiler/ti-cgt-armllvm_4.0.3.LTS/include" -D__MSPM0G3507__ -gdwarf-3 -MMD -MP -MF"posix/$(basename $(<F)).d_raw" -MT"$(@)"  $(GEN_OPTS__FLAG) -o"$@" "$<"
	@echo 'Finished building: "$<"'
	@echo ' '

posix/memory.o: /Users/krisztiancsuta/ti/mspm0_sdk_2_06_00_05/source/ti/posix/freertos/memory.c $(GEN_OPTS) | $(GEN_FILES) $(GEN_MISC_FILES)
	@echo 'Building file: "$<"'
	@echo 'Invoking: Arm Compiler'
	"/Applications/ti/ccs2030/ccs/tools/compiler/ti-cgt-armllvm_4.0.3.LTS/bin/tiarmclang" -c -march=thumbv6m -mcpu=cortex-m0plus -mfloat-abi=soft -mlittle-endian -mthumb -I"/Users/krisztiancsuta/workspace_ccstheia/freertos_builds_LP_MSPM0G3507_release_ticlang" -I"/Users/krisztiancsuta/ti/mspm0_sdk_2_06_00_05/kernel/freertos/Source/include" -I"/Users/krisztiancsuta/ti/mspm0_sdk_2_06_00_05/kernel/freertos/Source/portable/TI_ARM_CLANG/ARM_CM0" -I"/Users/krisztiancsuta/ti/mspm0_sdk_2_06_00_05/source/third_party/CMSIS/Core/Include" -I"/Users/krisztiancsuta/ti/mspm0_sdk_2_06_00_05/source/ti/posix/ticlang" -I"/Users/krisztiancsuta/ti/mspm0_sdk_2_06_00_05/source" -I"/Applications/ti/ccs2030/ccs/tools/compiler/ti-cgt-armllvm_4.0.3.LTS/include" -D__MSPM0G3507__ -gdwarf-3 -MMD -MP -MF"posix/$(basename $(<F)).d_raw" -MT"$(@)"  $(GEN_OPTS__FLAG) -o"$@" "$<"
	@echo 'Finished building: "$<"'
	@echo ' '

posix/mqueue.o: /Users/krisztiancsuta/ti/mspm0_sdk_2_06_00_05/source/ti/posix/freertos/mqueue.c $(GEN_OPTS) | $(GEN_FILES) $(GEN_MISC_FILES)
	@echo 'Building file: "$<"'
	@echo 'Invoking: Arm Compiler'
	"/Applications/ti/ccs2030/ccs/tools/compiler/ti-cgt-armllvm_4.0.3.LTS/bin/tiarmclang" -c -march=thumbv6m -mcpu=cortex-m0plus -mfloat-abi=soft -mlittle-endian -mthumb -I"/Users/krisztiancsuta/workspace_ccstheia/freertos_builds_LP_MSPM0G3507_release_ticlang" -I"/Users/krisztiancsuta/ti/mspm0_sdk_2_06_00_05/kernel/freertos/Source/include" -I"/Users/krisztiancsuta/ti/mspm0_sdk_2_06_00_05/kernel/freertos/Source/portable/TI_ARM_CLANG/ARM_CM0" -I"/Users/krisztiancsuta/ti/mspm0_sdk_2_06_00_05/source/third_party/CMSIS/Core/Include" -I"/Users/krisztiancsuta/ti/mspm0_sdk_2_06_00_05/source/ti/posix/ticlang" -I"/Users/krisztiancsuta/ti/mspm0_sdk_2_06_00_05/source" -I"/Applications/ti/ccs2030/ccs/tools/compiler/ti-cgt-armllvm_4.0.3.LTS/include" -D__MSPM0G3507__ -gdwarf-3 -MMD -MP -MF"posix/$(basename $(<F)).d_raw" -MT"$(@)"  $(GEN_OPTS__FLAG) -o"$@" "$<"
	@echo 'Finished building: "$<"'
	@echo ' '

posix/pthread.o: /Users/krisztiancsuta/ti/mspm0_sdk_2_06_00_05/source/ti/posix/freertos/pthread.c $(GEN_OPTS) | $(GEN_FILES) $(GEN_MISC_FILES)
	@echo 'Building file: "$<"'
	@echo 'Invoking: Arm Compiler'
	"/Applications/ti/ccs2030/ccs/tools/compiler/ti-cgt-armllvm_4.0.3.LTS/bin/tiarmclang" -c -march=thumbv6m -mcpu=cortex-m0plus -mfloat-abi=soft -mlittle-endian -mthumb -I"/Users/krisztiancsuta/workspace_ccstheia/freertos_builds_LP_MSPM0G3507_release_ticlang" -I"/Users/krisztiancsuta/ti/mspm0_sdk_2_06_00_05/kernel/freertos/Source/include" -I"/Users/krisztiancsuta/ti/mspm0_sdk_2_06_00_05/kernel/freertos/Source/portable/TI_ARM_CLANG/ARM_CM0" -I"/Users/krisztiancsuta/ti/mspm0_sdk_2_06_00_05/source/third_party/CMSIS/Core/Include" -I"/Users/krisztiancsuta/ti/mspm0_sdk_2_06_00_05/source/ti/posix/ticlang" -I"/Users/krisztiancsuta/ti/mspm0_sdk_2_06_00_05/source" -I"/Applications/ti/ccs2030/ccs/tools/compiler/ti-cgt-armllvm_4.0.3.LTS/include" -D__MSPM0G3507__ -gdwarf-3 -MMD -MP -MF"posix/$(basename $(<F)).d_raw" -MT"$(@)"  $(GEN_OPTS__FLAG) -o"$@" "$<"
	@echo 'Finished building: "$<"'
	@echo ' '

posix/pthread_barrier.o: /Users/krisztiancsuta/ti/mspm0_sdk_2_06_00_05/source/ti/posix/freertos/pthread_barrier.c $(GEN_OPTS) | $(GEN_FILES) $(GEN_MISC_FILES)
	@echo 'Building file: "$<"'
	@echo 'Invoking: Arm Compiler'
	"/Applications/ti/ccs2030/ccs/tools/compiler/ti-cgt-armllvm_4.0.3.LTS/bin/tiarmclang" -c -march=thumbv6m -mcpu=cortex-m0plus -mfloat-abi=soft -mlittle-endian -mthumb -I"/Users/krisztiancsuta/workspace_ccstheia/freertos_builds_LP_MSPM0G3507_release_ticlang" -I"/Users/krisztiancsuta/ti/mspm0_sdk_2_06_00_05/kernel/freertos/Source/include" -I"/Users/krisztiancsuta/ti/mspm0_sdk_2_06_00_05/kernel/freertos/Source/portable/TI_ARM_CLANG/ARM_CM0" -I"/Users/krisztiancsuta/ti/mspm0_sdk_2_06_00_05/source/third_party/CMSIS/Core/Include" -I"/Users/krisztiancsuta/ti/mspm0_sdk_2_06_00_05/source/ti/posix/ticlang" -I"/Users/krisztiancsuta/ti/mspm0_sdk_2_06_00_05/source" -I"/Applications/ti/ccs2030/ccs/tools/compiler/ti-cgt-armllvm_4.0.3.LTS/include" -D__MSPM0G3507__ -gdwarf-3 -MMD -MP -MF"posix/$(basename $(<F)).d_raw" -MT"$(@)"  $(GEN_OPTS__FLAG) -o"$@" "$<"
	@echo 'Finished building: "$<"'
	@echo ' '

posix/pthread_cond.o: /Users/krisztiancsuta/ti/mspm0_sdk_2_06_00_05/source/ti/posix/freertos/pthread_cond.c $(GEN_OPTS) | $(GEN_FILES) $(GEN_MISC_FILES)
	@echo 'Building file: "$<"'
	@echo 'Invoking: Arm Compiler'
	"/Applications/ti/ccs2030/ccs/tools/compiler/ti-cgt-armllvm_4.0.3.LTS/bin/tiarmclang" -c -march=thumbv6m -mcpu=cortex-m0plus -mfloat-abi=soft -mlittle-endian -mthumb -I"/Users/krisztiancsuta/workspace_ccstheia/freertos_builds_LP_MSPM0G3507_release_ticlang" -I"/Users/krisztiancsuta/ti/mspm0_sdk_2_06_00_05/kernel/freertos/Source/include" -I"/Users/krisztiancsuta/ti/mspm0_sdk_2_06_00_05/kernel/freertos/Source/portable/TI_ARM_CLANG/ARM_CM0" -I"/Users/krisztiancsuta/ti/mspm0_sdk_2_06_00_05/source/third_party/CMSIS/Core/Include" -I"/Users/krisztiancsuta/ti/mspm0_sdk_2_06_00_05/source/ti/posix/ticlang" -I"/Users/krisztiancsuta/ti/mspm0_sdk_2_06_00_05/source" -I"/Applications/ti/ccs2030/ccs/tools/compiler/ti-cgt-armllvm_4.0.3.LTS/include" -D__MSPM0G3507__ -gdwarf-3 -MMD -MP -MF"posix/$(basename $(<F)).d_raw" -MT"$(@)"  $(GEN_OPTS__FLAG) -o"$@" "$<"
	@echo 'Finished building: "$<"'
	@echo ' '

posix/pthread_mutex.o: /Users/krisztiancsuta/ti/mspm0_sdk_2_06_00_05/source/ti/posix/freertos/pthread_mutex.c $(GEN_OPTS) | $(GEN_FILES) $(GEN_MISC_FILES)
	@echo 'Building file: "$<"'
	@echo 'Invoking: Arm Compiler'
	"/Applications/ti/ccs2030/ccs/tools/compiler/ti-cgt-armllvm_4.0.3.LTS/bin/tiarmclang" -c -march=thumbv6m -mcpu=cortex-m0plus -mfloat-abi=soft -mlittle-endian -mthumb -I"/Users/krisztiancsuta/workspace_ccstheia/freertos_builds_LP_MSPM0G3507_release_ticlang" -I"/Users/krisztiancsuta/ti/mspm0_sdk_2_06_00_05/kernel/freertos/Source/include" -I"/Users/krisztiancsuta/ti/mspm0_sdk_2_06_00_05/kernel/freertos/Source/portable/TI_ARM_CLANG/ARM_CM0" -I"/Users/krisztiancsuta/ti/mspm0_sdk_2_06_00_05/source/third_party/CMSIS/Core/Include" -I"/Users/krisztiancsuta/ti/mspm0_sdk_2_06_00_05/source/ti/posix/ticlang" -I"/Users/krisztiancsuta/ti/mspm0_sdk_2_06_00_05/source" -I"/Applications/ti/ccs2030/ccs/tools/compiler/ti-cgt-armllvm_4.0.3.LTS/include" -D__MSPM0G3507__ -gdwarf-3 -MMD -MP -MF"posix/$(basename $(<F)).d_raw" -MT"$(@)"  $(GEN_OPTS__FLAG) -o"$@" "$<"
	@echo 'Finished building: "$<"'
	@echo ' '

posix/pthread_rwlock.o: /Users/krisztiancsuta/ti/mspm0_sdk_2_06_00_05/source/ti/posix/freertos/pthread_rwlock.c $(GEN_OPTS) | $(GEN_FILES) $(GEN_MISC_FILES)
	@echo 'Building file: "$<"'
	@echo 'Invoking: Arm Compiler'
	"/Applications/ti/ccs2030/ccs/tools/compiler/ti-cgt-armllvm_4.0.3.LTS/bin/tiarmclang" -c -march=thumbv6m -mcpu=cortex-m0plus -mfloat-abi=soft -mlittle-endian -mthumb -I"/Users/krisztiancsuta/workspace_ccstheia/freertos_builds_LP_MSPM0G3507_release_ticlang" -I"/Users/krisztiancsuta/ti/mspm0_sdk_2_06_00_05/kernel/freertos/Source/include" -I"/Users/krisztiancsuta/ti/mspm0_sdk_2_06_00_05/kernel/freertos/Source/portable/TI_ARM_CLANG/ARM_CM0" -I"/Users/krisztiancsuta/ti/mspm0_sdk_2_06_00_05/source/third_party/CMSIS/Core/Include" -I"/Users/krisztiancsuta/ti/mspm0_sdk_2_06_00_05/source/ti/posix/ticlang" -I"/Users/krisztiancsuta/ti/mspm0_sdk_2_06_00_05/source" -I"/Applications/ti/ccs2030/ccs/tools/compiler/ti-cgt-armllvm_4.0.3.LTS/include" -D__MSPM0G3507__ -gdwarf-3 -MMD -MP -MF"posix/$(basename $(<F)).d_raw" -MT"$(@)"  $(GEN_OPTS__FLAG) -o"$@" "$<"
	@echo 'Finished building: "$<"'
	@echo ' '

posix/sched.o: /Users/krisztiancsuta/ti/mspm0_sdk_2_06_00_05/source/ti/posix/freertos/sched.c $(GEN_OPTS) | $(GEN_FILES) $(GEN_MISC_FILES)
	@echo 'Building file: "$<"'
	@echo 'Invoking: Arm Compiler'
	"/Applications/ti/ccs2030/ccs/tools/compiler/ti-cgt-armllvm_4.0.3.LTS/bin/tiarmclang" -c -march=thumbv6m -mcpu=cortex-m0plus -mfloat-abi=soft -mlittle-endian -mthumb -I"/Users/krisztiancsuta/workspace_ccstheia/freertos_builds_LP_MSPM0G3507_release_ticlang" -I"/Users/krisztiancsuta/ti/mspm0_sdk_2_06_00_05/kernel/freertos/Source/include" -I"/Users/krisztiancsuta/ti/mspm0_sdk_2_06_00_05/kernel/freertos/Source/portable/TI_ARM_CLANG/ARM_CM0" -I"/Users/krisztiancsuta/ti/mspm0_sdk_2_06_00_05/source/third_party/CMSIS/Core/Include" -I"/Users/krisztiancsuta/ti/mspm0_sdk_2_06_00_05/source/ti/posix/ticlang" -I"/Users/krisztiancsuta/ti/mspm0_sdk_2_06_00_05/source" -I"/Applications/ti/ccs2030/ccs/tools/compiler/ti-cgt-armllvm_4.0.3.LTS/include" -D__MSPM0G3507__ -gdwarf-3 -MMD -MP -MF"posix/$(basename $(<F)).d_raw" -MT"$(@)"  $(GEN_OPTS__FLAG) -o"$@" "$<"
	@echo 'Finished building: "$<"'
	@echo ' '

posix/semaphore.o: /Users/krisztiancsuta/ti/mspm0_sdk_2_06_00_05/source/ti/posix/freertos/semaphore.c $(GEN_OPTS) | $(GEN_FILES) $(GEN_MISC_FILES)
	@echo 'Building file: "$<"'
	@echo 'Invoking: Arm Compiler'
	"/Applications/ti/ccs2030/ccs/tools/compiler/ti-cgt-armllvm_4.0.3.LTS/bin/tiarmclang" -c -march=thumbv6m -mcpu=cortex-m0plus -mfloat-abi=soft -mlittle-endian -mthumb -I"/Users/krisztiancsuta/workspace_ccstheia/freertos_builds_LP_MSPM0G3507_release_ticlang" -I"/Users/krisztiancsuta/ti/mspm0_sdk_2_06_00_05/kernel/freertos/Source/include" -I"/Users/krisztiancsuta/ti/mspm0_sdk_2_06_00_05/kernel/freertos/Source/portable/TI_ARM_CLANG/ARM_CM0" -I"/Users/krisztiancsuta/ti/mspm0_sdk_2_06_00_05/source/third_party/CMSIS/Core/Include" -I"/Users/krisztiancsuta/ti/mspm0_sdk_2_06_00_05/source/ti/posix/ticlang" -I"/Users/krisztiancsuta/ti/mspm0_sdk_2_06_00_05/source" -I"/Applications/ti/ccs2030/ccs/tools/compiler/ti-cgt-armllvm_4.0.3.LTS/include" -D__MSPM0G3507__ -gdwarf-3 -MMD -MP -MF"posix/$(basename $(<F)).d_raw" -MT"$(@)"  $(GEN_OPTS__FLAG) -o"$@" "$<"
	@echo 'Finished building: "$<"'
	@echo ' '

posix/sleep.o: /Users/krisztiancsuta/ti/mspm0_sdk_2_06_00_05/source/ti/posix/freertos/sleep.c $(GEN_OPTS) | $(GEN_FILES) $(GEN_MISC_FILES)
	@echo 'Building file: "$<"'
	@echo 'Invoking: Arm Compiler'
	"/Applications/ti/ccs2030/ccs/tools/compiler/ti-cgt-armllvm_4.0.3.LTS/bin/tiarmclang" -c -march=thumbv6m -mcpu=cortex-m0plus -mfloat-abi=soft -mlittle-endian -mthumb -I"/Users/krisztiancsuta/workspace_ccstheia/freertos_builds_LP_MSPM0G3507_release_ticlang" -I"/Users/krisztiancsuta/ti/mspm0_sdk_2_06_00_05/kernel/freertos/Source/include" -I"/Users/krisztiancsuta/ti/mspm0_sdk_2_06_00_05/kernel/freertos/Source/portable/TI_ARM_CLANG/ARM_CM0" -I"/Users/krisztiancsuta/ti/mspm0_sdk_2_06_00_05/source/third_party/CMSIS/Core/Include" -I"/Users/krisztiancsuta/ti/mspm0_sdk_2_06_00_05/source/ti/posix/ticlang" -I"/Users/krisztiancsuta/ti/mspm0_sdk_2_06_00_05/source" -I"/Applications/ti/ccs2030/ccs/tools/compiler/ti-cgt-armllvm_4.0.3.LTS/include" -D__MSPM0G3507__ -gdwarf-3 -MMD -MP -MF"posix/$(basename $(<F)).d_raw" -MT"$(@)"  $(GEN_OPTS__FLAG) -o"$@" "$<"
	@echo 'Finished building: "$<"'
	@echo ' '

posix/timer.o: /Users/krisztiancsuta/ti/mspm0_sdk_2_06_00_05/source/ti/posix/freertos/timer.c $(GEN_OPTS) | $(GEN_FILES) $(GEN_MISC_FILES)
	@echo 'Building file: "$<"'
	@echo 'Invoking: Arm Compiler'
	"/Applications/ti/ccs2030/ccs/tools/compiler/ti-cgt-armllvm_4.0.3.LTS/bin/tiarmclang" -c -march=thumbv6m -mcpu=cortex-m0plus -mfloat-abi=soft -mlittle-endian -mthumb -I"/Users/krisztiancsuta/workspace_ccstheia/freertos_builds_LP_MSPM0G3507_release_ticlang" -I"/Users/krisztiancsuta/ti/mspm0_sdk_2_06_00_05/kernel/freertos/Source/include" -I"/Users/krisztiancsuta/ti/mspm0_sdk_2_06_00_05/kernel/freertos/Source/portable/TI_ARM_CLANG/ARM_CM0" -I"/Users/krisztiancsuta/ti/mspm0_sdk_2_06_00_05/source/third_party/CMSIS/Core/Include" -I"/Users/krisztiancsuta/ti/mspm0_sdk_2_06_00_05/source/ti/posix/ticlang" -I"/Users/krisztiancsuta/ti/mspm0_sdk_2_06_00_05/source" -I"/Applications/ti/ccs2030/ccs/tools/compiler/ti-cgt-armllvm_4.0.3.LTS/include" -D__MSPM0G3507__ -gdwarf-3 -MMD -MP -MF"posix/$(basename $(<F)).d_raw" -MT"$(@)"  $(GEN_OPTS__FLAG) -o"$@" "$<"
	@echo 'Finished building: "$<"'
	@echo ' '


