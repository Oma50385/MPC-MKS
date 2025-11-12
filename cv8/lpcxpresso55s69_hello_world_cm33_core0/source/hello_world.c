/*
 * Copyright (c) 2013 - 2015, Freescale Semiconductor, Inc.
 * Copyright 2016-2017, 2024 NXP
 * All rights reserved.
 *
 * SPDX-License-Identifier: BSD-3-Clause
 */

#include "fsl_device_registers.h"
#include "fsl_debug_console.h"
#include "board.h"
#include "app.h"
#include "peripherals.h"
#include "math.h"

/*******************************************************************************
 * Definitions
 ******************************************************************************/
#define PI 3.14159265358979324
#define USE_POWERQUAD 1
#define TABLE_LENGHT 255
/*******************************************************************************
 * Prototypes
 ******************************************************************************/

/*******************************************************************************
 * Variables
 ******************************************************************************/
float Sample_f;
uint32_t index=0;
float SinTable_f[TABLE_LENGHT];

/*******************************************************************************
 * Code
 *
 ******************************************************************************/
void Generate_sin_table_float(float *table, uint32_t length,float amplitude,
		float frequency) {
	uint32_t index;
	float theta, sample_time;
#if USE_POWERQUAD
	float result;
#endif


	sample_time = 1.0f / (frequency * (float)length);
	for(index=0;index < length;index++) {
		theta = 2.0f * PI * frequency * sample_time * (float)index;
#if USE_POWERQUAD
		PQ_SinF32(&theta, &result);
		table[index]=amplitude * result;
#else
		table[index]=amplitude * sinf(theta);
#endif

	}
}
/*!
 * @brief Main function
 */

void TimerIRQ(uint32_t flags){
	Sample_f = SinTable_f[index];
	index++;
	if(index == TABLE_LENGHT)index=0;
}

int main(void)
{
	char ch;
	uint32_t cpuCycles;
	float cpuCyclesUs;


	/* Init board hardware. */
	BOARD_InitHardware();
	BOARD_InitBootPeripherals();
	MSDK_EnableCpuCycleCounter();
	Generate_sin_table_float(&SinTable_f[0],TABLE_LENGHT,1.0f, 1.0f);
	cpuCycles = MSDK_GetCpuCycleCount();
	cpuCyclesUs = cpuCycles / (BOARD_BOOTCLOCKPLL150M_CORE_CLOCK / 1000000.0);
	PRINTF("hello world.\r\n");
	PRINTF("CPU cycles: %i -- Exec. Time(us): %f\r\n", cpuCycles, cpuCyclesUs);

	CTIMER_StartTimer(CTIMER1_PERIPHERAL);

	while (1)
	{
		ch = GETCHAR();
		PUTCHAR(ch);
	}
}
