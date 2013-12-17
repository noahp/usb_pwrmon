
//
// interrupts.h
// Header file for interrupts.
//

#if !defined(INTERRUPTS_H)
#define INTERRUPTS_H

// prototypes for interrupt handlers
void ResetHandler(void);
void NMIIntHandler(void);
void HardFaultIntHandler(void);
void MemManageIntHandler(void);
void BusFaultIntHandler(void);
void UsageFaultIntHandler(void);
void SVCIntHandler(void);
void DebugMonIntHandler(void);
void PendSVIntHandler(void);
void SysTickIntHandler(void);

void DMA0IntHandler(void);
void DMA1IntHandler(void);
void DMA2IntHandler(void);
void DMA3IntHandler(void);
void FTFAIntHandler(void);
void LVDIntHandler(void);
void LLWUIntHandler(void);
void I2C0IntHandler(void);
void I2C1IntHandler(void);
void SPI0IntHandler(void);
void SPI1IntHandler(void);
void UART0SEIntHandler(void);
void UART1SEIntHandler(void);
void UART2SEIntHandler(void);
void ADCIntHandler(void);
void ACMPIntHandler(void);
void FTM0IntHandler(void);
void FTM1IntHandler(void);
void FTM2IntHandler(void);
void RTCAIntHandler(void);
void RTCSIntHandler(void);
void PITIntHandler(void);
void USBOTGIntHandler(void);
void DACIntHandler(void);
void TSIIntHandler(void);
void MCGIntHandler(void);
void LPTMRIntHandler(void);
void PORTAIntHandler(void);
void PORTDIntHandler(void);

void DefaultIntHandler(void);

//*****************************************************************************
//
// Provide weak aliases for each Exception handler to the DefaultIntHandler.
// As they are weak aliases, any function with the same name will override
// this definition.
//
//*****************************************************************************
#define NMIIntHandler DefaultIntHandler
#define HardFaultIntHandler DefaultIntHandler
#define MemManageIntHandler DefaultIntHandler
#define BusFaultIntHandler DefaultIntHandler
#define UsageFaultIntHandler DefaultIntHandler
#define SVCIntHandler DefaultIntHandler
#define DebugMonIntHandler DefaultIntHandler
#define PendSVIntHandler DefaultIntHandler
#define DMA0IntHandler DefaultIntHandler
#define DMA1IntHandler DefaultIntHandler
#define DMA2IntHandler DefaultIntHandler
#define DMA3IntHandler DefaultIntHandler
#define FTFAIntHandler DefaultIntHandler
#define LVDIntHandler DefaultIntHandler
#define LLWUIntHandler DefaultIntHandler
#define I2C0IntHandler DefaultIntHandler
#define I2C1IntHandler DefaultIntHandler
#define SPI0IntHandler DefaultIntHandler
#define SPI1IntHandler DefaultIntHandler
#define UART0SEIntHandler DefaultIntHandler
#define UART1SEIntHandler DefaultIntHandler
#define UART2SEIntHandler DefaultIntHandler
#define ADCIntHandler DefaultIntHandler
#define ACMPIntHandler DefaultIntHandler
#define FTM0IntHandler DefaultIntHandler
#define FTM1IntHandler DefaultIntHandler
#define FTM2IntHandler DefaultIntHandler
#define RTCAIntHandler DefaultIntHandler
#define RTCSIntHandler DefaultIntHandler
#define PITIntHandler DefaultIntHandler
#define USBOTGIntHandler DefaultIntHandler
#define DACIntHandler DefaultIntHandler
#define TSIIntHandler DefaultIntHandler
#define MCGIntHandler DefaultIntHandler
#define LPTMRIntHandler DefaultIntHandler
#define PORTAIntHandler DefaultIntHandler
#define PORTDIntHandler DefaultIntHandler

#endif // INTERRUPTS_H
