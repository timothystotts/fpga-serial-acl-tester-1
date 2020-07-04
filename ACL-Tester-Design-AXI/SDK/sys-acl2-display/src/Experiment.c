/*------------------------------------------------------------------------------
-- MIT License
--
-- Copyright (c) 2020 Timothy Stotts
--
-- Permission is hereby granted, free of charge, to any person obtaining a copy
-- of this software and associated documentation files (the "Software"), to deal
-- in the Software without restriction, including without limitation the rights
-- to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
-- copies of the Software, and to permit persons to whom the Software is
-- furnished to do so, subject to the following conditions:
--
-- The above copyright notice and this permission notice shall be included in
-- all copies or substantial portions of the Software.
--
-- THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
-- IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
-- FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
-- AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
-- LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
-- OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
-- SOFTWARE.
------------------------------------------------------------------------------*/
/**-----------------------------------------------------------------------------
 * @file Experiment.c
 *
 * @brief A SoPC top-level design with the PMOD SF3 FreeRTOS driver.
 * This design erases a group of subsectors, programs the subsectors, and then
 * byte-compares the contents of the subsectors. The progress is displayed on
 * a PMOD CLS 16x2 dot-matrix LCD and printed on a USB-UART display terminal.
 *
 * @author
 * Timothy Stotts (timothystotts08@gmail.com)
 *
 * @copyright
 * (c) 2020 Copyright Timothy Stotts
 *
 * This program is free software; distributed under the terms of the MIT
 * License.
------------------------------------------------------------------------------*/

/* FreeRTOS includes. */
#include "FreeRTOS.h"
#include "task.h"
#include "queue.h"
#include "timers.h"
/* Xilinx includes. */
#include <stdbool.h>
#include <string.h>
#include <stdio.h>
#include "sleep.h"
#include "xil_printf.h"
#include "xparameters.h"
#include "xintc.h"
#include "xgpio.h"
/* Project includes. */
#include "PmodACL2custom.h"
#include "PWM.h"
#include "led_pwm.h"
#include "Experiment.h"

/* Queue Handles declared in main. */
extern QueueHandle_t xQueuePrint;
extern QueueHandle_t xQueueLedConfig;
extern QueueHandle_t xQueueClsDispl;

/* ACL2 experiment constants */
#define ACL2_CONFIGURED 1
#define ACL2_NOTCONFIGURED 0
#define ACL2_NEVERCONFIGURED 2
#define ACTIVE_LED_IDX 2
#define INACTIVE_LED_IDX 3
#define AWAKE_LED_IDX 4
#define USERIO_DEVICE_ID 0
#define SWTCHS_SWS_MASK 0x0F
#define SWTCH_SW_CHANNEL 1
#define SWTCH0_MASK 0x01
#define SWTCH1_MASK 0x02
#define CLS_PRINTF_BLANK_TXT_XY "X______ Y______ "
#define CLS_PRINTF_BLANK_TXT_ZT "Z______ T______ "
#define CLS_PRINTF_BLANK_DAT_XY "X:____  Y:____  "
#define CLS_PRINTF_BLANK_DAT_ZT "Z:____  T:____  "

/*-----------------------------------------------------------*/

/* Event tracking for LED display, helper functions for prvAcl2Task */
static void updateLedsDisplayMode(int mode);
static void trackEventBasicLedDisplay(u8* count, const int ledIdx);
static void trackEventRgbLedDisplay(u8* count, const int ledIdx);

static t_rgb_led_palette_silk ledUpdate[8] = {
		{{0, 0, 0}, 0},
		{{0, 0, 0}, 1},
		{{0, 0, 0}, 2},
		{{0, 0, 0}, 3},
		{{0, 0, 0}, 4},
		{{0, 0, 0}, 5},
		{{0, 0, 0}, 6},
		{{0, 0, 0}, 7}
};

