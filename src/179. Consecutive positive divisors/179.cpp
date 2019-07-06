#include <cmath>
#include <iostream>
#include <set>
#include <vector>

using std::set;
using std::vector;

static set<long long> gen_primes(long long n);
static long long max_exp(long long n, long long p);

int main() {
    const long long upper_limit = 10000000LL;
    set<long long> primes = gen_primes(upper_limit / 2);

    vector<int> divisor_num(upper_limit);
    for (long long i = 0; i < upper_limit; ++i) {
        divisor_num[i] = 1;
    }

    for (long long p : primes) {
        long long times = 1;
        do {
            long long n = p * times;
            divisor_num[n] *= max_exp(n, p) + 1;
            ++times;
        } while (p * times < upper_limit);
    }

    int count = 0;
    int prev_divisor_num = 1;
    for (long long n = 2; n < upper_limit; ++n) {
        if (divisor_num[n] == prev_divisor_num) {
            ++count;
        }
        prev_divisor_num = divisor_num[n];
    }

    std::cout << count << std::endl;
}

static long long max_exp(long long n, long long p) {
    long long exp = 0;
    while (n % p == 0) {
        ++exp;
        n /= p;
    }
    return exp;
}

static set<long long> gen_primes(long long n) {
    // Sieve of Eratosthenes
    vector<bool> sieve(n + 1);
    sieve[0] = false; // so that the index starts from 1
    for (long long i = 1; i <= n; ++i) {
        if (i % 2 == 0) {
            sieve[i] = false;
        } else {
            sieve[i] = true;
        }
    }

    sieve[1] = false; // 1 is not prime
	sieve[2] = true; // 2 is the only even prime
	
	long long factor = 3;
    while (factor <= int(std::sqrt(n))) {
        for (long long i = factor * factor; i < n; i += factor) {
            sieve[i] = false;
        }
        do {
            factor += 2;
        } while (sieve[factor] == false);
    }

    set<long long> primes;
    for (long long i = 0; i < sieve.size(); ++i) {
        if (sieve[i]) {
            primes.insert(i);
        }
    }
    return primes;
}
