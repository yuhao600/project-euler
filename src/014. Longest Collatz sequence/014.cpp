#include <iostream>

int collatz(long long num);

int main()
{
    long long max_num = 1;
    long long max_collatz = 1;
    for (long long n = 1; n <= 1000000; ++n)
    {
        int result = collatz(n);
        if (result > max_collatz)
        {
            max_num = n;
            max_collatz = result;
        }
    }
    std::cout << max_num << std::endl;
}

int collatz(long long num)
{
    int i = 1;
    while (num != 1)
    {
        i += 1;
        if (num % 2 == 0)
        {
            num /= 2;
        }
        else
        {
            num = num * 3 + 1;
        }
    }
    return i;
}
