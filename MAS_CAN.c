#include "MAS_CAN.h"

extern uint16_t sin_cos1[2]; // adc1Sin, adc1Cos
extern uint16_t sin_cos2[2]; // adc2Sin, adc2Cos
extern uint16_t hall_value1;
extern uint16_t hall_value2;

CAN_Message message1, message2;

bool can_send(CAN_Message *message, uint8_t bufferIndex)
{
    DL_MCAN_TxBufElement txElement = {
        .id = (message->id << 18),
        .rtr = 0U, // Data frame
        .xtd = message->extended ? 1U : 0U,
        .esi = 0U, // Error state indicator
        .dlc = message->length,
        .brs = 0U,  // Bit rate switching disabled
        .fdf = 0U,  // Classic CAN frame
        .efc = 1U,  // Event FIFO control
        .mm = 0xAAU // Message marker
    };

    // Copy message data
    for (uint8_t i = 0; i < message->length; i++)
    {
        txElement.data[i] = message->data[i];
    }

    // Wait for normal mode
    while (DL_MCAN_OPERATION_MODE_NORMAL != DL_MCAN_getOpMode(MCAN0_INST))
        ;

    // Write to message RAM
    DL_MCAN_writeMsgRam(MCAN0_INST, DL_MCAN_MEM_TYPE_BUF, bufferIndex, &txElement);

    // Request transmission
    return (DL_MCAN_TXBufAddReq(MCAN0_INST, bufferIndex) == 0);
}

bool CAN_transfer(void)
{
    // Prepare CAN messages
    // message1 and message2 are defined in MAS_CAN.h
    // They are used to send data from the sensors

    // If SINGLE_MESSAGE_MODE is enabled, only message1 is used
    // Otherwise, both message1 and message2 are used
#if SINGLE_MESSAGE_MODE

    uint16_t packed1 = ((sin_cos1[0] >> 1) & 0x7FFF) | (((hall_value1 >> 0) & 0x01) << 15);
    uint16_t packed2 = ((sin_cos1[1] >> 1) & 0x7FFF) | (((hall_value1 >> 1) & 0x01) << 15);
    uint16_t packed3 = ((sin_cos2[0] >> 1) & 0x7FFF) | (((hall_value2 >> 0) & 0x01) << 15);
    uint16_t packed4 = ((sin_cos2[1] >> 1) & 0x7FFF) | (((hall_value2 >> 1) & 0x01) << 15);

    message1.id = CAN_MESSAGE_ID_1;
    message1.extended = false;
    message1.length = CAN_DATA_LENGTH;

    message1.data[0] = (packed1 >> 8) & 0xFF;
    message1.data[1] = packed1 & 0xFF;
    message1.data[2] = (packed2 >> 8) & 0xFF;
    message1.data[3] = packed2 & 0xFF;
    message1.data[4] = (packed3 >> 8) & 0xFF;
    message1.data[5] = packed3 & 0xFF;
    message1.data[6] = (packed4 >> 8) & 0xFF;
    message1.data[7] = packed4 & 0xFF;

    bool ok1 = can_send(&message1, 0);

    return ok1;
#else
    message1.id = CAN_MESSAGE_ID_1;
    message1.extended = false;
    message1.length = CAN_DATA_LENGTH;

    message1.data[0] = (sin_cos1[0] >> 8) & 0xFF;
    message1.data[1] = sin_cos1[0] & 0xFF;
    message1.data[2] = (sin_cos1[1] >> 8) & 0xFF;
    message1.data[3] = sin_cos1[1] & 0xFF;
    message1.data[4] = hall_value1;

    message2.id = CAN_MESSAGE_ID_2;
    message2.extended = false;
    message2.length = CAN_DATA_LENGTH;
    message2.data[0] = (sin_cos2[0] >> 8) & 0xFF;
    message2.data[1] = sin_cos2[0] & 0xFF;
    message2.data[2] = (sin_cos2[1] >> 8) & 0xFF;
    message2.data[3] = sin_cos2[1] & 0xFF;
    message2.data[4] = hall_value2;
    bool ok1 = can_send(&message1, 0);

    bool ok2 = can_send(&message2, 1);

    return ok1 && ok2;
#endif
}
