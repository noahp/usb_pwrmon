
//
// ssd1306.h
// Header file for ssd1306 oled controller.
//

#if !defined(SSD1306_H)
#define SSD1306_H

#include <stdint.h>

#define SSD1306_SIZEOF_SCREENBUF (128*64/8)

void ssd1306_command(uint8_t c);
void ssd1306_data(uint8_t c);
void ssd1306_init(void);
void ssd1306_writeBuffer(uint8_t *buffer);

#endif // SSD1306_H
