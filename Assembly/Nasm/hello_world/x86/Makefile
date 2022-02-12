all:
	nasm -f elf -g -F stabs main.asm -o main.o
	ld -m elf_i386 -o output main.o
	./output
