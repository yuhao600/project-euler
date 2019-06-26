#include <iostream>
#include <vector>

std::vector<long long> factorial;
void init_factorial();
long long digit_fact(long long n);

int main() {
    init_factorial();
    // estimated upper limit, because 9! * 6 < 999999
    long long upper_limit = 999999;
    long long total = 0;
    for (long long n = 10; n <= upper_limit; ++n) {
        if (n == digit_fact(n)) {
            total += n;
        }
    }
    std::cout << total << std::endl;
}

void init_factorial() {
    factorial.push_back(1);
    for (long long d = 1; d <= 9; ++d) {
        factorial.push_back(factorial[d - 1] * d);
    }
}

long long digit_fact(long long n) {
    long long sum = 0;
    while (n > 0) {
        sum += factorial[n % 10];
        n /= 10;
    }
    return sum;
}
