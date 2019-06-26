#include <iostream>
#include <map>

int main(void) {
    std::map<int, int> fibonacci;
    fibonacci[1] = 1;
    fibonacci[2] = 2;
    int i = 2;

    while (fibonacci[i] < 4000000) {
        ++i;
        fibonacci[i] = fibonacci[i - 1] + fibonacci[i - 2];
    }

    long long sum = 0;
    for (const auto& i : fibonacci) {
        if (i.second % 2 == 0) {
            sum += i.second;
        }
    }
    std::cout << sum << std::endl;
}
