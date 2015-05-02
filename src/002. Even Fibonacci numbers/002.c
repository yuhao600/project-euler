#include <stdio.h>

int main(void)
{
    unsigned long long f1 = 1, f2 = 1;
	unsigned long long sum = 0;
	while (f1 < 4000000ULL)
	{
	    unsigned long long temp = f2;
		f2 = f1 + f2;
		f1 = temp;
		if (f1 % 2 == 0)
		{
		    sum += f1;
		}
	}
	printf("%llu\n", sum);
	return 0;
}

