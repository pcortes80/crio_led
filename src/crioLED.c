/*
 * FPGA Interface C API example for GCC.
 * Demo for cRIO-9033 with NI-9344 module
 * Driving User LED0 andUserLED1
 */

#include "../include/NiFpga_mainFPGA.h"
#include <stdio.h>
#include <stdlib.h>
#include <time.h>

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
      NiFpga_MergeStatus(&status, NiFpga_Open(NiFpga_mainFPGA_Bitfile,
                                              NiFpga_mainFPGA_Signature,
                                              "RIO0",
                                              NiFpga_OpenAttribute_NoRun,
                                              &session));
      if (NiFpga_IsNotError(status))
      {
         /* Reset LED0 */
         NiFpga_MergeStatus(&status, NiFpga_WriteBool(session, NiFpga_mainFPGA_ControlBool_LED0,0));
         
         /* run the FPGA application */
         printf("Running the FPGA...\n");
         NiFpga_MergeStatus(&status, NiFpga_Run(session, 0));
         
         printf("Press <Enter> to turn LED0 on...\n");
         getchar();
         
         NiFpga_MergeStatus(&status, NiFpga_WriteBool(session, NiFpga_mainFPGA_ControlBool_LED0,1));
         
         printf("Press <Enter> to stop and quit...");
         getchar();
         /* stop the FPGA loops */
         printf("Stopping the FPGA...\n");
         
         /* close the session now that we're done */
         printf("Closing the session...\n");
         NiFpga_MergeStatus(&status, NiFpga_Close(session, 0));
      }
      /* must be called after all other calls */
      printf("Finalizing...\n");
      NiFpga_MergeStatus(&status, NiFpga_Finalize());
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
