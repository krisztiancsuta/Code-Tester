#ifndef GPIO_INPUT_API_H
#define GPIO_INPUT_API_H

#include "ti_msp_dl_config.h"
#include <stdbool.h>
#include <stdint.h>

#define GPIO_INPUT_PINS_MASK_SENSOR_1   (GPIO_IN_Q0_S1_PIN | GPIO_IN_Q1_S1_PIN )

#define GPIO_INPUT_PINS_MASK_SENSOR_2   (GPIO_IN_Q0_S2_PIN |GPIO_IN_Q1_S2_PIN)

uint16_t read_hall_sensor_1(void);
uint16_t read_hall_sensor_2(void);

#endif // GPIO_INPUT_API_H
