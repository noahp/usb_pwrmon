usb_pwrmon
==========
Simple usb port current/voltage measurement with display.

comp info
==========

oled
----------
http://www.aliexpress.com/snapshot/276751791.html
http://rusticengineering.com/2010/05/10/oled-0-96-breakout-board-sh1101a-driver/

micro
----------
freescale

sns resist:
----------
http://www.mouser.com/ProductDetail/Ohmite/LVK12R010DER/?qs=sGAEpiMZZMtlleCFQhR%2fzSLc77HVEnhv2DNaRf6lglA%3d

opamp:
----------
current sense, fixed at 80 gain:
http://www.mouser.com/ProductDetail/Analog-Devices/AD8293G80ARJZ-R7/?qs=sGAEpiMZZMvEn2pkGav3bNYdL9E%2foSzJYdqf7Uk6kdc%3d
that's a range of 0-4.125A with a shunt resistor of 0.010 Ohms. assuming 16-bit adc (on freescale kl25), ~15 bits per mA.

button:
----------
http://www.mouser.com/Search/ProductDetail.aspx?R=1571621-1virtualkey50660000virtualkey506-1571621-1

op amp note from ti
----------
http://www.ti.com/lit/an/sloa097/sloa097.pdf
