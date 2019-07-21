#include <cmath>
#include <iostream>

int main() {
    int count = 0;
    for (int n = 1; ; ++n) {
        int start = static_cast<int>(std::ceil(std::pow(std::pow(10, n - 1), (1.0 / static_cast<double>(n)))));
        count += 9 - start + 1;
        if (start > 9) {
            break;
        }
    }
    std::cout << count << std::endl;
}
