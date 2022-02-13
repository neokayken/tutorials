section .data
    var1 dd 21
    var2 dd 7
    
section .bss
    result resd 1 ;result

section .text
    global _start

_start:
    nop ;do nothing - placeholder
    mov eax, [var1] ;eax = [var1] = 21
    add eax, [var2] ;eax = 21 + 7(=[var2])
    mov [result], eax ;[result] = eax = 28
    nop

_last:
    ;terminate program
    mov rax, 60
    mov rdi, 0
    syscall
