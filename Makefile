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

wininstall:
	cp libdumb.a 'C:/mingw/lib/libdumb.a'
	cp dumb.h 'C:/mingw/include/dumb.h'

winuninstall:
	rm 'C:/mingw/lib/libdumb.a'
	rm 'C:/mingw/include/dumb.h'

rebuild: clean uninstall all install

winrebuild: clean winuninstall all wininstall

man:
	gzip -c ./man/dumb.3 > /usr/man/man3/dumb.3.gz

