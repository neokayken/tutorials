
%macro print 1
    mov rdi, %1
    call _strlen
    call _printString
%endmacro

%macro exitProgram 0
    mov rax, 60
    mov rdi, 0
    syscall
%endmacro

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
