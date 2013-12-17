OUTPUT_FORMAT ("elf32-littlearm", "elf32-bigarm", "elf32-littlearm")
SEARCH_DIR(.)

MEMORY
{
  INTERRUPTS (rx)  : ORIGIN = 0x0,  LENGTH = 0xC0         /* 192 */
  FLASHCONFIG(rx)  : ORIGIN = 0x400,  LENGTH = 16         /* 16 bytes */
  TEXT       (rx)  : ORIGIN = 0x410, LENGTH = 0x1FBF0     /* 128K - 0x410 */
  RAM        (rwx) : ORIGIN = 0x1FFFF000, LENGTH = 0x4000 /* 16K */
}

/* Section Definitions */
SECTIONS
{
    .interrupts :
    {
        KEEP(*(.isr_vector .isr_vector.*))
    } > INTERRUPTS

    .flashconfig :
    {
        KEEP(*(.flashconfig .flashconfig.*))
    } > FLASHCONFIG

    .text :
    {
        *(.text .text.* .gnu.linkonce.t.*)
        *(.glue_7t) *(.glue_7)
        *(.rodata .rodata* .gnu.linkonce.r.*)
    } > TEXT

    .ARM.extab :
    {
        *(.ARM.extab* .gnu.linkonce.armextab.*)
    } > TEXT

    .ARM.exidx :
    {
        *(.ARM.exidx* .gnu.linkonce.armexidx.*)
    } > TEXT

    . = ALIGN(4);
    _etext = .;
    _sidata = .;

    .data : AT (_etext)
    {
        _sdata = .;
        *(.data .data.*)
        . = ALIGN(4);
        _edata = . ;
    } > RAM

    /* .bss section which is used for uninitialized data */
    .bss (NOLOAD) :
    {
        _sbss = . ;
        *(.bss .bss.*)
        *(COMMON)
        . = ALIGN(4);
        _ebss = . ;
    } > RAM

    /* stack section */
    .co_stack (NOLOAD):
    {
        . = ALIGN(8);
        *(.co_stack .co_stack.*)
    } > RAM

    . = ALIGN(4);
    _end = . ;
}
