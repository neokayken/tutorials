section .data
    hello: db 'Hello World! NASM',10
    hello_L: equ $-hello

section .text
    global _start

_start:
    call _printHelloWorld
    call _printHelloWorld
    call _printHelloWorld

    call _exitProgram

_exitProgram:
    mov rax, 60
    mov rdi, 0
    syscall

_printHelloWorld:
    mov rax, 1 ;syscall id 1 ->sys_write
    mov rdi, 1 ;file descriptor stdout
    mov rsi, hello ;hello world text
    mov rdx, hello_L ;byte length
    syscall
    ret
