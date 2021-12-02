# how to : https://www.cs.swarthmore.edu/~newhall/unixhelp/howto_makefiles.html

SRCS_ASM = main.asm container.asm animal.asm
OBJS = $(SRCS_ASM:.asm=.o)

link: $(OBJS)
	gcc -o program_asm main.o container.o animal.o -no-pie

objects: $(SRCS_ASM)
	nasm -f elf64 -g -F dwarf main.asm
	nasm -f elf64 -g -F dwarf container.asm
	nasm -f elf64 -g -F dwarf animal.asm

.PHONY: clean
clean: 
	rm -rf *.o program_asm