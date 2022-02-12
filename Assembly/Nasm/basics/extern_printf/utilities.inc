
;C library function
extern printf

;terminate program
%macro exit 0
    mov rax, SYS_EXIT
    mov rdi, EXIT_SUCCESS
    syscall
%endmacro


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
