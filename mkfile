</$objtype/mkfile
LIB=/$objtype/lib/libdumb.a

all: 
	$CC -c *.c
	ar vu $LIB *.o

nuke: 
	rm *.o
	rm $LIB

