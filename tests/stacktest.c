#include <dumb.h>
#include <stdio.h>

void
main()
{
	Stack s = mkstack();
	int myint = 35;
	int yourint = 42;

	printf("Size 0: %d\n", (int)s.size);
	stackpush(&s, &myint);
	stackpush(&s, &yourint);
	printf("Size 2: %d\n", (int)s.size);

	int thirtyfive = *(int*)stackpop(&s);
	printf("Return 42: %d\n", thirtyfive);
	int fortytwo = *(int*)stackpop(&s);
	printf("Return 35: %d\n", fortytwo);
}

