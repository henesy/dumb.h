#ifndef DUMB_H
#define DUMB_H

/* Who cares about C99 */
#define true 1
#define false 0
typedef int bool;

#define print(format, ...) fprintf(stdout, format, ##__VA_ARGS__)

#endif
