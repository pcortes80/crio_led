/*
 * Generated with the FPGA Interface C API Generator 18.0.0
 * for NI-RIO 18.0.0 or later.
 */

#ifndef __NiFpga_mainFPGA_h__
#define __NiFpga_mainFPGA_h__

#ifndef NiFpga_Version
   #define NiFpga_Version 1800
#endif

#include "NiFpga.h"

/**
 * The filename of the FPGA bitfile.
 *
 * This is a #define to allow for string literal concatenation. For example:
 *
 *    static const char* const Bitfile = "C:\\" NiFpga_mainFPGA_Bitfile;
 */
#define NiFpga_mainFPGA_Bitfile "NiFpga_mainFPGA.lvbitx"

/**
 * The signature of the FPGA bitfile.
 */
static const char* const NiFpga_mainFPGA_Signature = "38F7881F4D9FB8C49C12567F72FA5360";

typedef enum
{
   NiFpga_mainFPGA_IndicatorU8_booleanInputsToIntegerOutput = 0x18022,
} NiFpga_mainFPGA_IndicatorU8;

typedef enum
{
   NiFpga_mainFPGA_ControlBool_LED0 = 0x1800E,
   NiFpga_mainFPGA_ControlBool_LED1 = 0x18012,
   NiFpga_mainFPGA_ControlBool_LED2 = 0x18016,
   NiFpga_mainFPGA_ControlBool_LED3 = 0x1801A,
   NiFpga_mainFPGA_ControlBool_isSimulatorMode = 0x1801E,
} NiFpga_mainFPGA_ControlBool;

typedef enum
{
   NiFpga_mainFPGA_ControlU8_integerInputs = 0x18002,
   NiFpga_mainFPGA_ControlU8_integerToBoolArray = 0x18006,
} NiFpga_mainFPGA_ControlU8;

typedef enum
{
   NiFpga_mainFPGA_ControlI16_options = 0x1800A,
} NiFpga_mainFPGA_ControlI16;

#endif
