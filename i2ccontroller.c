#include <stddef.h>
#include <stdint.h>
//#include <unistd.h>
//#include <string.h>
#include <ti/drivers/GPIO.h>
#include <ti/drivers/I2C.h>
#include "ti_drivers_config.h"
#include "MAS_CAN.h"
#include "MAS_I2C.h"
#include "ti_msp_dl_config.h"

// Sensor reading sin / cos for sensor 1
uint16_t sin_cos1[2];
uint8_t hall_value1;
// Can be 0 - 00
//        1 - 01
//        2 - 10
//        3 - 11

// Sensor reading sin / cos for sensor 2
uint16_t sin_cos2[2];
uint8_t hall_value2;



uint32_t clk;
uint32_t clk;
void *mainThread(void *arg0)
{

    I2C_Handle i2cHandle;
    I2C_Params i2cParams;

    bool status;

    I2C_init();

    I2C_Params_init(&i2cParams);
    i2cParams.bitRate = I2C_400kHz;
    i2cHandle = I2C_open(CONFIG_I2C_0, &i2cParams);
    if (i2cHandle == NULL)
    {
        while (1)
            ; // Halt if I2C initialization fails
    }

    while(1){
    	read_i2c_values(sin_cos1, sin_cos2,i2cHandle);

    	CAN_transfer();
    }
}




