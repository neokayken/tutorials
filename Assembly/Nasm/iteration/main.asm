%include "myInc.inc"

section .data
    text0 db "[-- Control-- ]", 10, 0

    myLoop db "- my Loop", 10, 0

    exitMSG db "*--- Program Closing...",10,0

    counter dq 5
    
section .bss
    ;no uninitialized data

section .text
    global _start

_start:
    nop ;just placeholder
    print text0

    xor rcx, rcx
    mov rcx, qword [counter]

    cmp rcx, 0
    jle _labelEnd ;counter less than or equal to 0

_loop:
    push rcx
    print myLoop
    pop rcx

    dec rcx ;counter
    cmp rcx, 0
    jne _loop
    nop
    exitProgram

_labelEnd:
    print exitMSG

_last:
    ;terminate the program
    exitProgram
