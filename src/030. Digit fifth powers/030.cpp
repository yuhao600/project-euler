#include <iostream>

static int digit_fifth_power_sum(int n);

int main() {
    int sum = 0;
    for (int i = 2; i < 1000000; i++) {
        if (digit_fifth_power_sum(i) == i) {
            sum += i;
        }
    }
    std::cout << sum << std::endl;
}

static int digit_fifth_power_sum(int n) {
    int sum = 0;
    while (n > 0) {
        int d = n % 10;
        sum += d * d * d * d * d;
        n /= 10;
    }
    return sum;
}
