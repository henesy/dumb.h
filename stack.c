#include "dumb.h"

Stack
mkstack(void)
{
	Stack s;
	s.size=0;
	s.top=nil;
	return s;
}

void
stackpush(Stack * s, void * data)
{
	StackNode node;
	node.data = data;
	node.below = s->top;
	s->top = &node;
	s->size++;
}

void *
stackpop(Stack * s)
{
	if(s->size > 0){
		StackNode * old = s->top;
		s->top = s->top->below;
		free(old);
		s->size--;
		return s->top->data;
	}else{
		return nil;
	}
}
