#include <iostream>

long long max_prime_factor(long long num);

int main(void) {  
    std::cout << max_prime_factor(600851475143LL) << std::endl;
    return 0;
}

long long max_prime_factor(long long num) {
    // 2 is the only even prime number
    while (num % 2 == 0) {
        num /= 2;
    }

    long long max = 2;
    long long factor = 3;
    while (num > 1) {
        while (num % factor == 0) {
            num /= factor;
            max = factor;
        }
        factor += 2;
    }
    return max;
}
