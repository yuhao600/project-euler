#include <iostream>
#include <unordered_set>
#include <vector>

std::vector<long long> factorial;
void init_factorial();
long long digit_fact(long long n);

int main()
{
    init_factorial();
    int counter = 0;
    for (long long n = 1; n <= 1000000LL; ++n)
    {
        long long m = n;
        std::unordered_set<long long> sequence;
        do
        {
            sequence.insert(m);
            m = digit_fact(m);
        } while (sequence.find(m) == sequence.end());
        if (sequence.size() == 60)
        {
            ++counter;
        }
    }
    std::cout << counter << std::endl;
}

void init_factorial()
{
    factorial.push_back(1);
    for (long long d = 1; d <= 9; ++d)
    {
        factorial.push_back(factorial[d - 1] * d);
    }
}

long long digit_fact(long long n)
{
    long long sum = 0;
    while (n > 0)
    {
        sum += factorial[n % 10];
        n /= 10;
    }
    return sum;
}
