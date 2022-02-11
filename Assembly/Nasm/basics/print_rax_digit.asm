section .data
    text1: db 10, "[print a single digit]", 10
    text1_L: equ $-text1

    SYS_write    equ 1

    EXIT_SUCESS  equ 0
    SYS_exit     equ 60

    digit db 0, 10

section .text
    global _start

_start:
    call _printText1


    xor rdx, rdx ;clear rdx

    mov rax, 10
    mov rbx, 2
    div rbx ;result goes to rax

    call _printRAXDigit

;terminate program

_last:
    mov rax, SYS_exit
    mov rdi, EXIT_SUCESS
    syscall

_printText1:
    mov rax, SYS_write ;syscall id 1 ->sys_write
    mov rdi, 1 ;file descriptor stdout
    mov rsi, text1 ;hello world text
    mov rdx, text1_L ;byte length
    syscall
    ret ;return to where it called

_printRAXDigit:
    add rax, 48
    mov [digit], al
    mov rax, 1
    mov rdi, 1
    mov rsi, digit
    mov rdx, 2
    syscall
    ret
