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
#define SWTCH2_MASK 0x04
#define SWTCH3_MASK 0x08
#define BTNS_SWS_MASK 0x0F
#define BTNS_SW_CHANNEL 2
#define BTN0_MASK 0x01
#define BTN1_MASK 0x02
#define BTN2_MASK 0x04
#define BTN3_MASK 0x08
#define CLS_PRINTF_BLANK_TXT_XY "X______ Y______ "
#define CLS_PRINTF_BLANK_TXT_ZT "Z______ T______ "
#define CLS_PRINTF_BLANK_DAT_XY "X:____  Y:____  "
#define CLS_PRINTF_BLANK_DAT_ZT "Z:____  T:____  "

/*------------------ Module Type Definitions ----------------*/
typedef struct EXPERIMENT_DATA_TAG {
	/* Driver objects */
	XGpio axGpio;
	PmodACL2c acl2Device;
	/* LED driver palettes stored */
	t_rgb_led_palette_silk ledUpdate[8];
	/* Print QUEUE string line exchange */
	char comString[PRINTF_BUF_SZ];
	/* CLS QUEUE string lines exchange */
	t_cls_lines clsUpdate;
	/* Operating mode enumerations */
	int operatingMode;
	int operatingModePrev;
	int acl2IsConfigured;
	/* GPIO reading values at this point in the execution */
	u32 switchesRead;
	u32 buttonsRead;
	/* Timer count T for delay interval of the real-time task */
	uint32_t cnt_t;
	uint32_t cnt_t_freerun;
	/* Statuses */
	u8 statusReg;
	u8 cntActive;
	u8 cntInactive;
	/* raw data */
	ACL2c_SamplePacket acl2Data;
} t_experiment_data;

t_experiment_data experiData; // Global as that the object is always in scope, including interrupt handler.

static const uint32_t cnt_t_max = 40 * 3;

/*------------------ Private Module Functions Prototypes ----*/
static void Experiment_InitData(t_experiment_data* expData);
static void Experiment_SetLedUpdate(t_experiment_data* expData,
		uint8_t silk, uint8_t red, uint8_t green, uint8_t blue);
static void Experiment_SendLedUpdate(t_experiment_data* expData,
		uint8_t silk);
static void Experiment_updateLedsStatuses(t_experiment_data* expData);
static void Experiment_updateLedsDisplayMode(t_experiment_data* expData);
static void Experiment_updateLedsEvents(t_experiment_data* expData);
static void Experiment_timeEvent(u8* count);
static bool Experiment_generateTextLines(t_experiment_data* expData);
static void Experiment_updateClsDisplayAndTerminal(t_experiment_data* expData);
static void Experiment_readUserInputs(t_experiment_data* expData);
static void Experiment_operateFSM(t_experiment_data* expData);
static void Experiment_iterationTimer(t_experiment_data* expData);

/*-----------------------------------------------------------*/
void Experiment_prvAcl2Task( void *pvParameters )
{
	const TickType_t x200millisecond = pdMS_TO_TICKS( DELAY_1_SECOND / 5 );

	Experiment_InitData(&experiData);

	/* Initialize the ACL2 driver */
	ACL2c_begin(&(experiData.acl2Device), XPAR_PMODACL2_0_AXI_LITE_GPIO_BASEADDR,
		 XPAR_PMODACL2_0_AXI_LITE_SPI_BASEADDR);

	/* Initialize the GPIO device for inputting switches 0,1,2,3 and buttons 0,1,2,3.
	 * This corresponds to the two channels set in the single AXI GPIO driver of
	 * the FPGA system block design. */
	taskENTER_CRITICAL();
	XGpio_Initialize(&(experiData.axGpio), USERIO_DEVICE_ID);
	XGpio_SelfTest(&(experiData.axGpio));
	XGpio_SetDataDirection(&(experiData.axGpio), SWTCH_SW_CHANNEL, SWTCHS_SWS_MASK);
	XGpio_SetDataDirection(&(experiData.axGpio), BTNS_SW_CHANNEL, BTNS_SWS_MASK);
	taskEXIT_CRITICAL();

	/* Initialize the four color LEDs and four basic LEDs to all PWM periods set
	 * and PWM duty cycles set to zero, causing all sixteen emitters to be turned
	 * off by outputting a holding low PWM signal.
	 */
	taskENTER_CRITICAL();
	InitAllLedsOff();
	taskEXIT_CRITICAL();

	/* Main execution loop. Change in switches 0,1 cause change of mode. */
	for(;;) {
		/* Update the color LEDs based on the current operating mode. */
		Experiment_updateLedsDisplayMode(&experiData);

		/* Update the basic LEDs based on current global statuses. */
		Experiment_updateLedsStatuses(&experiData);

		/* Update the Pmod CLS display based upon current state machine state and other variables */
		Experiment_updateClsDisplayAndTerminal(&experiData);

		/* Update the color LEDs based on the activity/inactivity events.
		 * This is updated after the CLS and Terminal so that the display
		 * update can track the beginning value CNT_START of cntActive and
		 * cntInactive. */
		Experiment_updateLedsEvents(&experiData);

		/* Delay for 200 milliseconds. */
		vTaskDelay( x200millisecond );

		/* Read the user inputs */
		Experiment_readUserInputs(&experiData);

		/* Operate a single step of the Experiment FSM */
		Experiment_operateFSM(&experiData);

		/* State change timer, wrapping at 3 seconds. */
		Experiment_iterationTimer(&experiData);
	}
}

