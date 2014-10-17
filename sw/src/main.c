
#include "MKL02Z4.h"
#include "systick.h"
#include "delay.h"
#include "ssd1306.h"

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

//    // 9600
//    // set oversampling ratio to 9
//    // set baud rate register to 500, yields 9600 baud
//    UART0_C4 = (UART0_C4 & (~UART0_C4_OSR_MASK)) | UART0_C4_OSR(9);
//    UART0_BDL = (UART0_BDL & (~UART0_BDL_SBR_MASK)) | UART0_BDL_SBR(500 & 0xFF);
//    UART0_BDH = UART0_BDH_SBR((500 >> 8) & 0xFF);

    // 115200??
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
                main_uart_tx((uint8_t*)"Noah\n\r", sizeof("Noah\n\r") - 1);

                buttonControl.state = DONE;
            }
            break;

        case DONE:
            if((data & (1 << 4)) != 0){
                buttonControl.state = IDLE;
            }
            break;
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
    ssd1306_init();

    while(1){
        // led task
        main_led();

        // oled task
        main_oled();

        // uart task
        main_uart();
    }

    return 0;
}
