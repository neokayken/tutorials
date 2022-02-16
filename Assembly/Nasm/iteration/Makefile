output: main.o
	ld main.o -o output

main.o: main.asm
	nasm -g -F dwarf -f elf64 main.asm -o main.o -l main.lst

clean:
	rm main.o main.lst output
