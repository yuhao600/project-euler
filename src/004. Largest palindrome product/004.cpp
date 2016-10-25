#include <iostream>
#include <string>
using std::string;

bool is_palindrome(long long num);

int main()
{
    long long max = 0;
    for (int i = 999; i >= 100; --i)
    {
        for (int j = 999; j >= 100; --j)
        {
            long long product = i * j;
            if (is_palindrome(product))
            {
                if (product > max)
                {
                    max = product;
                }
            }
        }
    }
    std::cout << max << std::endl;
}

bool is_palindrome(long long num)
{
    string original = std::to_string(num);
    string reversed(original.rbegin(), original.rend());
    return original == reversed;
}
