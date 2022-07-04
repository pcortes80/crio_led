/*
 * Generated with the FPGA Interface C API Generator 18.0.0
 * for NI-RIO 18.0.0 or later.
 */

#ifndef __NiFpga_FPGAcode_h__
#define __NiFpga_FPGAcode_h__

#ifndef NiFpga_Version
   #define NiFpga_Version 1800
#endif

#include "NiFpga.h"

/**
 * The filename of the FPGA bitfile.
 *
 * This is a #define to allow for string literal concatenation. For example:
 *
 *    static const char* const Bitfile = "C:\\" NiFpga_FPGAcode_Bitfile;
 */
#define NiFpga_FPGAcode_Bitfile "NiFpga_FPGAcode.lvbitx"

/**
 * The signature of the FPGA bitfile.
 */
static const char* const NiFpga_FPGAcode_Signature = "C754164E41C3591CD6413F4389033057";

typedef enum
{
   NiFpga_FPGAcode_ControlBool_LED0 = 0x18002,
} NiFpga_FPGAcode_ControlBool;

#endif
