MEMORY
{
    FLASH (rx) : ORIGIN = 0x00000000, LENGTH = 1024K
    RAM (wr) : ORIGIN = 0x20000000, LENGTH = 256K
}

SECTIONS
{
    .isr_vector :
    {
        *(.isr_vector)
    } >FLASH

    .text :
    {
        *(.text)
    } >FLASH

    .stack :
    {
        *(.stack)
    } >RAM

    .heap :
    {
        end = .;
        *(.heap)
    } >RAM

    .data :
    {
        . = ALIGN(4);
        __data_start = .;
        *(.data)
        . = ALIGN(4);
        __data_end = .;
    } >RAM AT>FLASH 
    __data_load_start = LOADADDR(.data);


    .sdata :
    {
        . = ALIGN(4);
        __sdata_start = .;
        *(.sdata)
        . = ALIGN(4);
        __sdata_end = .;
    } >RAM AT>FLASH
    __sdata_load_start = LOADADDR(.sdata);

    .tdata :
    {
        . = ALIGN(4);
        __tdata_start = .;
        *(.tdata)
        . = ALIGN(4);
        __tdata_end = .;
    } >RAM AT>FLASH
    __tdata_load_start = LOADADDR(.tdata);

    .fast :
    {
        . = ALIGN(4);
        __fast_start = .;
        *(.fast)
        . = ALIGN(4);
        __fast_end = .;
    } >RAM AT>FLASH
    __fast_load_start = LOADADDR(.fast);

    .bss :
    {
        . = ALIGN(4);
        __bss_start__ = .;
        *(.bss)
        . = ALIGN(4);
        __bss_end__ = .;
    } >RAM
    
    .tbss :
    {
        . = ALIGN(4);
        __tbss_start__ = .;
        *(.tbss)
        . = ALIGN(4);
        __tbss_end__ = .;
    } >RAM

    .sbss :
    {
        . = ALIGN(4);
        __sbss_start__ = .;
        *(.sbss)
        . = ALIGN(4);
        __sbss_end__ = .;
    } >RAM    
}