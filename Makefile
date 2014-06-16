# Andy Sayler
# Make Demo
# Summer 2014

CC = gcc
CFLAGS = -c -Wall -Wextra
LFLAGS = -Wall -Wextra

.PHONY: all clean

all: hello

hello: main.o hello.o
	$(CC) $(LFLAGS) $^ -o $@

main.o: main.c hello.h
	$(CC) $(CFLAGS) $< -o $@

hello.o: hello.c hello.h
	$(CC) $(CFLAGS) $< -o $@

clean:
	$(RM) *.o
	$(RM) hello
	$(RM) *~
