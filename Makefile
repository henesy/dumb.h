CC=gcc
CFLAGS=-ggdb -Wall -c
AR=ar
ARFLAGS=cvq
MAKE=make

all: 
	$(CC) $(CFLAGS) *.c
	$(AR) $(ARFLAGS) libdumb.a *.o

clean: 
	rm *.o
	rm *.a

install: libdumb.a
	cp libdumb.a /usr/lib/libdumb.a
	cp dumb.h /usr/include/dumb.h

uninstall: 
	rm /usr/lib/libdumb.a
	rm /usr/include/dumb.h

rebuild: clean uninstall all install
	