/*-----------------------------------------------------------*/
void Experiment_prvAcl2Task( void *pvParameters )
{
	const TickType_t x200millisecond = pdMS_TO_TICKS( DELAY_1_SECOND / 5 );
	const TickType_t x100millisecond = pdMS_TO_TICKS( DELAY_1_SECOND / 10 );
	static XGpio axGpio;
	PmodACL2c acl2Device;
	int status;
	u8 cntAwake = CNT_PAST_DONE;
	u8 cntActive = CNT_PAST_DONE;
	u8 cntInactive = CNT_PAST_DONE;
	u32 switchesRead = 0;
	int ledIdx = 0;
	int acl2IsConfigured = ACL2_NEVERCONFIGURED;
	char comString[PRINTF_BUF_SZ] = "";
	u8 mode = OPERATING_MODE_BOOT;

	ACL2c_SamplePacket data = {0, 0, 0, 0};
	t_cls_lines clsUpdate = {CLS_PRINTF_BLANK_TXT_XY, CLS_PRINTF_BLANK_TXT_ZT};

	/* Initialize the display to blanked value display. */
	xQueueSend(xQueueClsDispl, &clsUpdate, 0UL);

	/* Initialize the ACL2 driver device */
	ACL2c_begin(&acl2Device, XPAR_PMODACL2_0_AXI_LITE_GPIO_BASEADDR,
		 XPAR_PMODACL2_0_AXI_LITE_SPI_BASEADDR);

	/* Initialize the GPIO device for inputting switches 0,1,2,3. */
	XGpio_Initialize(&axGpio, USERIO_DEVICE_ID);
	XGpio_SelfTest(&axGpio);
	XGpio_SetDataDirection(&axGpio, SWTCH_SW_CHANNEL, SWTCHS_SWS_MASK);

	/* Update the RGB LEDs to solid red for initial value at boot-up. */
	for (ledIdx = 0; ledIdx < 4; ledIdx++) {
		ledUpdate[ledIdx].rgb.paletteBlue = 0;
		ledUpdate[ledIdx].rgb.paletteRed = 255;
		ledUpdate[ledIdx].rgb.paletteGreen = 0;
		xQueueSend( xQueueLedConfig, &ledUpdate[ledIdx], 0UL);
	}

	/* Main execution loop. Change in switches 0,1 cause change of mode. */
	for(;;) {
		/* Delay for 200 milliseconds. */
		vTaskDelay( x200millisecond );

		/* Read the AXI GPIO for switch positions. */
		switchesRead = XGpio_DiscreteRead(&axGpio, SWTCH_SW_CHANNEL);

		if (switchesRead == SWTCH0_MASK) {
			if (acl2IsConfigured != ACL2_CONFIGURED) {
				/* Reset the ACL2 */
				ACL2c_reset(&acl2Device);

				/* Delay for 100 milliseconds. */
				vTaskDelay( x100millisecond );

				/* Set ACL2 configuration data */
				ACL2c_configureMeasureMode(&acl2Device);
				acl2IsConfigured = ACL2_CONFIGURED;
				mode = OPERATING_MODE_MEAS;
				updateLedsDisplayMode(mode);
			}
		} else if (switchesRead == SWTCH1_MASK) {
			if (acl2IsConfigured != ACL2_CONFIGURED) {
				/* Reset the ACL2 */
				ACL2c_reset(&acl2Device);

				/* Delay for 100 milliseconds. */
				vTaskDelay( x100millisecond );

				/* Set ACL2 configuration data */
				ACL2c_configureLinkedMode(&acl2Device);
				acl2IsConfigured = ACL2_CONFIGURED;
				mode = OPERATING_MODE_LINK;
				updateLedsDisplayMode(mode);
			}
		} else if (acl2IsConfigured != ACL2_NEVERCONFIGURED) {
			acl2IsConfigured = ACL2_NOTCONFIGURED;
			mode = OPERATING_MODE_NONE;
			updateLedsDisplayMode(mode);
		} else {
			mode = OPERATING_MODE_BOOT;
			updateLedsDisplayMode(mode);
		}

		while (acl2IsConfigured == ACL2_CONFIGURED) {
			status = ACL2c_getStatus(&acl2Device);

			/* Capture Awake, Activity, and Inactivity statuses to display as LED update. */
			if ((ACL2c_STATUS_ACT_MASK & status) != 0) {
				cntActive = CNT_START;
			}

			if ((ACL2c_STATUS_INACT_MASK & status) != 0) {
				cntInactive = CNT_START;
			}

			if ((ACL2c_STATUS_AWAKE_MASK & status) != 0) {
				cntAwake = CNT_START;
			}

			// Capture data only when there is data available
			if ((ACL2c_STATUS_DATA_READY_MASK & status) != 0) {
				data = ACL2c_getSample(&acl2Device);
			} else {
				break;
			}
		}

		/* Print results if in an operating mode. */
		if (acl2IsConfigured && ((mode == OPERATING_MODE_MEAS) ||
								 (mode == OPERATING_MODE_LINK))) {

			// Print results always if operating mode is MEASURE,
			// Print results only on events if operating mode is LINK.

			if ((mode == OPERATING_MODE_MEAS) ||
				((mode == OPERATING_MODE_LINK) && ((CNT_START == cntActive) || (CNT_START == cntInactive)))
				) {

				snprintf(clsUpdate.line1, sizeof(clsUpdate.line1),
						"X% .3f Y% .3f",
						ACL2c_DataToG(&acl2Device, (s16)data.XData),
						ACL2c_DataToG(&acl2Device, (s16)data.YData));
				snprintf(clsUpdate.line2, sizeof(clsUpdate.line2),
						"Z% .3f T%04hd",
						ACL2c_DataToG(&acl2Device, (s16)data.ZData),
						(u16)data.Temp);
				snprintf(comString, sizeof(comString),
						("X:%04hX  Y:%04hX  " "Z:%04hX  T:%04hX  "),
						(u16)data.XData, (u16)data.YData,
						(u16)data.ZData, (u16)data.Temp);
			}

		} else {
			snprintf(clsUpdate.line1, sizeof(clsUpdate.line1),
					CLS_PRINTF_BLANK_TXT_XY);
			snprintf(clsUpdate.line2, sizeof(clsUpdate.line2),
					CLS_PRINTF_BLANK_TXT_ZT);
			snprintf(comString, sizeof(comString), "%s",
					(CLS_PRINTF_BLANK_DAT_XY CLS_PRINTF_BLANK_DAT_ZT));
		}

		/* Update the CLS display to either a measurement or a blank. */
		xQueueSend(xQueueClsDispl, &clsUpdate, 0UL);

		/* Transmit the same data via Serial COM as an update string. */
		xQueueSend(xQueuePrint, comString, 0UL);

		/* Track the AWAKE status on basic LED, AWAKE_LED_IDX . */
		trackEventBasicLedDisplay(&cntAwake, AWAKE_LED_IDX);

		/* Track the ACTIVE status on RGB LED, ACTIVE_LED_IDX. */
		trackEventRgbLedDisplay(&cntActive, ACTIVE_LED_IDX);

		/* Track the INACTIVE status on RGB LED, INACTIVE_LED_IDX . */
		trackEventRgbLedDisplay(&cntInactive, INACTIVE_LED_IDX);
	}
}

