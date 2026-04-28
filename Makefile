CC=gcc
CFLAGS=-Iinclude

all: hello

hello: hello.o print.o
	$(CC) hello.o print.o -o hello

hello.o: src/hello.c include/print.h
	$(CC) $(CFLAGS) -c src/hello.c

print.o: src/print.c include/print.h
	$(CC) $(CFLAGS) -c src/print.c

clean:
	rm -f *.o hello