/*------------------ Private Module Functions ----------------*/

/*-----------------------------------------------------------*/
/* Helper function to initialize the state of the \ref t_experiment_data object
 * belonging to this module's real-time task.
 */
static void Experiment_InitData(t_experiment_data* expData) {
	for (int iSilk = 0; iSilk < 8; ++iSilk) {
		Experiment_SetLedUpdate(expData, iSilk, 0x00, 0x00, 0x00);
	}

	memset(expData->comString, 0x00, PRINTF_BUF_SZ);

	expData->operatingMode = OPERATING_MODE_NONE;
	expData->operatingModePrev = OPERATING_MODE_NONE;
	expData->acl2IsConfigured = ACL2_NEVERCONFIGURED;
	expData->switchesRead = 0x00000000;
	expData->buttonsRead = 0x00000000;
	expData->cnt_t = 0;
	expData->cnt_t_freerun = 0;
	expData->statusReg = 0;
	expData->cntActive = CNT_DONE;
	expData->cntInactive = CNT_DONE;
}

/*-----------------------------------------------------------*/
/* Helper function to set an updated state to one of the 8 LEDs. */
static void Experiment_SetLedUpdate(t_experiment_data* expData,
		uint8_t silk, uint8_t red, uint8_t green, uint8_t blue)
{
	if (silk < 8) {
		expData->ledUpdate[silk].ledSilk = silk;
		expData->ledUpdate[silk].rgb.paletteRed = red;
		expData->ledUpdate[silk].rgb.paletteGreen = green;
		expData->ledUpdate[silk].rgb.paletteBlue = blue;
	}
}

/*-----------------------------------------------------------*/
/* Helper function to send via queue a request for LED state update */
static void Experiment_SendLedUpdate(t_experiment_data* expData,
		uint8_t silk)
{
	if (silk < 8) {
		xQueueSend( xQueueLedConfig, &(expData->ledUpdate[silk]), 0UL);
	}
}

/*-----------------------------------------------------------*/
/* Helper function for displaying LEDs 4,5,6,7 based on event count
 * and holding the LED display for a set interval of time.
 */
static void Experiment_updateLedsStatuses(t_experiment_data* expData) {
	/* Set LED status of LED0 to track test passing and test done. */
	Experiment_SetLedUpdate(expData, 4, 0, ((expData->statusReg & ACL2c_STATUS_AWAKE_MASK) ? 100 : 0), 0);
	Experiment_SetLedUpdate(expData, 5, 0, 0, 0);
	Experiment_SetLedUpdate(expData, 6, 0, ((expData->switchesRead & SWTCH0_MASK) ? 100 : 0), 0);
	Experiment_SetLedUpdate(expData, 7, 0, ((expData->switchesRead & SWTCH1_MASK) ? 100 : 0), 0);

	for (int iSilk = 4; iSilk < 8; ++iSilk) {
		Experiment_SendLedUpdate(expData, iSilk);
	}
}