/*------------------ Private Module Functions ----------------*/
/*-----------------------------------------------------------*/
/* Helper function for displaying LEDs 0,1 based on Operating Mode. */
static void updateLedsDisplayMode(int mode)
{
	switch (mode) {
	case OPERATING_MODE_MEAS:
		/* LED pattern to indicate running Operating Mode Measurement. */
		ledUpdate[0].rgb.paletteBlue = 0;
		ledUpdate[0].rgb.paletteRed = 0;
		ledUpdate[0].rgb.paletteGreen = 255;
		xQueueSend( xQueueLedConfig, &ledUpdate[0], 0UL);
		ledUpdate[1].rgb.paletteBlue = 255;
		ledUpdate[1].rgb.paletteRed = 255;
		ledUpdate[1].rgb.paletteGreen = 255;
		xQueueSend( xQueueLedConfig, &ledUpdate[1], 0UL);
		break;
	case OPERATING_MODE_LINK:
		/* LED pattern to indicate running Operating Mode Linked. */
		ledUpdate[0].rgb.paletteBlue = 0;
		ledUpdate[0].rgb.paletteRed = 0;
		ledUpdate[0].rgb.paletteGreen = 255;
		xQueueSend( xQueueLedConfig, &ledUpdate[0], 0UL);
		ledUpdate[1].rgb.paletteBlue = 255;
		ledUpdate[1].rgb.paletteRed = 255;
		ledUpdate[1].rgb.paletteGreen = 0;
		xQueueSend( xQueueLedConfig, &ledUpdate[1], 0UL);
		break;
	case OPERATING_MODE_BOOT:
		/* LED pattern to indicate running Operating Mode booting. */
		ledUpdate[0].rgb.paletteBlue = 0;
		ledUpdate[0].rgb.paletteRed = 255;
		ledUpdate[0].rgb.paletteGreen = 0;
		xQueueSend( xQueueLedConfig, &ledUpdate[0], 0UL);
		ledUpdate[1].rgb.paletteBlue = 0;
		ledUpdate[1].rgb.paletteRed = 255;
		ledUpdate[1].rgb.paletteGreen = 0;
		xQueueSend( xQueueLedConfig, &ledUpdate[1], 0UL);
		break;
	case OPERATING_MODE_NONE:
		/* no break */
	default: /* OPERATING_MODE_NONE */
		ledUpdate[0].rgb.paletteBlue = 255;
		ledUpdate[0].rgb.paletteRed = 0;
		ledUpdate[0].rgb.paletteGreen = 0;
		xQueueSend( xQueueLedConfig, &ledUpdate[0], 0UL);
		ledUpdate[1].rgb.paletteBlue = 0;
		ledUpdate[1].rgb.paletteRed = 255;
		ledUpdate[1].rgb.paletteGreen = 0;
		xQueueSend( xQueueLedConfig, &ledUpdate[1], 0UL);
		break;
	}
}

