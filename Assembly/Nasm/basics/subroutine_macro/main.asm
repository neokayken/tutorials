%include "x86linux64.inc"

section .data

    text0: db 0 ;null text
    textWelcome: db 10,"[Nasm x86_64 Assembly Language]",10,10,0
    text1: db "1. Hello World!",10,0

    ;first byte is null
    textNull: db "*-- Sorry, null text...",10,0
    ;exit message
    textExit: db 10,"[Closing Program...]",10,10,0

section .text
    global _start

_start:

    print textWelcome
    print text1

;terminate the program for sure
_last:
    exitProgram
