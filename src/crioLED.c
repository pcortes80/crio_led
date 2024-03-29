/*
 * FPGA Interface C API example for GCC.
 * Demo for cRIO-9033 with NI-9344 module
 * Driving User LED0 to LED2
 */

#include "../include/NiFpga_mainFPGA.h"
#include <stdio.h>
#include <stdlib.h>
//#include <time.h>

int main()
{
   /* must be called before any other calls */
   printf("Initializing...\n");
   NiFpga_Status status = NiFpga_Initialize();
   if (NiFpga_IsNotError(status))
   {
      NiFpga_Session session;
      /* opens a session and downloads the bitstream */
      printf("Opening a session...\n");
      //NiFpga_MergeStatus(&status);
      NiFpga_Open(NiFpga_mainFPGA_Bitfile,
                                        NiFpga_mainFPGA_Signature,
                                        "RIO0",
                                        NiFpga_OpenAttribute_NoRun,
                                        &session);
      if (NiFpga_IsNotError(status))
      {
         /* run the FPGA application */
         printf("Running the FPGA...\n");
         NiFpga_Run(session, 0);
                
         /* Select option 0 */          
         NiFpga_WriteI16(session, NiFpga_mainFPGA_ControlI16_options, 0);
         printf("Selected option 0.\n");

         /* Select SimulatorOption = False (real hw) */          
         NiFpga_WriteBool(session, NiFpga_mainFPGA_ControlBool_isSimulatorMode, 0);
         printf("Simulator Mode = False (Real HW).\n");

         /* Select SimulatorOption = True (no hw) */          
         //NiFpga_WriteBool(session, NiFpga_mainFPGA_ControlBool_isSimulatorMode, 1);
         //printf("Simulator Mode = True (No HW).\n");

         /* Reset LEDs */
         NiFpga_WriteBool(session, NiFpga_mainFPGA_ControlBool_LED0,0);
         NiFpga_WriteBool(session, NiFpga_mainFPGA_ControlBool_LED1,0);
         NiFpga_WriteBool(session, NiFpga_mainFPGA_ControlBool_LED2,0);
         NiFpga_WriteBool(session, NiFpga_mainFPGA_ControlBool_LED3,0);

         /* Update LEDs individualy */          
         uint8_t outvalue = 0;
         /* Write LED0 */
         NiFpga_WriteBool(session, NiFpga_mainFPGA_ControlBool_LED0,1);
         /* Read outvalue */
         NiFpga_ReadU8(session, NiFpga_mainFPGA_IndicatorU8_booleanInputsToIntegerOutput, &outvalue);
         printf("outvalue = %u\n", outvalue);
         sleep(1);
         /* Write LED1 */
         NiFpga_WriteBool(session, NiFpga_mainFPGA_ControlBool_LED1,1);
         /* Read outvalue*/
         NiFpga_ReadU8(session, NiFpga_mainFPGA_IndicatorU8_booleanInputsToIntegerOutput, &outvalue);
         printf("outvalue = %u\n", outvalue);         
         sleep(1);
         /* Write LED2 */
         NiFpga_WriteBool(session, NiFpga_mainFPGA_ControlBool_LED2,1);
         /* Read outvalue */
         NiFpga_ReadU8(session, NiFpga_mainFPGA_IndicatorU8_booleanInputsToIntegerOutput, &outvalue);
         printf("outvalue = %u\n", outvalue);         
         sleep(1);
         /* Write LED3 */
         NiFpga_WriteBool(session, NiFpga_mainFPGA_ControlBool_LED3,1);
         /* Read outvalue */
         NiFpga_ReadU8(session, NiFpga_mainFPGA_IndicatorU8_booleanInputsToIntegerOutput, &outvalue);
         printf("outvalue = %u\n", outvalue);         
         sleep(1);      
         /* Write LED0 */   
         NiFpga_WriteBool(session, NiFpga_mainFPGA_ControlBool_LED0,0);
         /* Read outvalue */
         NiFpga_ReadU8(session, NiFpga_mainFPGA_IndicatorU8_booleanInputsToIntegerOutput, &outvalue);
         printf("outvalue = %u\n", outvalue);         
         sleep(1);  
         /* Write LED1 */   
         NiFpga_WriteBool(session, NiFpga_mainFPGA_ControlBool_LED1,0);
         /* Read outvalue */
         NiFpga_ReadU8(session, NiFpga_mainFPGA_IndicatorU8_booleanInputsToIntegerOutput, &outvalue);
         printf("outvalue = %u\n", outvalue);         
         sleep(1);  
         /* Write LED2 */   
         NiFpga_WriteBool(session, NiFpga_mainFPGA_ControlBool_LED2,0);
         /* Read outvalue */
         NiFpga_ReadU8(session, NiFpga_mainFPGA_IndicatorU8_booleanInputsToIntegerOutput, &outvalue);
         printf("outvalue = %u\n", outvalue);         
         sleep(1);  
         /* Write LED3 */   
         NiFpga_WriteBool(session, NiFpga_mainFPGA_ControlBool_LED3,0);
         /* Read outvalue */
         NiFpga_ReadU8(session, NiFpga_mainFPGA_IndicatorU8_booleanInputsToIntegerOutput, &outvalue);
         printf("outvalue = %u\n", outvalue);         
         sleep(1);  

         /* Select option 1 */          
         NiFpga_WriteI16(session, NiFpga_mainFPGA_ControlI16_options, 1);
         printf("Selected option 1.\n");
         
         /* Update LEDs from integerToBoolArray U8 */
         uint8_t i;
         for (i = 0; i <= 15; i++) {
            NiFpga_WriteU8(session, NiFpga_mainFPGA_ControlU8_integerToBoolArray, i);
            printf("i = %d\n", i);
            /* Read outvalue */
            NiFpga_ReadU8(session, NiFpga_mainFPGA_IndicatorU8_booleanInputsToIntegerOutput, &outvalue);
            printf("outvalue = %u\n", outvalue);                     
            sleep(1);
         }

         /* Select option 2 */          
         NiFpga_WriteI16(session, NiFpga_mainFPGA_ControlI16_options, 2);
         printf("Selected option 2.\n");

         /* Update LEDs from integerInputs U8 */
         NiFpga_WriteU8(session, NiFpga_mainFPGA_ControlU8_integerInputs, i);
         for (i = 0; i <= 15; i++) {
            NiFpga_WriteU8(session, NiFpga_mainFPGA_ControlU8_integerInputs, i);
            printf("i = %d\n", i);
            /* Read outvalue */
            NiFpga_ReadU8(session, NiFpga_mainFPGA_IndicatorU8_booleanInputsToIntegerOutput, &outvalue);
            printf("outvalue = %u\n", outvalue);         
            sleep(1);
         }

         printf("Press <Enter> to stop and quit...");
         getchar();
         /* stop the FPGA loops */
         printf("Stopping the FPGA...\n");
         
         /* close the session now that we're done */
         printf("Closing the session...\n");
         NiFpga_Close(session, 0);
      }
      /* must be called after all other calls */
      printf("Finalizing...\n");
      NiFpga_Finalize();
   }
   /* check if anything went wrong */
   if (NiFpga_IsError(status))
   {
      printf("Error %d!\n", status);
      printf("Press <Enter> to quit...\n");
      getchar();
   }
   return status;
}
