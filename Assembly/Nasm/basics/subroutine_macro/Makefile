all:
	nasm -g -F dwarf -f elf64 main.asm -o main.o -l main_list.lst
	ld -g -o main main.o
	./main
