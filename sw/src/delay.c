
//
// delay.c
// Blocking delay, uses systick.
//

#include "delay.h"
#include "systick.h"

// blocking ms delay
void delay_ms(uint32_t ms)
{
    // get curent time
    uint32_t thisTime = systick_getMs();

    // wait until ms time elapses
    while(systick_getMs() - thisTime < ms);
}
