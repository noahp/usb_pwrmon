
#include "MKL26Z4.h"
#include "interrupts.h"

//*****************************************************************************
//
// Stack Configuration
//
//*****************************************************************************
//
// Stack size (in Words)
//
#define STACK_SIZE       0x00000100
__attribute__ ((section(".co_stack")))
unsigned long pulStack[STACK_SIZE];

//
// Flash configuration fields, be careful modifying these as the chip can be
//  permanently secured! See section 27.3.1 of the user manual,
//  "Flash Configuration Field Description".
//
__attribute__ ((section(".flashconfig")))
const unsigned long flashConfig[] = {
    0xffffffff, 0xffffffff,
    0xffffffff, 0xfffffffe,
};

//
// The minimal vector table for a Cortex M0+.  Note that the proper constructs
// must be placed on this to ensure that it ends up at physical address
// 0x00000000.
//
// page 53
__attribute__ ((section(".isr_vector")))
void (* const g_pfnVectors[])(void) =
{
    (void *)&pulStack[STACK_SIZE],          // The initial stack pointer
    ResetHandler,                           // The reset handler
    NMIIntHandler,                          // The NMI handler
    HardFaultIntHandler,                    // The hard fault handler
    0, 0, 0, 0, 0, 0, 0,                    // Reserved
    SVCIntHandler,                          // SVCall handler
    0, 0,                                   // Reserved
    PendSVIntHandler,                       // The PendSV handler
    SysTickIntHandler,                      // The SysTick handler

    DMA0IntHandler,                         // DMA channel 0 transfer complete
                                            // and error handler
    DMA1IntHandler,                         // DMA channel 1 transfer complete
                                            // and error handler
    DMA2IntHandler,                         // DMA channel 2 transfer complete
                                            // and error handler
    DMA3IntHandler,                         // DMA channel 3 transfer complete
                                            // and error handler
    0,                                      // Reserved
    FTFAIntHandler,                         // Command complete and read collision
    LVDIntHandler,                          // Low-voltage detect, low-voltage warning
    LLWUIntHandler,                         // Low Leakage Wakeup
    I2C0IntHandler,                         // I2C0 handler
    I2C1IntHandler,                         // I2C1 handler
    SPI0IntHandler,                         // SPI0 handler
    SPI1IntHandler,                         // SPI1 handler
    UART0SEIntHandler,                      // UART0SE handler
    UART1SEIntHandler,                      // UART1SE handler
    UART2SEIntHandler,                      // UART2SE handler
    ADCIntHandler,                          // ADC handler
    ACMPIntHandler,                         // ACMP handler
    FTM0IntHandler,                         // FTM0 handler
    FTM1IntHandler,                         // FTM1 handler
    FTM2IntHandler,                         // FTM2 handler
    RTCAIntHandler,                         // RTCA handler
    RTCSIntHandler,                         // RTCS handler
    PITIntHandler,                          // PIT handler
    0,                                      // Reserved
    USBOTGIntHandler,                       // USBOTG handler
    DACIntHandler,                          // DAC handler
    TSIIntHandler,                          // TSI handler
    MCGIntHandler,                          // MCG handler
    LPTMRIntHandler,                        // PIT handler
    0,                                      // Reserved
    PORTAIntHandler,                        // PORTA handler
    PORTDIntHandler,                        // PORTD handler
};

void StartupInitClock(void)
{
    // select Mid range of MCG_C4[DRST_DRS], and select DMX32=1.
    // from datasheet, in FEI MCG mode (which is what is used here),
    // setting C4[DMX32] is not recommended:
    //
    // "If the internal reference is trimmed to a frequency above 32.768 kHz,
    //  the greater FLL multiplication factor could potentially push the
    //  microcontroller system clock out of specification and damage the part."
    //
    // do it anyway to try to get closer to 48MHz. the mchck guys do it!
    // read-modify-write.
    MCG_C4 = (MCG_C4 & (~MCG_C4_DRST_DRS_MASK) & (~MCG_C4_DMX32_MASK)) |
              MCG_C4_DRST_DRS(0x1) | (0x1 << MCG_C4_DMX32_SHIFT);

    // debug, output bus clock on pin 24 (C3)
    // set CLKOUT select for "Bus clock", read-modify-write.
    SIM_SOPT2 = (SIM_SOPT2 & ~(SIM_SOPT2_CLKOUTSEL_MASK)) | SIM_SOPT2_CLKOUTSEL(0x2);
    // Enable PortC clock gate
    SIM_SCGC5 |= SIM_SCGC5_PORTC_MASK;
    // Set pin for CLKOUT
    PORTC_PCR3 = PORT_PCR_MUX(5) | PORT_PCR_DSE_MASK;
}
