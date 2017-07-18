</$objtype/mkfile
LIB=/$objtype/lib
HDR=/$objtype/include

all: stack.c
	$CC -c $prereq
	ar vu libdumb.a *.$O

nuke: 
	rm *.$O
	rm $LIB/libdumb.a
	rm $HDR/dumb.h
	rm libdumb.a

install: libdumb.a
	cp libdumb.a $LIB
	cp dumb.h $HDR

tests: install tests/stacktest.c
	$CC $prereq

man: 
	cp ./man/dumb.3 /sys/man/dumb

