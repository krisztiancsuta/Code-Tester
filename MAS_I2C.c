/*
 * MAS_I2C.c
 *
 *  Created on: 28 May 2025
 *      Author: krisztiancsuta
 */

#include "MAS_I2C.h"
#include "ti/devices/msp/peripherals/hw_i2c.h"
#include "MAS_GPIO.h"
#include <string.h>

extern uint8_t hall_value1;
extern uint8_t hall_value2;

uint8_t txBuffer1[3];
uint8_t rxBuffer1[2];
uint8_t txBuffer2[3];
uint8_t rxBuffer2[2];

bool status1, status2;

static void i2cErrorHandler(I2C_Transaction *transaction)
{
}

static bool isConversionReady(I2C_Handle i2cHandle, uint8_t targetAddress)
{
	I2C_Transaction i2cTransaction;
	uint8_t txBuffer[1];
	uint8_t rxBuffer[2];
	bool status;

	// Read the configuration register
	txBuffer[0] = 0x01; // Config register
	i2cTransaction.targetAddress = targetAddress;
	i2cTransaction.writeBuf = txBuffer;
	i2cTransaction.writeCount = 1;
	i2cTransaction.readBuf = rxBuffer;
	i2cTransaction.readCount = 2;

	status = I2C_transfer(i2cHandle, &i2cTransaction);
	if (!status)
	{
		i2cErrorHandler(&i2cTransaction);
	}

	// Check the OS bit (bit 15) in the configuration register
	return (rxBuffer[0] & 0x80) != 0;
}

