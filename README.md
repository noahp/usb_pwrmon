usb_pwrmon
=====
Simple usb port current/voltage measurement with display.

render
=====
![front pcb](https://raw.githubusercontent.com/noahp/usb_pwrmon/master/hw/front.png)
![back pcb](https://raw.githubusercontent.com/noahp/usb_pwrmon/master/hw/back.png)

oled breakout
=====
![front pcb](https://raw.github.com/noahp/usb_pwrmon/oled_brkout/hw/front.png)
![back pcb](https://raw.github.com/noahp/usb_pwrmon/oled_brkout/hw/back.png)

comp info
=====

oled
-----
http://www.aliexpress.com/snapshot/276751791.html
http://rusticengineering.com/2010/05/10/oled-0-96-breakout-board-sh1101a-driver/

micro
-----
freescale ksz24/25/26  
http://cache.freescale.com/files/32bit/doc/data_sheet/KL02P32M48SF0.pdf  
http://cache.freescale.com/files/32bit/doc/ref_manual/KL02P32M48SF0RM.pdf

sns resist:
-----
http://www.mouser.com/ProductDetail/Ohmite/LVK12R010DER/?qs=sGAEpiMZZMtlleCFQhR%2fzSLc77HVEnhv2DNaRf6lglA%3d

opamp:
-----
current sense, fixed at 80 gain:
http://www.mouser.com/ProductDetail/Analog-Devices/AD8293G80ARJZ-R7/?qs=sGAEpiMZZMvEn2pkGav3bNYdL9E%2foSzJYdqf7Uk6kdc%3d
that's a range of 0-4.125A with a shunt resistor of 0.010 Ohms. assuming 16-bit adc (on freescale kl25), ~15 bits per mA.

button:
-----
http://www.mouser.com/Search/ProductDetail.aspx?R=1571621-1virtualkey50660000virtualkey506-1571621-1

usb connectors
-----
[Male A](http://www.mouser.com/ProductDetail/Keystone-Electronics/931/?qs=sGAEpiMZZMulM8LPOQ%252byk63mhAufmuInYp1ViSdVrzg%3d)  
[Female A](http://www.mouser.com/ProductDetail/Amphenol-Commercial-Products/UE27AC5410H/?qs=sGAEpiMZZMulM8LPOQ%252byk4r5VEz1yZV2Iljm%2fKqttNs%3d)  
[Micro B](http://www.mouser.com/ProductDetail/FCI/10118192-0001LF/?qs=sGAEpiMZZMulM8LPOQ%252byk2%252bTbV8%2f2X5vivRX5xKgOBI%3d)  
