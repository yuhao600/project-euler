#include <cmath>
#include <iostream>
#include <set>
#include <vector>

using std::set;
using std::vector;

set<long long> gen_hammings(long long upper_limit, int hamming_type);
set<long long> gen_primes(long long n);

int main() {
    const long long upper_limit = 1000000000LL;
    set<long long> hammings = gen_hammings(upper_limit, 100);
    std::cout << hammings.size() << std::endl;
    return 0;
}

set<long long> gen_hammings(long long upper_limit, int hamming_type) {
    set<long long> primes = gen_primes(hamming_type);
    set<long long> hammings{1};
    for (auto p : primes) {
        set<long long> temp(hammings);
        for (auto h : hammings) {
            while (h * p <= upper_limit) {
                temp.insert(h * p);
                h *= p;
            }
        }
        hammings = temp;
    }
    return hammings;
}

set<long long> gen_primes(long long n) {
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
