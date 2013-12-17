ARCHFLAGS=-mthumb -mcpu=cortex-m0plus
CFLAGS=
LDFLAGS=--specs=nano.specs -Wl,--gc-sections,-Map,$(TARGET).map,-Tlink.ld

CC=arm-none-eabi-gcc
LD=arm-none-eabi-gcc
OBJCOPY=arm-none-eabi-objcopy
SIZE=arm-none-eabi-size
# RM=rm -f
# windows..
RM=del

TARGET=main
SRC=$(wildcard *.c)
OBJ=$(patsubst %.c, %.o, $(SRC))

all: build size
build: elf hex
elf: $(TARGET).elf
hex: $(TARGET).hex

clean:
	$(RM) $(TARGET).hex $(TARGET).elf $(TARGET).map $(OBJ)

%.o: %.c
	$(CC) -c $(ARCHFLAGS) $(CFLAGS) -o $@ $<

$(TARGET).elf: $(OBJ)
	$(LD) $(ARCHFLAGS) $(LDFLAGS) -o $@ $(OBJ)

%.hex: %.elf
	$(OBJCOPY) -O ihex $< $@

size:
	$(SIZE) $(TARGET).elf
