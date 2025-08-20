/*
 * @file       config.c
 *
 * @author     Decawave Software
 *
 * @attention  Copyright 2018 (c) DecaWave Ltd, Dublin, Ireland.
 *             All rights reserved.
 *
 */
#include <string.h>

//#include "instance.h"
//#include "stm32l0xx_hal.h"
//#include "main.h"
//#include "stm32l0xx_hal.h"
//#include "default_config.h"

/* The location of FConfig and defaultConfig are defined in Linker script file and project configuration options */

/* Changeble block of parameters in the EEPROM */
CRCprotected_param_t FConfig __attribute__((section(".fConfig"))) \
                                   __attribute__((aligned(FCONFIG_PAGE_SIZE))) ;

/* Application default constant parameters block in the NFLASH. Never changes. Used for Restore ONLY (RESTORE command or bad CRC). */
//const param_block_t defaultFConfig  = DEFAULT_CONFIG;

/* Run-Time config parameters. */
static param_block_t tmpConfig __attribute__((aligned(FCONFIG_PAGE_SIZE)));


/* IMPLEMENTATION */

/* Static functions */



static uint8_t CRC8_Calculate( uint8_t * pdata, uint32_t size)
{

	//LL_CRC_ResetCRCCalculationUnit(CRC);
	//while ( size-- > 0)
	//{
	//	LL_CRC_FeedData8(CRC, *pdata++);
	//}
	//return LL_CRC_ReadData8(CRC);
}
/* Exported functions  */

/* @brief    Writes buffer to the nonvolatile config location &FConfig
 * assumes data fold to page
 *
 */
void save_bssConfig( const param_block_t * pbuf)
{
	CRCprotected_param_t temp_protected_config;
	memset(&temp_protected_config.free, 0xFF, sizeof(temp_protected_config.free));
	memcpy(&temp_protected_config.params, pbuf, sizeof(temp_protected_config.params));

	temp_protected_config.CRC8 = CRC8_Calculate( (uint8_t *) &temp_protected_config.params, sizeof(temp_protected_config.params));

	uint32_t * FConfig_dword_pointer  = (uint32_t *) &FConfig;
	const uint32_t * current_dword_pointer = (uint32_t *) &temp_protected_config;

	uint32_t num_dwords =  sizeof(CRCprotected_param_t) / sizeof(uint32_t);
	if ( sizeof(CRCprotected_param_t) % sizeof(uint32_t) ) {
		// extra dword to fit the rest of
		num_dwords++;
	}

	//__disable_irq();
 //   UnlockEeprom();
 //   for ( uint32_t i = 0; i<num_dwords; i++ )
 //   {
 //   	EepromProgram(FConfig_dword_pointer + i, current_dword_pointer[i] );
 //   }
 //   LockEeprom();
 //   __enable_irq();
}

void load_bssConfig(void)
{
	uint8_t tempCRC = CRC8_Calculate( (uint8_t *) &FConfig.params, sizeof(FConfig.params));

	if ( tempCRC != FConfig.CRC8 ) {
		save_bssConfig( &defaultFConfig);
	}

	memcpy(&tmpConfig, &FConfig.params, sizeof(tmpConfig));
    app.pConfig = &tmpConfig;
}

param_block_t *get_pbssConfig(void)
{
  return app.pConfig;
}

/* @fn       restore_nvm_fconfig
 * @brief    init main program run-time configuration parameters from NVM
 *           assumes that memory model .text and .bss the same
 * */
void restore_nvm_fconfig(void)
{    
	save_bssConfig( &defaultFConfig);
    load_bssConfig();
}

/* end of config.c */
