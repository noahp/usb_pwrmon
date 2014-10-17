
#include "MKL02Z4.h"
#include "systick.h"
#include "delay.h"
#include "ssd1306.h"
#include <stdio.h> // sprintf

// need to define _sbrk for sprintf (malloc)
extern int __end__;
extern caddr_t _sbrk(int incr);
extern caddr_t _sbrk(int incr)
{
    static unsigned char *heap = NULL;
    unsigned char *prev_heap;

    if(heap == NULL){
        heap = (unsigned char *)&__end__;
    }
    prev_heap = heap;

    heap += incr;

    return (caddr_t)prev_heap;
}

static void main_init_io(void)
{
    // init ports
    // disable COP
    SIM_COPC = 0;

    // enable clocks for PORTA
    SIM_SCGC5 |= SIM_SCGC5_PORTA_MASK;

    // set A3 to GPIO
    PORTA_PCR3 = PORT_PCR_MUX(1);

    // set output A3 high (LED on initially)
    GPIOA_PSOR = (1 << 3);

    // set A3 DDR to output
    GPIOA_PDDR |= (1 << 3);

    // set A4 to GPIO- input, pullup enabled
    PORTA_PCR4 = PORT_PCR_MUX(1) | PORT_PCR_PE_MASK | PORT_PCR_PS_MASK;
    GPIOA_PDDR &= ~(1 << 4);
}

static void main_init_uart(void)
{
    // enable clocks for PORTB
    SIM_SCGC5 |= SIM_SCGC5_PORTB_MASK;

    // select uart0 function on b3/b4
    PORTB_PCR3 = PORT_PCR_MUX(3);
    PORTB_PCR4 = PORT_PCR_MUX(3);

    // select MCGFLLCLK for uart0 clock
    SIM_SOPT2 |= SIM_SOPT2_UART0SRC(1);

    // enable uart0 clock
    SIM_SCGC4 |= SIM_SCGC4_UART0_MASK;

    // 115200 baud.
    // set oversampling ratio to 15
    // set baud rate register to 26, yields ~115384 baud, ~1.6% error
    UART0_C4 = (UART0_C4 & (~UART0_C4_OSR_MASK)) | UART0_C4_OSR(15);
    UART0_BDL = (UART0_BDL & (~UART0_BDL_SBR_MASK)) | UART0_BDL_SBR(26);
    UART0_BDH = UART0_BDH_SBR(0);

    // enable tx & rx
    UART0_C2 |= UART0_C2_RE_MASK | UART0_C2_TE_MASK;
}

static void main_init_adc(void)
{
    uint32_t data;

    // enable clocks for PORTB
    SIM_SCGC5 |= SIM_SCGC5_PORTB_MASK;

    // enable ADC clock
    SIM_SCGC6 |= SIM_SCGC6_ADC0_MASK;

    // select ADC on pin B2
    //PORTB_PCR2 = PORT_PCR_MUX(0);   // default

    // set 12 bit mode, input clock is bus clock / 2 for 12MHz
    ADC0_CFG1 = ADC_CFG1_MODE(1) | ADC_CFG1_ADICLK(1);

    // set high speed mode
    ADC0_CFG2 = ADC_CFG2_ADHSC_MASK;

    // no compare, software trigger, default voltage reference
    ADC0_SC2 = 0;

    // continuous conversion, hardware average enabled 32 samples
    ADC0_SC3 = ADC_SC3_ADCO_MASK /*| ADC_SC3_AVGE_MASK | ADC_SC3_AVGS(3)*/;

    // select input channel- also, after continuous mode selected, a write to
    // SC1A starts the conversion
    ADC0_SC1A = ADC_SC1_ADCH(4);
}

#define ADC_BUFSIZE 32
static struct {
    uint32_t sum;
    uint32_t time;
    uint16_t avgInt;
    uint16_t avgFrac;
    uint16_t buf[ADC_BUFSIZE];
    uint8_t idx;
} adc_cntrl = {
    .sum = 0,
    .time = 0,
    .idx = 0,
};

