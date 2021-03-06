
//
// ssd1306.h
// Utility functions for ssd1306 oled controller.
//

#include "ssd1306.h"
#include "font_5x8.h"
#include <stdint.h>
#include "MKL02Z4.h"
#include "delay.h"
#include "noahs_face.h"

#define SSD1306_SIZEOF_SCREENBUF (128*64/8)

// some pin abstractions
#define SET_RST()   (GPIOB_PSOR = (1 << 5))
#define CLR_RST()   (GPIOB_PCOR = (1 << 5))
#define SET_DC()    (GPIOA_PSOR = (1 << 6))
#define CLR_DC()    (GPIOA_PCOR = (1 << 6))

// ssd1306 registers etc.
#define SSD1306_SETCONTRAST				0x81
#define SSD1306_DISPLAYALLON_RESUME		0xA4
#define SSD1306_DISPLAYALLON			0xA5
#define SSD1306_NORMALDISPLAY			0xA6
#define SSD1306_INVERTDISPLAY			0xA7
#define SSD1306_DISPLAYOFF				0xAE
#define SSD1306_DISPLAYON				0xAF
#define SSD1306_SETDISPLAYOFFSET		0xD3
#define SSD1306_SETCOMPINS				0xDA
#define SSD1306_SETVCOMDETECT			0xDB
#define SSD1306_SETDISPLAYCLOCKDIV		0xD5
#define SSD1306_SETPRECHARGE			0xD9
#define SSD1306_SETMULTIPLEX			0xA8
#define SSD1306_SETLOWCOLUMN			0x00
#define SSD1306_SETHIGHCOLUMN			0x10
#define SSD1306_SETSTARTLINE			0x40
#define SSD1306_MEMORYMODE				0x20
#define SSD1306_COMSCANINC				0xC0
#define SSD1306_COMSCANDEC				0xC8
#define SSD1306_SEGREMAP				0xA0
#define SSD1306_CHARGEPUMP				0x8D
#define SSD1306_EXTERNALVCC				0x1
#define SSD1306_SWITCHCAPVCC			0x2

// Scrolling #defines
#define SSD1306_ACTIVATE_SCROLL							0x2F
#define SSD1306_DEACTIVATE_SCROLL						0x2E
#define SSD1306_SET_VERTICAL_SCROLL_AREA				0xA3
#define SSD1306_RIGHT_HORIZONTAL_SCROLL					0x26
#define SSD1306_LEFT_HORIZONTAL_SCROLL					0x27
#define SSD1306_VERTICAL_AND_RIGHT_HORIZONTAL_SCROLL	0x29
#define SSD1306_VERTICAL_AND_LEFT_HORIZONTAL_SCROLL		0x2A

void ssd1306_command(uint8_t c)
{
    // wait until tx empty flag is set
    while(!(SPI0_S & SPI_S_SPTEF_MASK));

    // d/c pin low for command mode.
    CLR_DC();
    // write the command
    SPI0_D = c;
}

void ssd1306_data(uint8_t c)
{
    // wait until tx empty flag is set
    while(!(SPI0_S & SPI_S_SPTEF_MASK));

    // d/c pin high for data mode.
    SET_DC();
    // write the command
    SPI0_D = c;
}

