#include <iostream>

int main(void) {
    int sum100pow = 0;
    for (int i = 1; i <= 100; ++i) {
        sum100pow += i * i;
    }
    int sum100 = 100 * (100 + 1) / 2;
    std::cout << sum100 * sum100 - sum100pow << std::endl;
}