/*-----------------------------------------------------------*/
/* Helper function for displaying LEDs 0,1 based on Operating Mode. */
static void Experiment_updateLedsDisplayMode(t_experiment_data* expData)
{
	switch (expData->operatingMode) {
	case OPERATING_MODE_MEAS:
		/* LED pattern to indicate running Operating Mode Measurement. */
		Experiment_SetLedUpdate(expData, 0, 0x00, 0xFF, 0x00);
		Experiment_SetLedUpdate(expData, 1, 0x7F, 0x7F, 0x7F);
		break;
	case OPERATING_MODE_LINK:
		/* LED pattern to indicate running Operating Mode Linked. */
		Experiment_SetLedUpdate(expData, 0, 0x00, 0xFF, 0x00);
		Experiment_SetLedUpdate(expData, 1, 0x7F, 0x00, 0x7F);
		break;
	case OPERATING_MODE_BOOT:
		/* LED pattern to indicate running Operating Mode booting. */
		Experiment_SetLedUpdate(expData, 0, 0xFF, 0x00, 0x00);
		Experiment_SetLedUpdate(expData, 1, 0x7F, 0x00, 0x00);
		break;
	case OPERATING_MODE_NONE:
		/* no break */
	default: /* OPERATING_MODE_NONE */
		Experiment_SetLedUpdate(expData, 0, 0x00, 0x00, 0xFF);
		Experiment_SetLedUpdate(expData, 1, 0x7F, 0x00, 0x00);
		break;
	}

	for (int iSilk = 0; iSilk <= 1; ++iSilk) {
		Experiment_SendLedUpdate(expData, iSilk);
	}
}

/*-----------------------------------------------------------*/
/* Helper function for displaying LEDs 2,3 based on activity events. */
static void Experiment_updateLedsEvents(t_experiment_data* expData) {
	static bool ld2Green = false;
	static bool ld3Green = false;

	Experiment_timeEvent(&(expData->cntActive));
	Experiment_timeEvent(&(expData->cntInactive));

	ld2Green = (expData->cntActive < CNT_DONE) ? true : false;
	ld3Green = (expData->cntInactive < CNT_DONE) ? true : false;

	Experiment_SetLedUpdate(expData, 2, 
		ld2Green ? 0x00 : 0xFF,
		ld2Green ? 0xFF : 0x00,
		0x00);
	Experiment_SetLedUpdate(expData, 3, 
		ld3Green ? 0x00 : 0xFF,
		ld3Green ? 0xFF : 0x00,
		0x00);

	for (int iSilk = 2; iSilk <= 3; ++iSilk) {
		Experiment_SendLedUpdate(expData, iSilk);
	}	
}

/*-----------------------------------------------------------*/
/* Helper function for timing events */
static void Experiment_timeEvent(u8* count) {
	if (*count < CNT_DONE) {
		*count += 1;
	}
}

/*-----------------------------------------------------------*/
/* Helper function to generate the first text line for updating Pmod CLS. */
static bool Experiment_generateTextLines(t_experiment_data* expData) {

	bool modeIsMeasure = (expData->operatingMode == OPERATING_MODE_MEAS);
	bool modeIsLink = (expData->operatingMode == OPERATING_MODE_LINK);
	bool activeIsStarting = (CNT_START == expData->cntActive);
	bool inactiveIsStarting = (CNT_START == expData->cntInactive);
	bool modeIsBoot = (expData->operatingMode == OPERATING_MODE_BOOT);
	bool modeIsNone = (expData->operatingMode == OPERATING_MODE_NONE);

	if (modeIsMeasure || (modeIsLink && (activeIsStarting || inactiveIsStarting))) {
		snprintf(expData->clsUpdate.line1, sizeof(expData->clsUpdate.line1),
				"X% .3f Y% .3f",
				ACL2c_DataToG(&(expData->acl2Device), (s16)(expData->acl2Data.XData)),
				ACL2c_DataToG(&(expData->acl2Device), (s16)(expData->acl2Data.YData)));

		snprintf(expData->clsUpdate.line2, sizeof(expData->clsUpdate.line2),
				"Z% .3f T%04hd",
				ACL2c_DataToG(&(expData->acl2Device), (s16)(expData->acl2Data.ZData)),
				(u16)(expData->acl2Data.Temp));

		snprintf(expData->comString, PRINTF_BUF_SZ,
				("X:%04hX  Y:%04hX  " "Z:%04hX  T:%04hX  "),
				(u16)(expData->acl2Data.XData), (u16)(expData->acl2Data.YData),
				(u16)(expData->acl2Data.ZData), (u16)(expData->acl2Data.Temp));

		return true;

	} else if (modeIsBoot || modeIsNone) {
		snprintf(expData->clsUpdate.line1, sizeof(expData->clsUpdate.line1),
				CLS_PRINTF_BLANK_TXT_XY);
		snprintf(expData->clsUpdate.line2, sizeof(expData->clsUpdate.line2),
				CLS_PRINTF_BLANK_TXT_ZT);
		snprintf(expData->comString, PRINTF_BUF_SZ, "%s",
				(CLS_PRINTF_BLANK_DAT_XY CLS_PRINTF_BLANK_DAT_ZT));

		return true;
	}

	return false;
}