void ssd1306_init(void)
{
    uint32_t i;

    // init necessary io

    // enable clocks for PORTA & PORTB
    SIM_SCGC5 |= SIM_SCGC5_PORTA_MASK;
    SIM_SCGC5 |= SIM_SCGC5_PORTB_MASK;

    // pin 13, B5 output for rst
    PORTB_PCR5 = PORT_PCR_MUX(1);   // gpio
    GPIOB_PCOR = (1 << 5);          // low initially
    GPIOB_PDDR |= (1 << 5);         // output mode

    // pin 6, a6 output for dc
    PORTA_PCR6 = PORT_PCR_MUX(1);   // gpio
    GPIOA_PCOR = (1 << 6);          // low initially
    GPIOA_PDDR |= (1 << 6);         // output mode

    // init spi0
    // configure io pins for spi
    // PTA5, 7, PTB0
    PORTA_PCR5 = PORT_PCR_MUX(3);   // CS
    PORTA_PCR7 = PORT_PCR_MUX(3);   // MOSI
    PORTB_PCR0 = PORT_PCR_MUX(3);   // SCK

    // enable SPI0 module
    SIM_SCGC4 |= SIM_SCGC4_SPI0_MASK;

    // configure as master, cs output driven automatically, CPOL=1
    SPI0_C1 |= (SPI_C1_MSTR_MASK | SPI_C1_SSOE_MASK | SPI_C1_CPOL_MASK);
    SPI0_C2 |= SPI_C2_MODFEN_MASK;

    // select clock divider- SPPR = 0, SPR = 0 (2)
    SPI0_BR = SPI_BR_SPPR(0) | SPI_BR_SPR(3);

    // turn on spi
    SPI0_C1 |= SPI_C1_SPE_MASK;

    // do some setup on the oled display
    // wait a ms after 3.3v comes up on reset
    delay_ms(10);
    // reset low for 10ms
    CLR_RST();  // low
    delay_ms(10);
    SET_RST();  // now high

    // give it a few ms after reset goes high
    delay_ms(5);

    // now initialize display controller
    // Init sequence for 128x64 OLED module
    ssd1306_command(SSD1306_DISPLAYOFF);                    // 0xAE
    ssd1306_command(SSD1306_SETDISPLAYCLOCKDIV);            // 0xD5
    ssd1306_command(0x80);                                  // the suggested ratio 0x80
    ssd1306_command(SSD1306_SETMULTIPLEX);                  // 0xA8
    ssd1306_command(0x3F);
    ssd1306_command(SSD1306_SETDISPLAYOFFSET);              // 0xD3
    ssd1306_command(0x0);                                   // no offset
    ssd1306_command(SSD1306_SETSTARTLINE | 0x0);            // line #0
    ssd1306_command(SSD1306_CHARGEPUMP);                    // 0x8D
    ssd1306_command(0x14);                                  // internall VCC
    ssd1306_command(SSD1306_MEMORYMODE);                    // 0x20
    ssd1306_command(0x00);                                  // 0x0 act like ks0108
    ssd1306_command(SSD1306_SEGREMAP /*| 0x1*/);
    ssd1306_command(SSD1306_COMSCANINC);
    ssd1306_command(SSD1306_SETCOMPINS);                    // 0xDA
    ssd1306_command(0x12);
    ssd1306_command(SSD1306_SETCONTRAST);                   // 0x81
    ssd1306_command(0xCF);                                  // internal VCC
    ssd1306_command(SSD1306_SETPRECHARGE);                  // 0xd9
    ssd1306_command(0xF1);                                  // internal VCC
    ssd1306_command(SSD1306_SETVCOMDETECT);                 // 0xDB
    ssd1306_command(0x40);
    ssd1306_command(SSD1306_DISPLAYALLON_RESUME);           // 0xA4
    ssd1306_command(SSD1306_NORMALDISPLAY);                 // 0xA6

    ssd1306_command(SSD1306_DISPLAYON);//--turn on oled panel

    // set display to noahs face
    ssd1306_command(SSD1306_SETLOWCOLUMN | 0x0);  // low col = 0
    ssd1306_command(SSD1306_SETHIGHCOLUMN | 0x0);  // hi col = 0
    ssd1306_command(SSD1306_SETSTARTLINE | 0x0); // line #0

    for(i=0; i<SSD1306_SIZEOF_SCREENBUF; i++){
        ssd1306_data(noahs_face[i]);
    }
}

// set cursor back to selected line number
void ssd1306_setLine(unsigned char lineNum)
{
    lineNum = (lineNum % 8)*8;
    lineNum = 64 - lineNum;
//    ssd1306_command(SSD1306_SETSTARTLINE | lineNum);
    ssd1306_command(SSD1306_SETDISPLAYOFFSET);
    ssd1306_command(lineNum);
}


// write a string to the screen. pos is character coords,
// with 0,0=0 top left, ex: 1,4=(1*19)+4=23.
// automatically wraps text at column end.
void ssd1306_writeString(char *str, uint32_t pos)
{
    uint32_t i = 0, j;

    ssd1306_command(SSD1306_SETLOWCOLUMN | 0x0);  // low col = 0
    ssd1306_command(SSD1306_SETHIGHCOLUMN | 0x0);  // hi col = 0
    ssd1306_command(SSD1306_SETSTARTLINE | 0x0); // line #0

    // for each chr in the string, print it to the display
    while((*str != '\0') && ((i+1)*6*8 < 128*64)){
        if(((*str-0x20) < 96) && (*str >= 0x20)){
            for(j=0; j<5; j++){
                ssd1306_data(font5x8[(*str-0x20)*5+j]);
            }
        }
        else{
            for(j=0; j<5; j++){
                ssd1306_data(0);
            }
        }
        ssd1306_data(0);
        str++;
        i++;
    }
    i = (128*64-i*6*8)/8;
    while(i--){
        ssd1306_data(0);
    }
}

void ssd1306_writeStringSize2(char *str, uint32_t pos)
{
    uint32_t i = 0, j;

    ssd1306_command(SSD1306_SETLOWCOLUMN | 0x0);  // low col = 0
    ssd1306_command(SSD1306_SETHIGHCOLUMN | 0x0);  // hi col = 0
    ssd1306_command(SSD1306_SETSTARTLINE | 0x0); // line #0

    // for each chr in the string, print it to the display
    while((*str != '\0') && ((i+1)*6*8 < 128*64)){
        if(((*str-0x20) < 96) && (*str >= 0x20)){
            for(j=0; j<5; j++){
                ssd1306_data(font5x8[(*str-0x20)*5+j]);
            }
        }
        else{
            for(j=0; j<5; j++){
                ssd1306_data(0);
            }
        }
        ssd1306_data(0);
        str++;
        i++;
    }
    i = (128*64-i*6*8)/8;
    while(i--){
        ssd1306_data(0);
    }
}
