# Makefile for MSPM0G3507 Project with TI CLANG Compiler
# Modified for FreeRTOS-based project without SysConfig dependency

# Project configuration
PROJECT_NAME = MAS_SW_2025
BUILD_DIR = Debug
RELEASE_DIR = Release

# Toolchain paths - Update these paths according to your installation
# Toolchain paths - can be set via command line flags or environment variables
TI_COMPILER_ROOT ?= $(TI_ARM_CLANG_INSTALL_DIR)
MSPM0_SDK_ROOT ?= $(MSPM0_SDK_INSTALL_DIR)

# Toolchain binaries
CC = $(TI_COMPILER_ROOT)/bin/tiarmclang
LD = $(TI_COMPILER_ROOT)/bin/tiarmclang
OBJCOPY = $(TI_COMPILER_ROOT)/bin/tiarmobjcopy
SIZE = $(TI_COMPILER_ROOT)/bin/tiarmsize
OBJDUMP = $(TI_COMPILER_ROOT)/bin/tiarmobjdump
NM = $(TI_COMPILER_ROOT)/bin/tiarmnm
READELF = $(TI_COMPILER_ROOT)/bin/tiarmreadelf

# Source files (automatically find all .c files in current directory)
C_SOURCES = \
	i2ccontroller.c \
	main_freertos.c \
	MAS_CAN.c \
	MAS_GPIO.c \
	MAS_I2C.c \
	ti_drivers_config.c \
	ti_msp_dl_config.c

# Startup file
STARTUP_SOURCE = freertos/ticlang/startup_mspm0g350x_ticlang.c

# Include paths
INCLUDES = \
	-I. \
	-Ifreertos_builds_LP_MSPM0G3507_release_ticlang \
	-I$(MSPM0_SDK_ROOT)/source \
	-I$(MSPM0_SDK_ROOT)/source/third_party/CMSIS/Core/Include \
	-I$(MSPM0_SDK_ROOT)/source/ti/devices/msp/m0p \
	-I$(MSPM0_SDK_ROOT)/source/ti/devices/msp/peripherals \
	-I$(MSPM0_SDK_ROOT)/kernel/freertos/Source/include \
	-I$(MSPM0_SDK_ROOT)/kernel/freertos/Source/portable/TI_ARM_CLANG/ARM_CM0 \
	-I$(MSPM0_SDK_ROOT)/source/ti/posix/ticlang \
	-I$(MSPM0_SDK_ROOT)/source/ti/drivers \
	-I$(MSPM0_SDK_ROOT)/source/ti/drivers/gpio \
	-I$(MSPM0_SDK_ROOT)/source/ti/drivers/i2c \
	-I$(MSPM0_SDK_ROOT)/source/ti/drivers/uart \
	-I$(MSPM0_SDK_ROOT)/source/ti/drivers/dma \
	-I$(MSPM0_SDK_ROOT)/source/ti/display

# Preprocessor definitions
DEFINES = \
	-D__MSPM0G3507__ \
	-DMSPM0G3507 \
	-DDeviceFamily_PARENT=DeviceFamily_MSPM0G3507 \
	-DDeviceFamily_MSPM0G3507

# Compiler flags (Release)
CFLAGS = \
	-c \
	-mcpu=cortex-m0plus \
	-march=armv6-m \
	-mthumb \
	-mfloat-abi=soft \
	-O2 \
	-Oz \
	-ffunction-sections \
	-fdata-sections \
	-g \
	-Wall \
	-Wextra \
	-std=c99 \
	-MMD \
	-MP

# Debug compiler flags
DEBUG_CFLAGS = \
	-c \
	-mcpu=cortex-m0plus \
	-march=armv6-m \
	-mthumb \
	-mfloat-abi=soft \
	-O0 \
	-ffunction-sections \
	-fdata-sections \
	-g3 \
	-Wall \
	-Wextra \
	-std=c99 \
	-MMD \
	-MP \
	-DDEBUG

