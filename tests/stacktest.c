#include <dumb.h>

void
main()
{
	Stack s = mkstack();
	int myint = 35;
	stackpush(&s, &myint);
	int thirtyfive = (int)stackpop(&s);
}
