# dumb.h
Utilitarian library from SVI space

Builds on:

* Slackware64
* Plan 9
* MinGW

## To Build:

### Windows (MinGW)
`make`

### Linux
`make`

### Plan 9
`mk`

## To Install:

### Windows (MinGW)
`make wininstall`

### Linux
`make install`

### Plan 9
`mk install`

## To Test:

`cd tests`

### Windows (MinGW)
`./winall.sh`

### Linux
`./all.sh`

### Plan 9
`all.rc`

## To Use:

`#include <dumb.h>`

### Windows (MinGW)
Assuming `gcc`

Use the arguments: `-L'C:/mingw/include' -L'C:/mingw/lib' -ldumb`

### Linux
Assuming `gcc`

Use the arguments `-L/usr/include -L/usr/lib -ldumb`

### Plan 9
No extraneous arguments should be necessary.

Tested with `6c` and `6l` on Plan 9Front.

## Notes:

The `tests/` defaults assume an `amd64` systype/objtype.

Testing via MinGW was in Powershell under `bash`
