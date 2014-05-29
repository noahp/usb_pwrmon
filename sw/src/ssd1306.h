
//
// ssd1306.h
// Header file for ssd1306 oled controller.
//

#if !defined(SSD1306_H)
#define SSD1306_H

#include <stdint.h>

void ssd1306_init(void);
void ssd1306_setLine(unsigned char lineNum);
void ssd1306_writeString(char *str, uint32_t pos);

#endif // SSD1306_H