/*-----------------------------------------------------------*/
/* Helper function for displaying LEDs 4,5,6,7 based on event count
 * and holding the LED display for a set interval of time.
 */
static void trackEventBasicLedDisplay(u8* count, const int ledIdx) {
	if (*count == CNT_START) {
		/* Set LED status of Awake to ON. */
		ledUpdate[ledIdx].rgb.paletteBlue = 0;
		ledUpdate[ledIdx].rgb.paletteRed = 0;
		ledUpdate[ledIdx].rgb.paletteGreen = 100;
		xQueueSend( xQueueLedConfig, &ledUpdate[ledIdx], 0UL);
		*count += 1;
	} else if (*count < CNT_DONE) {
		/* Wait to change LED status */
		*count += 1;
	} else if (*count == CNT_DONE) {
		/* Set LED status of Awake to ON. */
		ledUpdate[ledIdx].rgb.paletteBlue = 0;
		ledUpdate[ledIdx].rgb.paletteRed = 0;
		ledUpdate[ledIdx].rgb.paletteGreen = 0;
		xQueueSend( xQueueLedConfig, &ledUpdate[ledIdx], 0UL);
		*count += 1;
	} else { /* CNT_PAST_DONE */
		/* do nothing with Awake display, it is off and waiting for event. */
	}
}

/*-----------------------------------------------------------*/
/* Helper function for displaying LEDs 2, 3 based on event count
 * and holding the LED display for a set interval of time.
 */
static void trackEventRgbLedDisplay(u8* count, const int ledIdx) {
	if (*count == CNT_START) {
		/* Set LED status of Awake to ON. */
		ledUpdate[ledIdx].rgb.paletteBlue = 0;
		ledUpdate[ledIdx].rgb.paletteRed = 0;
		ledUpdate[ledIdx].rgb.paletteGreen = 255;
		xQueueSend( xQueueLedConfig, &ledUpdate[ledIdx], 0UL);
		*count += 1;
	} else if (*count < CNT_DONE) {
		/* Wait to change LED status */
		*count += 1;
	} else if (*count == CNT_DONE) {
		/* Set LED status of Awake to ON. */
		ledUpdate[ledIdx].rgb.paletteBlue = 0;
		ledUpdate[ledIdx].rgb.paletteRed = 255;
		ledUpdate[ledIdx].rgb.paletteGreen = 0;
		xQueueSend( xQueueLedConfig, &ledUpdate[ledIdx], 0UL);
		*count += 1;
	} else { /* CNT_PAST_DONE */
		/* do nothing with Awake display, it is off and waiting for event. */
	}
}

