#ifndef MAS_I2C_DRIVER_H
#define MAS_I2C_DRIVER_H

#include <stddef.h>
#include <stdint.h>
#include <unistd.h>
#include <string.h>
#include <ti/drivers/GPIO.h>
#include <ti/drivers/I2C.h>
#include "ti_drivers_config.h"
#include "MAS_CAN.h"
#include "MAS_GPIO.h"
#include "ti_msp_dl_config.h"


#define SLAVE_ADDRESS_1 0x48
#define SLAVE_ADDRESS_2 0x49

static void i2cErrorHandler(I2C_Transaction *transaction);
static bool isConversionReady(I2C_Handle i2cHandle, uint8_t targetAddress);

void read_i2c_values(uint16_t *adc1Values, uint16_t *adc2Values,I2C_Handle i2cHandle);
#endif // MAS_I2C_DRIVER_H
