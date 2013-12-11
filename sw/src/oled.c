
//
// oled.c
// Manage the oled display.
//

#include "oled.h"
#include "ssd1306.h"
#include "font_5x8.h"

uint8_t oled_screenBuf[SSD1306_SIZEOF_SCREENBUF] = {0x00};

// write a string to the screen buffer. pos is character coords,
// with 0,0=0 top left, ex: 1,4=(1*19)+4=23.
// automatically wraps text at column end.
void oled_writeString(char *str, uint32_t pos)
{
    uint32_t i = 0, j;

    // for each chr in the string, print it to the display
    while(*str != '\0'){
        if(((*str-0x20) < 96) && (*str >= 0x20)){
            for(j=0; j<5; j++){
                oled_screenBuf[i*6+j] = font5x8[(*str-0x20)*5+j];
            }
        }
        else{
            for(j=0; j<5; j++){
                oled_screenBuf[i*6+j] = 0;
            }
        }
        oled_screenBuf[i*6+5] = 0;
        str++;
        i++;
    }
}

void oled_refresh(void)
{
    ssd1306_writeBuffer(oled_screenBuf);
}