# Linker flags (Release)
LDFLAGS = \
	-mcpu=cortex-m0plus \
	-march=armv6-m \
	-mthumb \
	-mfloat-abi=soft \
	-O2 \
	-Wl,--diag_suppress=10063 \
	-Wl,-m,$(RELEASE_DIR)/$(PROJECT_NAME).map \
	-Wl,-i,$(MSPM0_SDK_ROOT)/source \
	-Wl,-i,freertos_builds_LP_MSPM0G3507_release_ticlang/Debug \
	-Wl,-i,$(TI_COMPILER_ROOT)/lib

# Debug linker flags
DEBUG_LDFLAGS = \
	-mcpu=cortex-m0plus \
	-march=armv6-m \
	-mthumb \
	-mfloat-abi=soft \
	-O0 \
	-Wl,--diag_suppress=10063 \
	-Wl,-m,$(BUILD_DIR)/$(PROJECT_NAME).map \
	-Wl,-i,$(MSPM0_SDK_ROOT)/source \
	-Wl,-i,freertos_builds_LP_MSPM0G3507_release_ticlang/Debug \
	-Wl,-i,$(TI_COMPILER_ROOT)/lib

# Libraries
LIBS = \
	mspm0g3507.cmd \
	-Wl,-l,$(MSPM0_SDK_ROOT)/source/ti/drivers/lib/ticlang/m0p/drivers_mspm0g1x0x_g3x0x.a \
	-Wl,-l,freertos_builds_LP_MSPM0G3507_release_ticlang.lib \
	-Wl,-l,$(MSPM0_SDK_ROOT)/source/ti/driverlib/lib/ticlang/m0p/mspm0g1x0x_g3x0x/driverlib.a \
	-Wl,-l,libc.a

# Debug libraries (use same libraries for debug)
DEBUG_LIBS = \
	mspm0g3507.cmd \
	-Wl,-l,$(MSPM0_SDK_ROOT)/source/ti/drivers/lib/ticlang/m0p/drivers_mspm0g1x0x_g3x0x.a \
	-Wl,-l,freertos_builds_LP_MSPM0G3507_release_ticlang.lib \
	-Wl,-l,$(MSPM0_SDK_ROOT)/source/ti/driverlib/lib/ticlang/m0p/mspm0g1x0x_g3x0x/driverlib.a \
	-Wl,-l,libc.a

# Object files for release build
RELEASE_OBJECTS = $(addprefix $(RELEASE_DIR)/, $(notdir $(C_SOURCES:.c=.o)))
RELEASE_OBJECTS += $(RELEASE_DIR)/startup_mspm0g350x_ticlang.o

# Object files for debug build
DEBUG_OBJECTS = $(addprefix $(BUILD_DIR)/, $(notdir $(C_SOURCES:.c=.o)))
DEBUG_OBJECTS += $(BUILD_DIR)/startup_mspm0g350x_ticlang.o

# Default target
all: release

# Release build target
release: $(RELEASE_DIR)/$(PROJECT_NAME).out

# Debug build target  
debug: $(BUILD_DIR)/$(PROJECT_NAME).out

# Create build directories
$(BUILD_DIR):
	mkdir -p $(BUILD_DIR)

$(RELEASE_DIR):
	mkdir -p $(RELEASE_DIR)

# Compile source files for release
$(RELEASE_DIR)/%.o: %.c | $(RELEASE_DIR)
	@echo "Compiling $< (release)..."
	$(CC) $(CFLAGS) $(INCLUDES) $(DEFINES) -MF"$(@:.o=.d)" -MT"$@" -o $@ $<

# Compile startup file for release
$(RELEASE_DIR)/startup_mspm0g350x_ticlang.o: $(STARTUP_SOURCE) | $(RELEASE_DIR)
	@echo "Compiling startup file (release)..."
	$(CC) $(CFLAGS) $(INCLUDES) $(DEFINES) -MF"$(@:.o=.d)" -MT"$@" -o $@ $<

# Compile source files for debug
$(BUILD_DIR)/%.o: %.c | $(BUILD_DIR)
	@echo "Compiling $< (debug)..."
	$(CC) $(DEBUG_CFLAGS) $(INCLUDES) $(DEFINES) -MF"$(@:.o=.d)" -MT"$@" -o $@ $<