void read_i2c_values(uint16_t *adc1Values, uint16_t *adc2Values, I2C_Handle i2cHandle)
{

	I2C_Transaction i2cTransaction1, i2cTransaction2;

	// Configure ADC1 for differential input (AIN0 - AIN1)
	i2cTransaction1.targetAddress = SLAVE_ADDRESS_1;
	txBuffer1[0] = 0x01; // Config register
	txBuffer1[1] = 0x81; // MSB: Config for differential AIN0-AIN1 (MUX = 000)
	txBuffer1[2] = 0xE3; // LSB: Config for 860 SPS
	i2cTransaction1.writeBuf = txBuffer1;
	i2cTransaction1.writeCount = 3;
	i2cTransaction1.readBuf = NULL;
	i2cTransaction1.readCount = 0;
	status1 = I2C_transfer(i2cHandle, &i2cTransaction1);
	if (!status1)
	{
		// i2cErrorHandler(&i2cTransaction1);
	}

	// Configure ADC2 for differential input (AIN0 - AIN1)
	i2cTransaction2.targetAddress = SLAVE_ADDRESS_2;
	txBuffer2[0] = 0x01; // Config register
	txBuffer2[1] = 0x81; // MSB: Config for differential AIN0-AIN1 (MUX = 000)
	txBuffer2[2] = 0xE3; // LSB: Config for 860 SPS
	i2cTransaction2.writeBuf = txBuffer2;
	i2cTransaction2.writeCount = 3;
	i2cTransaction2.readBuf = NULL;
	i2cTransaction2.readCount = 0;
	status2 = I2C_transfer(i2cHandle, &i2cTransaction2);
	if (!status2)
	{
		// i2cErrorHandler(&i2cTransaction2);
	}

	if (status1)
	{
		// Wait for both ADCs to complete conversion
		while (!isConversionReady(i2cHandle, SLAVE_ADDRESS_1))
			;
	}
	else
	{
		if (status2)
		{
			while (!isConversionReady(i2cHandle, SLAVE_ADDRESS_2))
				;
		}
	}

	// Read data from ADC1 (AIN0 - AIN1)
	i2cTransaction1.targetAddress = SLAVE_ADDRESS_1;
	txBuffer1[0] = 0x00; // Conversion register
	i2cTransaction1.writeBuf = txBuffer1;
	i2cTransaction1.writeCount = 1;
	i2cTransaction1.readBuf = rxBuffer1;
	i2cTransaction1.readCount = 2;
	status1 = I2C_transfer(i2cHandle, &i2cTransaction1);
	if (!status1)
	{
		// i2cErrorHandler(&i2cTransaction1);
		adc1Values[0] = 0;
	}
	else
	{
		adc1Values[0] = (rxBuffer1[0] << 8) | rxBuffer1[1];
		hall_value1 = read_hall_sensor_1();
	}

	// Read data from ADC2 (AIN0 - AIN1)
	i2cTransaction2.targetAddress = SLAVE_ADDRESS_2;
	txBuffer2[0] = 0x00; // Conversion register
	i2cTransaction2.writeBuf = txBuffer2;
	i2cTransaction2.writeCount = 1;
	i2cTransaction2.readBuf = rxBuffer2;
	i2cTransaction2.readCount = 2;
	status2 = I2C_transfer(i2cHandle, &i2cTransaction2);
	if (!status2)
	{
		// i2cErrorHandler(&i2cTransaction2);
		adc2Values[0] = 0;
	}
	else
	{
		adc2Values[0] = (rxBuffer2[0] << 8) | rxBuffer2[1];
		hall_value2 = read_hall_sensor_2();
	}

	// Configure ADC1 for differential input (AIN2 - AIN3)
	i2cTransaction1.targetAddress = SLAVE_ADDRESS_1;
	txBuffer1[0] = 0x01; // Config register
	txBuffer1[1] = 0xB1; // MSB: Config for differential AIN2-AIN3 (MUX = 011)
	txBuffer1[2] = 0xE3; // LSB: Config for 860 SPS
	i2cTransaction1.writeBuf = txBuffer1;
	i2cTransaction1.writeCount = 3;
	i2cTransaction1.readBuf = NULL;
	i2cTransaction1.readCount = 0;
	status1 = I2C_transfer(i2cHandle, &i2cTransaction1);
	if (!status1)
	{
		// i2cErrorHandler(&i2cTransaction1);
	}

	// Configure ADC2 for differential input (AIN2 - AIN3)
	i2cTransaction2.targetAddress = SLAVE_ADDRESS_2;
	txBuffer2[0] = 0x01; // Config register
	txBuffer2[1] = 0xB1; // MSB: Config for differential AIN2-AIN3 (MUX = 011)
	txBuffer2[2] = 0xE3; // LSB: Config for 860 SPS
	i2cTransaction2.writeBuf = txBuffer2;
	i2cTransaction2.writeCount = 3;
	i2cTransaction2.readBuf = NULL;
	i2cTransaction2.readCount = 0;
	status2 = I2C_transfer(i2cHandle, &i2cTransaction2);
	if (!status2)
	{
		// i2cErrorHandler(&i2cTransaction2);
	}

	if (status1)
	{
		// Wait for both ADCs to complete conversion
		while (!isConversionReady(i2cHandle, SLAVE_ADDRESS_1))
			;
	}
	else
	{
		if (status2)
		{
			while (!isConversionReady(i2cHandle, SLAVE_ADDRESS_2))
				;
		}
	}

	// Read data from ADC1 (AIN2 - AIN3)
	i2cTransaction1.targetAddress = SLAVE_ADDRESS_1;
	txBuffer1[0] = 0x00; // Conversion register
	i2cTransaction1.writeBuf = txBuffer1;
	i2cTransaction1.writeCount = 1;
	i2cTransaction1.readBuf = rxBuffer1;
	i2cTransaction1.readCount = 2;
	status1 = I2C_transfer(i2cHandle, &i2cTransaction1);
	if (!status1)
	{
		// i2cErrorHandler(&i2cTransaction1);
		adc1Values[1] = 0;
	}
	else
	{
		adc1Values[1] = (rxBuffer1[0] << 8) | rxBuffer1[1];
	}

	// Read data from ADC2 (AIN2 - AIN3)
	i2cTransaction2.targetAddress = SLAVE_ADDRESS_2;
	txBuffer2[0] = 0x00; // Conversion register
	i2cTransaction2.writeBuf = txBuffer2;
	i2cTransaction2.writeCount = 1;
	i2cTransaction2.readBuf = rxBuffer2;
	i2cTransaction2.readCount = 2;
	status2 = I2C_transfer(i2cHandle, &i2cTransaction2);
	if (!status2)
	{
		// i2cErrorHandler(&i2cTransaction2);
		adc2Values[1] = 0;
	}
	else
	{
		adc2Values[1] = (rxBuffer2[0] << 8) | rxBuffer2[1];
	}
}
