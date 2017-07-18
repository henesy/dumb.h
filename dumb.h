#ifndef DUMB_H
#define DUMB_H

#ifdef __unix__
#include <stdio.h>
#include <stdlib.h>
#define nil ((void*)0)
#define print(format, ...) fprintf(stdout, format, ##__VA_ARGS__)
#else
#include <u.h>
#include <libc.h>
#pragma lib "libdumb.a"
#endif

/* avoid using u.h, assume amd64 */
typedef unsigned long long uint64;

/* who cares about C99 */
#define true 1
#define false 0
typedef int bool;

/* stack.c */
typedef struct Stack Stack;
typedef struct StackNode StackNode;

Stack mkstack(void);
void stackpush(Stack *, void *);
void * stackpop(Stack *);

struct StackNode
{
	StackNode * below;
	void * data;
};

struct Stack
{
	StackNode * top;
	uint64 size;
};

#endif
