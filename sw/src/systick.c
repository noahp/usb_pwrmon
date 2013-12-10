
//
// systick.c
// Systick provides ms time for use by other modules.
//

#include "systick.h"

uint32_t systick_ms = 0;

// call every ms
void systick_update(void)
{
    systick_ms++;
}

// return ms time
uint32_t systick_getMs(void)
{
    return systick_ms;
}
