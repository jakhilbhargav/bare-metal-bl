CMAKE_MINIMUM_REQUIRED(VERSION 3.14)

/* Compiler Config */
set(CMAKE_C_COMPILER /opt/homebrew/bin/arm-none-eabi-gcc)
set(CMAKE_ASM_COMPILER /opt/homebrew/bin/arm-none-eabi-gcc)

/* System Config */
set(CMAKE_SYSTEM_NAME Generic)
set(CMAKE_SYSTEM_PROCESSOR arm)

/* Project Name */
project(bare-metal-bl)

enable_language(ASM)

add_executable(bm-bl)

target_sources(bm-bl
   PRIVATE
        app/src/main.c
        startup.S
        )