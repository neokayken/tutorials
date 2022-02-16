extern printf

%macro printInt 1
    mov rsi, %1
    call _printfInt
%endmacro

%macro printStr 1
    mov rsi, %1
    call _printStr
%endmacro

section .data
    text0: db "[-- NASM basics --]",10,0

    intFormat: db "- value: (%d)",10,0
    strFormat: db "%s",0

    count: dq 0
    sum: dq 0

section .text
    global main

main:
    nop
    printStr text0
    

_loopStart:

    xor rcx, rcx
    mov rcx, qword [count]
    cmp rcx, 0
    jl _last

_loop:
    add qword [sum], rcx

    push rcx
    printInt [sum]
    pop rcx

    inc rcx ; decrease counter
    cmp rcx, 11
    jne _loop

    nop

_last:
    mov rax, 60
    mov rdi, 0
    syscall


_printfInt:
    push rbp
    mov rdi, intFormat
    ; mov rsi, rax
    mov rax, 0
    call printf
    pop rbp
    ret

_printStr:
    push rbp
    mov rdi, strFormat
    mov rax, 0
    call printf
    pop rbp
    ret
