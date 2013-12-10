
//
// systick.h
// Header file for systick. Systick provides ms time
// for use by other modules.
//

#include <stdint.h>

#if !defined(SYSTICK_H)
#define SYSTICK_H

// call every ms
void systick_update(void);

// return ms time
uint32_t systick_getMs(void);

#endif // SYSTICK_H
