
#include "MKL25Z4.h"
#include "systick.h"
#include "delay.h"
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
    static uint32_t oledTime = 1001;

    // service every 150ms
    if(systick_getMs() - oledTime > 1000){
        oledTime = systick_getMs();
        // refresh the oled display
        ssd1306_writeBuffer();
    }
}

int main(void) {
    // initialize the necessary
    main_init_io();
    ssd1306_init();

    ssd1306_writeString("Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", 0);

    while(1){
        // led task
        main_led();

        // oled
        main_oled();
    }

    return 0;
}
