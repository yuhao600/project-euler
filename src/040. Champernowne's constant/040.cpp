#include <iostream>
#include <string>

int main() {
    std::string d;
    int i = 0;
    do {
        d += std::to_string(i);
        ++i;
    } while (d.size() <= 1000000);
    int product = 1;
    for (i = 1; i <= 1000000; i *= 10) {
        product *= d[i] - '0';
    }
    std::cout << product << std::endl;
}
