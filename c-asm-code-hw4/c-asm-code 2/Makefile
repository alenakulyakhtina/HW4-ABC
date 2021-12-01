CC=gcc
CFLAGS= -g -Wall
# how to : https://www.cs.swarthmore.edu/~newhall/unixhelp/howto_makefiles.html

SRCS = main.c container.c animal.c
OBJS = $(SRCS:.c=.o)

program: $(SRCS)
	$(CC) $(CFLAGS) -o program $(SRCS)

asmcode: $(SRCS)
	gcc -O -fverbose-asm -S $(SRCS)	

.PHONY: clean
clean: 
	rm -rf *.o program #*.s


#.PHONY: clean
#clean: 
#	rm -f 