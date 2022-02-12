section .data
    msg db "Hello World! x86",10
    len equ $-msg

%define syscall_x86 int 0x80

section .text

    global _start

    _start:
        nop
        mov eax, 4 ;syscall x86
        mov ebx, 1 ;stdout
        mov ecx, msg
        mov edx, len
        syscall_x86

        mov eax, 1
        mov ebx, 0
        syscall_x86
