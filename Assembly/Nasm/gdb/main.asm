section .data

    ;dd for 4 bytes
    var1 dd 7772
    var2 dd 15700

    ;dq for 8 bytes
    var3 dq 124950 
    var4 dq 3750000

section .bss
    bssVar1: resb 4 ;reserves 4 bytes
    bssVar2: resb 4 ;reserves 4 bytes

section .text
    global _start

_start:

    mov [bssVar1], dword 1234567
    mov [bssVar2], dword 7654321

    ;terminate program
    mov rax, 60
    mov rdi, 0
    syscall
