#include <stdio.h>

int main()
{
    int sum100 = 100 * 101 / 2;
    int sum100pow = 0;
    for (int i = 1; i <= 100; ++i)
    {
        sum100pow = sum100pow + i * i;
    }
    printf("%d\n", sum100 * sum100 - sum100pow);
}
