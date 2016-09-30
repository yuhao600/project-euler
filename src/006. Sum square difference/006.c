#include <stdio.h>

int main()
{
    int sum100pow = 0;
    for (int i = 1; i <= 100; ++i)
    {
        sum100pow += i * i;
    }
    int sum100 = 100 * (100 + 1) / 2;
    printf("%d\n", sum100 * sum100 - sum100pow);
}
