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
 * @file freertos_acl2_main.c
 *
 * @brief A SoPC top-level design with the PMOD ACL2 driver.
 * This design operates the Pmod ACL2 in either Measurement Mode or Linked Mode
 * to stream accelerometer measurements to the Pmod CLS display, or to display
 * motion values at the point of crossing an activity event threshold.
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
#include <string.h>
#include <stdio.h>
#include "sleep.h"
#include "xil_printf.h"
#include "xparameters.h"
#include "xgpio.h"
/* Project includes. */
#include "PmodCLS.h"
#include "PmodACL2custom.h"
#include "PWM.h"
#include "led_pwm.h"

#define PRINTF_BUF_SZ 33
#define DELAY_10_SECONDS	10000UL
#define DELAY_1_SECOND		1000UL
typedef struct CLS_LINES_TAG {
	char line1[17];
	char line2[17];
} t_cls_lines;

#define OPERATING_MODE_NONE 0
#define OPERATING_MODE_MEAS 1
#define OPERATING_MODE_LINK 2
#define OPERATING_MODE_BOOT 3
#define CNT_START 0
#define CNT_DONE 5
#define CNT_PAST_DONE 6

/*-----------------------------------------------------------*/

/* The real-time tasks of this program. */
static void prvLedTask( void *pvParameters ); /* Update LEDs on events */
static void prvClsTask( void *pvParameters ); /* Print to PMOD CLS on events */
static void prvAcl2Task( void *pvParameters ); /* Master task, operate PMOD ACL2 and generate events. */
static void prvPrintTask( void *pvParameters ); /* Print to UARTlite on events */

/* Event tracking for LED display, helper functions for prvAcl2Task */
static void updateLedsDisplayMode(int mode);
static void trackEventBasicLedDisplay(u8* count, const int ledIdx);
static void trackEventRgbLedDisplay(u8* count, const int ledIdx);

/*-----------------------------------------------------------*/

/* Task handles for controlling real-time tasks */
static TaskHandle_t xLedTask;
static TaskHandle_t xClsTask;
static TaskHandle_t xAcl2Task;
static TaskHandle_t xPrintTask;

/* Queues for generating update events */
static QueueHandle_t xQueuePrint = NULL;
static QueueHandle_t xQueueLedConfig = NULL;
static QueueHandle_t xQueueClsDispl = NULL;

int main(void)
{
	/* Create a task to receive events for updating LED color palette for eight LEDs of the Arty-A7-100. */
	xTaskCreate( prvLedTask,
				 (const char*) "LC",
				 configMINIMAL_STACK_SIZE,
				 NULL,
				 tskIDLE_PRIORITY,
				 &xLedTask );

	/* Create a task to receive 16x2 text line updates to the external dot-matrix LCD of the PMOD CLS. */
	xTaskCreate( prvClsTask,
				 (const char*) "CLS",
				 configMINIMAL_STACK_SIZE,
				 NULL,
				 tskIDLE_PRIORITY,
				 &xClsTask );

	/* Create a task to read updates from the PMOD ACL2, and send queue updates for LED, CLS, Printf . */
	xTaskCreate( prvAcl2Task,
				 (const char*) "ACL2",
				 configMINIMAL_STACK_SIZE + 1024,
				 NULL,
				 tskIDLE_PRIORITY + 2,
				 &xAcl2Task);

	/* Create a task to receive strings to print to the UART via xil_printf(). */
	xTaskCreate( prvPrintTask,
				 ( const char * ) "PRINT",
				 configMINIMAL_STACK_SIZE,
				 NULL,
				 tskIDLE_PRIORITY + 1,
				 &xPrintTask );

	/* Create the LED configuration Queue for receiving events for LED configuration. */
	xQueueLedConfig = xQueueCreate(10, sizeof(t_rgb_led_palette_silk));

	/* Create the 16x2 dot-matrix LCD display receiving text updates queue. */
	xQueueClsDispl = xQueueCreate(2, sizeof(t_cls_lines));

	/* Create the serial console printf() queue for short strings to print to console. */
	xQueuePrint = xQueueCreate(4, PRINTF_BUF_SZ);

	/* Check the queue was created. */
	configASSERT(xQueueLedConfig);

	/* Check the queue was created. */
	configASSERT(xQueueClsDispl);

	/* Check the queue was created. */
	configASSERT(xQueuePrint);

	/* Start the tasks and timer running. */
	vTaskStartScheduler();

	/* If all is well, the scheduler will now be running, and the following line
	will never be reached.  If the following line does execute, then there was
	insufficient FreeRTOS heap memory available for the idle and/or timer tasks
	to be created.  See the memory management section on the FreeRTOS web site
	for more details. */
	for( ;; );
}

/*-----------------------------------------------------------*/
static void prvLedTask( void *pvParameters )
{
	t_rgb_led_palette_silk currLedConfig;
	InitAllLedsOff();

	for (;;)
	{
		/* Block on LED configuration queue to receive the next incoming event. */
		xQueueReceive(xQueueLedConfig, &currLedConfig, portMAX_DELAY);

		if (currLedConfig.ledSilk < 4) {
			SetRgbPaletteLed(currLedConfig.ledSilk, &(currLedConfig.rgb));
		} else if (currLedConfig.ledSilk < 8) {
			SetBasicLedPercent(currLedConfig.ledSilk, currLedConfig.rgb.paletteGreen);
		}
	}
}

/*-----------------------------------------------------------*/
static void prvClsTask( void *pvParameters )
{
	static PmodCLS clsDevice;
	t_cls_lines clsLines;

	/* Initialize the PMOD CLS 16x2 dot-matrix LCD display. */
	memset(&clsDevice, 0x00, sizeof(clsDevice));
	CLS_begin(&clsDevice, XPAR_PMODCLS_0_AXI_LITE_SPI_BASEADDR);

	/* Clear the display. */
	CLS_DisplayClear(&clsDevice);

	for (;;) {
		/* Block on CLS lines queue to receive the next incoming display text update. */
		xQueueReceive(xQueueClsDispl, &clsLines, portMAX_DELAY);

		if ((strnlen(clsLines.line1, 16) == 0) && (strnlen(clsLines.line2, 16) == 0)) {
			/* If both lines are only null strings, then clear the display and print nothing. */
			CLS_DisplayClear(&clsDevice);
		} else {
			/* Otherwise, clear the display and print the two lines of text. */
			CLS_DisplayClear(&clsDevice);
			CLS_WriteStringAtPos(&clsDevice, 0, 0, clsLines.line1);
			CLS_WriteStringAtPos(&clsDevice, 1, 0, clsLines.line2);
		}
	}
}

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

/*-----------------------------------------------------------*/
static void prvAcl2Task( void *pvParameters )
{
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

		if (((switchesRead & SWTCH0_MASK) != 0) && ((switchesRead & SWTCH1_MASK) == 0)) {
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
		} else if (((switchesRead & SWTCH0_MASK) == 0) && ((switchesRead & SWTCH1_MASK) != 0)) {
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

/*-----------------------------------------------------------*/
static void prvPrintTask( void *pvParameters )
{
	char Recdstring[PRINTF_BUF_SZ] = "";

	for( ;; )
	{
		/* Block to wait for data arriving on the queue. */
		xQueueReceive( 	xQueuePrint,				/* The queue being read. */
						Recdstring,	/* Data is read into this address. */
						portMAX_DELAY );	/* Wait without a timeout for data. */

		/* Print the received data. */
		xil_printf( "%s\r\n", Recdstring );
	}
}

