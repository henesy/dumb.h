CC=gcc
CFLAGS=-Wall -pedantic -c
AR=ar
ARFLAGS=cvq

all: 
	$(CC) $(CFLAGS) *.c
	$(AR) $(ARFLAGS) libdumb.a *.o

clean: 
	rm *.o
	rm *.a

install:
	cp libdumb.a /usr/lib
	cp dumb.h /usr/include

