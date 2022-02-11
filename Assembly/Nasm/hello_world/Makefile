all:
	nasm -f elf64 hello.asm -o hello.o -l example.lst
	ld -o hello hello.o
	./hello
