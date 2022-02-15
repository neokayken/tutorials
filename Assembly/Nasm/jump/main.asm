%include "myInc.inc"

section .data
    text0 db "[-- Control-- ]", 10, 0
    text1 db "Label-1", 10, 0
    text2 db "Label-2", 10, 0
    text3 db "Label-3", 10, 0
    text4 db "Label-4", 10, 0
    text5 db "Label-5", 10, 0

    var1 dq 5 ;이것을 조작해서 여러 조건을 만들어 테스트
    var2 dq 5

section .bss
    ;no uninitialized data

section .text
    global _start

_start:
    nop ;just placeholder
    print text0
    ; mov rax, 25
    ; cmp rax, byte 20
    ; jbe _label3
    mov rax, qword [var1]
    cmp rax, qword [var2]
    je _label4
    mov qword [var2], rax ;jne 일때 실행
    nop
_label1:
    print text1
_label2:
    print text2
_label3:
    print text3
_label4:
    print text4
_label5:
    print text5

_last:
    ;terminate the program
    exitProgram



