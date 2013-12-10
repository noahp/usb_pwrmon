
#include "MKL25Z4.h"
#include "systick.h"
#include "delay.h"
#include "oled.h"
#include "ssd1306.h"

void main_init_io(void)
{
    // init ports
    // disable COP
    SIM_COPC = 0;

    // enable clocks for PORTB
    SIM_SCGC5 |= SIM_SCGC5_PORTB_MASK;

    // set B0 to GPIO
    PORTB_PCR0 = PORT_PCR_MUX(1);

    // set output B0 low (LED on initially)
    GPIOB_PCOR = (1 << 0);

    // set B0 DDR to output
    GPIOB_PDDR |= (1 << 0);
}

void main_led(void)
{
    static uint32_t blinkTime = 0;

    // blink every 250ms
    if(systick_getMs() - blinkTime > 250){
        blinkTime = systick_getMs();
        // toggle
        GPIOB_PTOR = (1 << 0);
    }
}

void main_oled(void)
{
    static uint32_t oledTime = 0;

    // service every 150ms
    if(systick_getMs() - oledTime > 1000){
        oledTime = systick_getMs();
        // refresh the oled display
        oled_refresh();
    }
}

int main(void) {
    // initialize the necessary
    main_init_io();
    ssd1306_init();

    while(1){
        // led task
        main_led();

        // oled
        main_oled();
    }

    return 0;
}
