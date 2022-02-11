section .data
    text1: db 10, "[stack : push, pop, peek]", 10
    text1_L: equ $-text1

    SYS_write    equ  1
    FD_write     equ  1

    EXIT_SUCESS  equ  0
    SYS_exit     equ 60

    digit: db 0, 10

section .text
    global _start

_start:
    call _printText1

    ;stack push, pop, peek

    push 7
    push 5
    push 9

    pop rax
    call _printRAXDigit

    pop rax
    call _printRAXDigit

    mov rax, [rsp] ;peek
    call _printRAXDigit

    pop rax
    call _printRAXDigit

;terminate program

_last:
    mov rax, SYS_exit
    mov rdi, EXIT_SUCESS
    syscall

_printText1:
    mov rax, SYS_write ;syscall id 1 ->sys_write
    mov rdi, FD_write ;file descriptor stdout
    mov rsi, text1 ;hello world text
    mov rdx, text1_L ;byte length
    syscall
    ret ;return to where it called

_printRAXDigit:
    add rax, 48
    mov [digit], al ;write a byte
    mov rax, SYS_write
    mov rdi, FD_write
    mov rsi, digit
    mov rdx, 2
    syscall
    ret
