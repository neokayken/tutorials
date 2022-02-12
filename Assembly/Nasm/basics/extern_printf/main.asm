%include "utilities.inc"

%macro printString 1
    mov rax, %1
    call _printfString
%endmacro

%macro printInt 1
    mov rax, %1
    call _printfInt
%endmacro

section .data

    text1: db "[NASM Assembly Language]",0
    text2: db "1. call printf function",0

    stringFormat: db "%s",10,0
    integerFormat: db "- value: (%ld)",10,0

section .text
    global main
main:
    printString text1
    printString text2

    printInt 157
    printInt 9567

_last:
    exit

_printfString:
    push rbp
    mov rdi, stringFormat
    mov rsi, rax
    mov rax, 0
    call printf wrt ..plt
    pop rbp
    ret

_printfInt:
    push rbp
    mov rdi, integerFormat
    mov rsi, rax
    mov rax, 0
    call printf wrt ..plt
    pop rbp
    ret

