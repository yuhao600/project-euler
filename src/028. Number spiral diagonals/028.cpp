#include <iostream>

int main()
{
    int sum = 1;
    int n = 1;
    int step = 2;
    while (n < 1001 * 1001)
    {
        for (int i = 0; i < 4; ++i)
        {
            n += step;
            sum += n;
        }
        step += 2;
    }
    std::cout << sum << std::endl;
}
