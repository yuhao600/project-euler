#include <iostream>
#include <unordered_set>
#include <vector>

int chain(long long n);

std::unordered_set<long long> result_89;
std::unordered_set<long long> result_1;

int main()
{
    int counter = 0;
    for (long long i = 1; i <= 10000000; ++i)
    {
        if (chain(i) == 89)
        {
            ++counter;
        }
    }
    std::cout << counter << std::endl;
}

long long digit_square(long long n)
{
    long long sum = 0;
    while (n > 0)
    {
        sum += (n % 10) * (n % 10);
        n /= 10;
    }
    return sum;
}

int chain(long long n)
{
    std::vector<long long> chain_result;
    while (true) 
    {
        bool found_in_1 = result_1.find(n) != result_1.end();
        if (n == 1 || found_in_1)
        {
            result_1.insert(chain_result.begin(), chain_result.end());
            return 1;
        }
        bool found_in_89 = result_89.find(n) != result_89.end();
        if (n == 89 || found_in_89)
        {
            result_89.insert(chain_result.begin(), chain_result.end());
            return 89;
        }
        chain_result.push_back(n);
        n = digit_square(n);
    }
}