static void main_adc(void)
{
    // every 1ms take a sample
    if(adc_cntrl.time != systick_getMs()){
        uint32_t data = ADC0_SC1A;
        if(data & ADC_SC1_COCO_MASK){
            // conversion complete
            // remove oldest sample from sum
            adc_cntrl.idx = (adc_cntrl.idx + 1) % ADC_BUFSIZE;
            adc_cntrl.sum -= adc_cntrl.buf[adc_cntrl.idx];
            // add new sample and compute average
            adc_cntrl.buf[adc_cntrl.idx] = ADC0_RA & 0xFFF;
            adc_cntrl.sum += adc_cntrl.buf[adc_cntrl.idx];
            data = adc_cntrl.sum / ADC_BUFSIZE;

            // compute integer and fractional values
            data *= 330000; // prep to compute voltage
            data /= 4095;   // now in .000001 V units
            adc_cntrl.avgInt = data / 100000;
            adc_cntrl.avgFrac = data - (data / 100000);

            adc_cntrl.time = systick_getMs();
        }
    }
}

static void main_led(void)
{
    static uint32_t blinkTime = 0;

    // blink every 250ms
    if(systick_getMs() - blinkTime > 250){
        blinkTime = systick_getMs();
        // toggle
        GPIOA_PTOR = (1 << 3);
    }
}

static void main_uart_tx(uint8_t *pData, uint32_t len)
{
    uint32_t i;

    for(i=0; i<len; i++){
        UART0_D = pData[i];
        while(!(UART0_S1 & UART0_S1_TDRE_MASK));
    }
}

static void main_uart(void)
{
    static struct {
        uint32_t time;
        enum {
            IDLE,
            ACTIVE,
            DONE,
        } state;
    } buttonControl = {
        .state = IDLE,
        .time = 0,
    };
    uint32_t data = GPIOA_PDIR;
    uint32_t charcount;
    uint8_t strBuf[32];

    // report data on button press
    switch(buttonControl.state){
        default:
            buttonControl.state = IDLE;
            // fall through
        case IDLE:
            if((data & (1 << 4)) == 0){
                buttonControl.state = ACTIVE;
                buttonControl.time = systick_getMs();
            }
            break;

        case ACTIVE:
            if((data & (1 << 4)) != 0){
                buttonControl.state = IDLE;
            }
            else if(systick_getMs() - buttonControl.state > 100){
                // send a couple of chars
                charcount = sprintf((char*)strBuf, "%d.%05dA\n\r",
                                    adc_cntrl.avgInt, adc_cntrl.avgFrac);
                if(charcount){
                    main_uart_tx(strBuf, charcount);
                }

                buttonControl.time = systick_getMs();
                buttonControl.state = DONE;
            }
            break;

        case DONE:
            // back to idle 100ms after release
            if((data & (1 << 4)) != 0){
                if(systick_getMs() - buttonControl.state > 100){
                    buttonControl.state = IDLE;
                }
            }
            break;
    }

    // report data on receiving '?' character
    if(UART0_S1 & UART0_S1_RDRF_MASK){
        data = UART0_D;
        if(data == '?'){
            charcount = sprintf((char*)strBuf, "%d.%05dA\n\r",
                                adc_cntrl.avgInt, adc_cntrl.avgFrac);
            if(charcount){
                main_uart_tx(strBuf, charcount);
            }
        }
    }
}

static void main_oled(void)
{
    static unsigned char linenum = 0;
    static uint32_t oledTime = 1001;
    static int stringListIdx = 0;
    char *stringList[] = {
        "Hello world!",
        "Another string.",
//        "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
    };

    // blink every 250ms
    if(systick_getMs() - oledTime > 250){
        oledTime = systick_getMs();
        ssd1306_setLine(linenum++);
        ssd1306_writeString(stringList[stringListIdx], 0);
        if(++stringListIdx >= 2){
            stringListIdx = 0;
        }
    }
}

int main(void) {
    // initialize the necessary
    main_init_io();
    main_init_uart();
    main_init_adc();
    ssd1306_init();

    while(1){
        // led task
        main_led();

        // oled task
        main_oled();

        // uart task
        main_uart();

        // adc task
        main_adc();
    }

    return 0;
}
