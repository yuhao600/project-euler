#include <iostream>
#include <vector>

int main()
{
    std::vector<std::string> n(1001);
    //n[0] = "zero";
    n[1] = "one";
    n[2] = "two";
    n[3] = "three";
    n[4] = "four";
    n[5] = "five";
    n[6] = "six";
    n[7] = "seven";
    n[8] = "eight";
    n[9] = "nine";
    n[10] = "ten";
    n[11] = "eleven";
    n[12] = "twelve";
    n[13] = "thirteen";
    n[14] = "fourteen";
    n[15] = "fifteen";
    n[16] = "sixteen";
    n[17] = "seventeen";
    n[18] = "eighteen";
    n[19] = "nineteen";

    n[20] = "twenty";
    n[30] = "thirty";
    n[40] = "forty";
    n[50] = "fifty";
    n[60] = "sixty";
    n[70] = "seventy";
    n[80] = "eighty";
    n[90] = "ninety";

    // generate 21-99
    for (int b = 2; b <= 9; ++b)
    {
        for (int a = 1; a <= 9; ++a)
        {
            n[b * 10 + a] = n[b * 10] + n[a];
        }
    }

    for (int c = 1; c <= 9; ++c)
    {
        n[c * 100] = n[c] + "hundred";
        for (int ba = 1; ba <= 99; ++ba)
        {
            n[c * 100 + ba] = n[c * 100] + "and" + n[ba];
        }
    }

    n[1000] = n[1] + "thousand";

    int sum = 0;
    for (std::string s : n)
    {
        sum += s.size();
    }

    std::cout << sum << std::endl;
}
