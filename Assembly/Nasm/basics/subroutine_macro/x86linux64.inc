;NASM 64 bit Assembly Language
;NASM Macro

;print string
%macro print 1
    mov rax, %1
    call _printString
%endmacro

;terminate program
%macro exitProgram 0
    print textExit
    mov rax, SYS_EXIT
    mov rdi, EXIT_SUCCESS
    syscall
%endmacro

;Subroutine

_printString:
    push rax
    mov rbx, 0 ;rbx as a count

_checkFirstByte:
    mov cl, [rax] ;to compare rax value to 0
    cmp cl, 0 ;compare cl to 0
    je _nullStringMsg ;if cl == 0 then first byte is null(0)

_printLoop:
    inc rax
    inc rbx
    mov cl, [rax]
    cmp cl, 0
    jne _printLoop

;syscall write
    mov rax, SYS_WRITE
    mov rdi, STDOUT
    pop rsi
    mov rdx, rbx
    syscall
    ret

;null string message and exit program
_nullStringMsg:
    mov rax, textNull
    call _printString
    exitProgram

;Linux system call ID
SYS_READ      equ   0
SYS_WRITE     equ   1
SYS_OPEN      equ   2
SYS_CLOSE     equ   3

SYS_EXIT      equ  60

;file descriptor
STDIN         equ   0
STDOUT        equ   1
STDERR        equ   2

;exit code

EXIT_SUCCESS  equ   0

;msg