/*-----------------------------------------------------------*/
/* Helper function for displaying ACL2 state machine progress on Pmod CLS */
static void Experiment_updateClsDisplayAndTerminal(t_experiment_data* expData) {
	bool doUpdate;

	/* Only refresh display at approximately 5 Hz */
	/*
	if (expData->cnt_t_freerun % (cnt_t_max / 15) != 0) {
		return;
	}
	*/

	doUpdate = Experiment_generateTextLines(expData);

	if (doUpdate) {
		/* Update the display to two lines of custom text to indicate
		 * SF3 Testing Progress
		 */
		xQueueSend(xQueueClsDispl, &(expData->clsUpdate), 0UL);

		/* Update the Terminal to display an additional text line with the same information as the Pmod CLS. */
		xQueueSend(xQueuePrint, expData->comString, 0UL);
	}
}

/*-----------------------------------------------------------*/
/* Helper function to read user inputs at this time. */
static void Experiment_readUserInputs(t_experiment_data* expData) {
	expData->switchesRead = XGpio_DiscreteRead(&(expData->axGpio), SWTCH_SW_CHANNEL);
	expData->buttonsRead = XGpio_DiscreteRead(&(expData->axGpio), BTNS_SW_CHANNEL);
}

/*-----------------------------------------------------------*/
/* Main FSM function to operate the modes of the experiment. */
static void Experiment_operateFSM(t_experiment_data* expData) {
	const TickType_t x100millisecond = pdMS_TO_TICKS( DELAY_1_SECOND / 10 );

	if (expData->switchesRead == SWTCH0_MASK) {
		if (expData->acl2IsConfigured != ACL2_CONFIGURED) {
			/* Reset the ACL2 */
			ACL2c_reset(&(expData->acl2Device));

			/* Delay for 100 milliseconds */
			vTaskDelay(x100millisecond);

			/* Set ACL2 configuration data */
			ACL2c_configureMeasureMode(&(expData->acl2Device));
			expData->acl2IsConfigured = ACL2_CONFIGURED;
			expData->operatingMode = OPERATING_MODE_MEAS;
		}
	}
	else if (expData->switchesRead == SWTCH1_MASK) {
		if (expData->acl2IsConfigured != ACL2_CONFIGURED) {
			/* Reset the ACL2 */
			ACL2c_reset(&(expData->acl2Device));

			/* Delay for 100 milliseconds. */
			vTaskDelay( x100millisecond );

			/* Set ACL2 configuration data */
			ACL2c_configureLinkedMode(&(expData->acl2Device));
			expData->acl2IsConfigured = ACL2_CONFIGURED;
			expData->operatingMode = OPERATING_MODE_LINK;
		}
	}
	else if (expData->acl2IsConfigured != ACL2_NEVERCONFIGURED) {
		expData->acl2IsConfigured = ACL2_NOTCONFIGURED;
		expData->operatingMode = OPERATING_MODE_NONE;
	}
	else {
		expData->operatingMode = OPERATING_MODE_BOOT;
	}

	expData->statusReg = ACL2c_getStatus(&(expData->acl2Device));

	if (expData->operatingMode == OPERATING_MODE_LINK) {
		if (expData->statusReg & ACL2c_STATUS_ACT_MASK) {
			expData->cntActive = CNT_START;
			expData->acl2Data = ACL2c_getSample(&(expData->acl2Device));
		}
		if (expData->statusReg & ACL2c_STATUS_INACT_MASK) {
			expData->cntInactive = CNT_START;
			expData->acl2Data = ACL2c_getSample(&(expData->acl2Device));
		}
	}
	else {
		if (expData->statusReg & ACL2c_STATUS_DATA_READY_MASK) {
			expData->acl2Data = ACL2c_getSample(&(expData->acl2Device));
		}
	}
}

/*-----------------------------------------------------------*/
/* Timer function similar to VHDL/Verilog FSM Timer strategy #1. */
static void Experiment_iterationTimer(t_experiment_data* expData) {
	/* Reset timer on 15 iterations or change in operating mode */
	if (expData->operatingMode != expData->operatingModePrev) {
		expData->cnt_t = 0;
	} else {
		expData->cnt_t = (expData->cnt_t + 1) % cnt_t_max; /* 3 seconds of counting on 25ms timer */
	}

	expData->cnt_t_freerun = (expData->cnt_t_freerun + 1) % cnt_t_max; /* 3 seconds of counting on 25ms timer */

	/* Track operating mode history (only one step back) */
	expData->operatingModePrev = expData->operatingMode;
}
