
//
// interrupts.h
// Interrupt service routines.
//

#include "interrupts.h"
#include "startup.h"    // StartupInitClock
#include "systick.h"    // systick_update

#define     __I     volatile const          /*!< defines 'read only' permissions      */
#define     __IO    volatile                  /*!< defines 'read / write' permissions   */
/** @addtogroup CMSIS_CM0_SysTick CMSIS CM0 SysTick
  memory mapped structure for SysTick
  @{
 */
typedef struct
{
  __IO uint32_t CTRL;                         /*!< Offset: 0x00  SysTick Control and Status Register */
  __IO uint32_t LOAD;                         /*!< Offset: 0x04  SysTick Reload Value Register       */
  __IO uint32_t VAL;                          /*!< Offset: 0x08  SysTick Current Value Register      */
  __I  uint32_t CALIB;                        /*!< Offset: 0x0C  SysTick Calibration Register        */
} SysTick_Type;

/* SysTick Control / Status Register Definitions */
#define SysTick_CTRL_CLKSOURCE_Pos          2                                             /*!< SysTick CTRL: CLKSOURCE Position */
#define SysTick_CTRL_CLKSOURCE_Msk         (1ul << SysTick_CTRL_CLKSOURCE_Pos)            /*!< SysTick CTRL: CLKSOURCE Mask */

#define SysTick_CTRL_TICKINT_Pos            1                                             /*!< SysTick CTRL: TICKINT Position */
#define SysTick_CTRL_TICKINT_Msk           (1ul << SysTick_CTRL_TICKINT_Pos)              /*!< SysTick CTRL: TICKINT Mask */

#define SysTick_CTRL_ENABLE_Pos             0                                             /*!< SysTick CTRL: ENABLE Position */
#define SysTick_CTRL_ENABLE_Msk            (1ul << SysTick_CTRL_ENABLE_Pos)               /*!< SysTick CTRL: ENABLE Mask */

/* SysTick Reload Register Definitions */
#define SysTick_LOAD_RELOAD_Pos             0                                             /*!< SysTick LOAD: RELOAD Position */
#define SysTick_LOAD_RELOAD_Msk            (0xFFFFFFul << SysTick_LOAD_RELOAD_Pos)        /*!< SysTick LOAD: RELOAD Mask */

/* Memory mapping of Cortex-M0 Hardware */
#define SCS_BASE            (0xE000E000)                              /*!< System Control Space Base Address */
#define SysTick_BASE        (SCS_BASE +  0x0010)                      /*!< SysTick Base Address              */

#define SysTick             ((SysTick_Type *)       SysTick_BASE)     /*!< SysTick configuration struct      */

static uint32_t SysTick_Config(uint32_t ticks)
{
  if (ticks > SysTick_LOAD_RELOAD_Msk)  return (1);            /* Reload value impossible */

  SysTick->LOAD  = (ticks & SysTick_LOAD_RELOAD_Msk) - 1;      /* set reload register */
  SysTick->VAL   = 0;                                          /* Load the SysTick Counter Value */
  SysTick->CTRL  = SysTick_CTRL_CLKSOURCE_Msk |
                   SysTick_CTRL_TICKINT_Msk   |
                   SysTick_CTRL_ENABLE_Msk;                    /* Enable SysTick IRQ and SysTick Timer */
  return (0);                                                  /* Function successful */
}

// Start address for the initialization values of the .data section.
extern unsigned long _sidata;
// Start address for the .data section
extern unsigned long _sdata;
// End address for the .data section
extern unsigned long _edata;
// Start address for the .bss section
extern unsigned long _sbss;
// End address for the .bss section
extern unsigned long _ebss;
// End address for ram
extern void _eram;

extern int main(void);

void ResetHandler(void)
{
    unsigned long *pulSrc, *pulDest;

    // clock initialization first
    StartupInitClock();

    // Initialize data and bss
    // Copy the data segment initializers from flash to SRAM
    pulSrc = &_sidata;

    for(pulDest = &_sdata; pulDest < &_edata; )
    {
        *(pulDest++) = *(pulSrc++);
    }

    // Zero fill the bss segment.
    for(pulDest = &_sbss; pulDest < &_ebss; )
    {
        *(pulDest++) = 0;
    }

    // initialize systick interrupt at 1ms interval
    SysTick_Config(48000);

    // Call the application's entry point.
    main();

    // shouldn't return
    while(1);
}

void SysTickIntHandler(void)
{
    // update ms clock
    systick_update();
}

// DefaultIntHandler is used for unpopulated interrupts
void DefaultIntHandler(void)
{
    // Go into an infinite loop.
    while(1);
}
