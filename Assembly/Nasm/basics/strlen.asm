section .data
    text1 db "- Hello!", 10, 0
    text2 db "- My name is Kay", 10, 0
    text3 db "- We all friends! ", 10, 0
    text0 db 0
    textNewLine db 10,0

section .bss

%macro print 1
    mov rdi, %1
    call _strlen
    call _printString
%endmacro

section .text
    global _start

_start:
    nop ;just placeholder

    ;call subroutines
    mov rdi, text1
    call _strlen
    call _printString

    ;macro
    print text2
    print textNewLine
    print text3


    ;nothing happens if first byte is 0
    print text0

    nop
_last:
    ;terminate the program
    mov rax, 60
    mov rdi, 0
    syscall

;**************************************
;separate _strlen and _printString
_strlen:
    push rdi ;push rdi
    xor rcx, rcx

_str_next:
    cmp [rdi], byte 0
    jz  _str_null

    inc rcx
    inc rdi
    jmp _str_next

_str_null:
    pop rdi ;pop rdi (rdi recovered)
    ret

_printString:
    mov rsi, rdi
    mov rdx, rcx
    mov rax, 1
    mov rdi, 1 ;stdout
    syscall
    ret

