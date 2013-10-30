usb_pwrmon
==========
Simple usb port current/voltage/power measurement with display.

comp info
==========

oled
----------
http://www.ebay.com/itm/0-96-Parallel-SPI-IIC-I2C-12864-128-64-Yellow-Blue-OLED-LED-Display-for-Arduino-/370856605767?pt=LH_DefaultDomain_0&hash=item5658c6b847  
http://www.ebay.com/itm/CRIUS-CO-16-OLED-Display-Module-v1-0-/161066293471?pt=Radio_Control_Parts_Accessories&hash=item25804c98df  

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
