#include <algorithm>
#include <iostream>
#include <vector>

using std::vector;

static vector<long long> gen_primes(long long n);

int main() {
    const long long upper_limit = 100000000LL;
    vector<long long> primes = gen_primes(upper_limit);
    long long count = 0;
    for (auto iter = primes.begin(); iter != primes.end(); ++iter) {
        long long upper_bound = upper_limit / *iter;
        auto upper_iter = std::upper_bound(iter, primes.end(), upper_bound);
        if (upper_iter == primes.end()) {
            break;
        }
        count += upper_iter - iter;
    }
    std::cout << count << std::endl;
}

static vector<long long> gen_primes(long long n) {
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

    vector<long long> primes;
    for (long long i = 0; i < sieve.size(); ++i) {
        if (sieve[i]) {
            primes.push_back(i);
        }
    }
    return primes;
}
