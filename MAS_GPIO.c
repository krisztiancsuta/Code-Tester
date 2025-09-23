#include "MAS_GPIO.h"
#include <ti/driverlib/dl_gpio.h>
#include "ti_msp_dl_config.h"

uint16_t read_hall_sensor_1(void)
{
    uint32_t raw = DL_GPIO_readPins(GPIO_IN_PORT, GPIO_INPUT_PINS_MASK_SENSOR_1);
    uint16_t result = 0;

    if (raw & GPIO_IN_Q0_S1_PIN) result |= (1 << 0);  // Q0_S1
    if (raw & GPIO_IN_Q1_S1_PIN) result |= (1 << 1);  // Q1_S1

    return result;
}

uint16_t read_hall_sensor_2(void)
{
    uint32_t raw = DL_GPIO_readPins(GPIO_IN_PORT, GPIO_INPUT_PINS_MASK_SENSOR_2);
    uint16_t result = 0;

    if (raw & GPIO_IN_Q0_S2_PIN) result |= (1 << 0);  // Q0_S2
    if (raw & GPIO_IN_Q1_S2_PIN) result |= (1 << 1);  // Q1_S2

    return result;
}