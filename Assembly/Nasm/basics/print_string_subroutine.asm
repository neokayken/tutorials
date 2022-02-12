section .data

    text0: db 0 ;null text
    textWelcome: db "[Nasm x86_64 Assembly Language]",10,0

    text1: db "1. Hello World!",10,0
    text2: db "2. Nasm Assembly",10,0
    
    textKor1: db "-> 한글 텍스트",10,0
    textKor2: db "-> 출력 테스트",10,0
    
    textNull: db "*-- Sorry, null text...",10,0

    textMacro1: db "-> Macro Test...1",10,0
    textMacro2: db "-> Macro Test...2",10,0


;static constants

    SYS_write    equ  1
    FD_write     equ  1

    EXIT_SUCESS  equ  0
    SYS_exit     equ 60

;Nasm Macro
%macro print 1
    mov rax, %1
    call _printString
%endmacro

section .text
    global _start

_start:

    mov rax, textWelcome
    call _printString

    mov rax, text1
    call _printString

    mov rax, text2
    call _printString

    mov rax, textKor1
    call _printString

    mov rax, textKor2
    call _printString

    ;Nasm Macro
    print textMacro1
    print textMacro2

    ;null text message
    mov rax, text0
    call _printString

;terminate program
_last:
    mov rax, SYS_exit
    mov rdi, EXIT_SUCESS
    syscall


;**************************************************
;subroutines

;string at rax
_printString:
    push rax
    mov rbx, 0 ;rbx as a count

_checkFirstByte:
    mov cl, [rax] ;cl to compare rax value to 0
    cmp cl, 0 ;compare cl to 0
    je _printNull

_printLoop:
    inc rax
    inc rbx
    mov cl, [rax]
    cmp cl, 0
    jne _printLoop

;syscall write
    mov rax, SYS_write
    mov rdi, FD_write
    pop rsi
    mov rdx, rbx
    syscall
    ret

;if first byte is null (null means 0)
_printNull:
    mov rax, textNull
    call _printString
    call _last
