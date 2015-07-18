#include <stdio.h>

int main(void)
{
    unsigned long long num = 600851475143;
    unsigned long long max = 2;

    while (num % 2 == 0)
        num /= 2;

    unsigned long long factor = 3;
    while (num > 1)
    {
        while (num % factor == 0)
        {
            num /= factor;
            max = factor;
        }
        factor += 2;
    }
    printf("%llu\n", max);
    return 0;
}