# Compile startup file for debug
$(BUILD_DIR)/startup_mspm0g350x_ticlang.o: $(STARTUP_SOURCE) | $(BUILD_DIR)
	@echo "Compiling startup file (debug)..."
	$(CC) $(DEBUG_CFLAGS) $(INCLUDES) $(DEFINES) -MF"$(@:.o=.d)" -MT"$@" -o $@ $<

# Link release build
$(RELEASE_DIR)/$(PROJECT_NAME).out: $(RELEASE_OBJECTS)
	@echo "Linking release build..."
	$(LD) $(LDFLAGS) -o $@ $^ $(LIBS)
	@echo "Release build complete!"
	$(SIZE) $@

# Link debug build
$(BUILD_DIR)/$(PROJECT_NAME).out: $(DEBUG_OBJECTS)
	@echo "Linking debug build..."
	$(LD) $(DEBUG_LDFLAGS) -o $@ $^ $(DEBUG_LIBS)
	@echo "Debug build complete!"
	$(SIZE) $@

# Generate hex file from release build
hex: $(RELEASE_DIR)/$(PROJECT_NAME).hex

$(RELEASE_DIR)/$(PROJECT_NAME).hex: $(RELEASE_DIR)/$(PROJECT_NAME).out
	@echo "Generating hex file..."
	$(OBJCOPY) -O ihex $< $@

# Generate binary file from release build
bin: $(RELEASE_DIR)/$(PROJECT_NAME).bin

$(RELEASE_DIR)/$(PROJECT_NAME).bin: $(RELEASE_DIR)/$(PROJECT_NAME).out
	@echo "Generating binary file..."
	$(OBJCOPY) -O binary $< $@

# Generate debug hex file
debug-hex: $(BUILD_DIR)/$(PROJECT_NAME).hex

$(BUILD_DIR)/$(PROJECT_NAME).hex: $(BUILD_DIR)/$(PROJECT_NAME).out
	@echo "Generating debug hex file..."
	$(OBJCOPY) -O ihex $< $@

# Generate debug binary file
debug-bin: $(BUILD_DIR)/$(PROJECT_NAME).bin

$(BUILD_DIR)/$(PROJECT_NAME).bin: $(BUILD_DIR)/$(PROJECT_NAME).out
	@echo "Generating debug binary file..."
	$(OBJCOPY) -O binary $< $@

# Generate assembly listing
listing: $(RELEASE_DIR)/$(PROJECT_NAME).lst

$(RELEASE_DIR)/$(PROJECT_NAME).lst: $(RELEASE_DIR)/$(PROJECT_NAME).out
	@echo "Generating assembly listing..."
	$(OBJDUMP) -h -S $< > $@

# Generate debug assembly listing
debug-listing: $(BUILD_DIR)/$(PROJECT_NAME).lst

$(BUILD_DIR)/$(PROJECT_NAME).lst: $(BUILD_DIR)/$(PROJECT_NAME).out
	@echo "Generating debug assembly listing..."
	$(OBJDUMP) -h -S $< > $@

# Generate symbol table
symbols: $(RELEASE_DIR)/$(PROJECT_NAME).sym

$(RELEASE_DIR)/$(PROJECT_NAME).sym: $(RELEASE_DIR)/$(PROJECT_NAME).out
	@echo "Generating symbol table..."
	$(NM) -n $< > $@

