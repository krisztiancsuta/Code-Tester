#ifndef MAS_CAN_H
#define MAS_CAN_H

#include <stdint.h>
#include <ti/driverlib/dl_mcan.h>
#include "ti_msp_dl_config.h"

#define SINGLE_MESSAGE_MODE 1 // Set to 1 to enable single message mode for CAN communication, where one message IDs are used. Set to 0 for double message mode with two message IDs.

#if SINGLE_MESSAGE_MODE
// In single message mode, only CAN_MESSAGE_ID_1 is used, and CAN_MESSAGE_ID_2 is ignored
#define CAN_MESSAGE_ID_1 0x555
#define CAN_DATA_LENGTH 8
#else
#define CAN_MESSAGE_ID_1 0x555
#define CAN_MESSAGE_ID_2 0x556
#define CAN_DATA_LENGTH 5
#endif

// CAN message structure
typedef struct
{
    uint32_t id;     // CAN message ID
    bool extended;   // Extended ID flag
    uint8_t length;  // Data length (0-8 bytes)
    uint8_t data[8]; // Data payload
} CAN_Message;

bool CAN_transfer(void);
bool can_send(CAN_Message *message, uint8_t bufferIndex);

#endif // MAS_CAN_H
