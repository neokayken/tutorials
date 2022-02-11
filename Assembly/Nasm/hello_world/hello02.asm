;nasm comments
global _start ;entry symbol

section .data
    text1: db '>> Hello World, Nasm!',10 ;10 is a escape sequence
    text1_L: equ $-text1
    text2: db '>> Nice Weather!', 10
    text2_L: equ $-text2
    text3: db '>> Done!', 10
    text3_L: equ $-text3

section .bss ;bss data section

section .text
_start:
    mov rax, 1 ;syscall number 1 -> write
    mov rdi, 1 ;file descriptor stdout
    mov rsi, text1 ;string address
    mov edx, text1_L ;string length in bytes
    syscall ;system call

    mov rax, 1 ;syscall number 1 -> write
    mov rdi, 1 ;file descriptor stdout
    mov rsi, text2 ;string address
    mov rdx, text2_L ;string length in bytes
    syscall ;system call

    mov rax, 1 ;syscall number 1 -> write
    mov rdi, 1 ;file descriptor stdout
    mov rsi, text3 ;string address
    mov rdx, text3_L ;string length in bytes
    syscall ;system call

    mov rax, 60  ;syscall number 60 -> exit
    mov rdi, 0 ;set exit code 0;
    syscall