# Flash preparation - copy necessary files for Code Composer Studio
flash-prep: release debug
	@mkdir -p Flash_or_Debug
	@echo "Preparing files for flashing..."
	@if [ -f "$(RELEASE_DIR)/$(PROJECT_NAME).out" ]; then \
		cp "$(RELEASE_DIR)/$(PROJECT_NAME).out" "Flash_or_Debug/$(PROJECT_NAME).out"; \
		echo "  - Copied release build: $(PROJECT_NAME).out"; \
	fi
	@if [ -f "$(BUILD_DIR)/$(PROJECT_NAME).out" ]; then \
		cp "$(BUILD_DIR)/$(PROJECT_NAME).out" "Flash_or_Debug/$(PROJECT_NAME)_debug.out"; \
		echo "  - Copied debug build: $(PROJECT_NAME)_debug.out"; \
	fi
	@if [ -f "targetConfigs/MSPM0G3507.ccxml" ]; then \
		cp "targetConfigs/MSPM0G3507.ccxml" "Flash_or_Debug/MSPM0G3507.ccxml"; \
		echo "  - Copied target config: MSPM0G3507.ccxml"; \
	fi
	@echo "Flash preparation complete! Use Flash_or_Debug folder in CCS."

# Build everything
all-formats: release debug hex bin debug-hex debug-bin listing debug-listing symbols

# Check if toolchain exists
check-tools:
	@echo "Checking TI CLANG toolchain..."
	@test -x $(CC) || (echo "Error: TI CLANG compiler not found at $(CC)" && exit 1)
	@test -d $(MSPM0_SDK_ROOT) || (echo "Error: MSPM0 SDK not found at $(MSPM0_SDK_ROOT)" && exit 1)
	@echo "Toolchain check passed!"

# Clean build files
clean:
	@echo "Cleaning build files..."
	-rm -rf $(BUILD_DIR)
	-rm -rf $(RELEASE_DIR)
	-rm -rf Flash_or_Debug

# Clean and rebuild
rebuild: clean all

# Clean and rebuild everything
rebuild-all: clean all-formats

# Show project info
info:
	@echo "Project: $(PROJECT_NAME)"
	@echo "Target: MSPM0G3507"
	@echo "Compiler: TI CLANG ($(TI_COMPILER_ROOT))"
	@echo "SDK: $(MSPM0_SDK_ROOT)"
	@echo ""
	@echo "Source files:"
	@for src in $(C_SOURCES); do echo "  - $$src"; done
	@echo "  - $(STARTUP_SOURCE)"
	@echo ""
	@echo "Build directories:"
	@echo "  - $(BUILD_DIR)/ (debug builds)"
	@echo "  - $(RELEASE_DIR)/ (release builds)"
	@echo "  - Flash_or_Debug/ (ready for CCS flashing)"

# Help target
help:
	@echo "TI CLANG Makefile for MSPM0G3507 FreeRTOS Project"
	@echo "=================================================="
	@echo ""
	@echo "Build targets:"
	@echo "  all            - Build release version (default)"
	@echo "  release        - Build optimized release version"
	@echo "  debug          - Build debug version with symbols"
	@echo "  rebuild        - Clean and build release"
	@echo "  rebuild-all    - Clean and build all formats"
	@echo ""
	@echo "Output formats:"
	@echo "  hex            - Generate Intel hex file (release)"
	@echo "  bin            - Generate binary file (release)"
	@echo "  debug-hex      - Generate hex file (debug)"
	@echo "  debug-bin      - Generate binary file (debug)"
	@echo "  listing        - Generate assembly listing (release)"
	@echo "  debug-listing  - Generate assembly listing (debug)"
	@echo "  symbols        - Generate symbol table (release)"
	@echo "  all-formats    - Build all output formats"
	@echo ""
	@echo "Flashing and debugging:"
	@echo "  flash-prep     - Prepare files for Code Composer Studio flashing"
	@echo ""
	@echo "Maintenance:"
	@echo "  clean          - Remove all build files"
	@echo "  check-tools    - Verify toolchain installation"
	@echo "  info           - Show project information"
	@echo "  help           - Show this help message"
	@echo ""
	@echo "File organization:"
	@echo "  Release/       - Optimized release builds"
	@echo "  Debug/         - Debug builds with symbols"
	@echo "  Flash_or_Debug/ - Files ready for CCS (created by flash-prep)"

# Include dependency files
-include $(BUILD_DIR)/*.d
-include $(RELEASE_DIR)/*.d

# Declare phony targets
.PHONY: all release debug rebuild rebuild-all clean hex bin debug-hex debug-bin \
        listing debug-listing symbols flash-prep all-formats check-tools info help
