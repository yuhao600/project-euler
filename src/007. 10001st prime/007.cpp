#include <cmath>
#include <iostream>
#include <vector>

using std::vector;

vector<long long> gen_primes(long long n);

int main() {
    vector<long long> primes = gen_primes(200000);
    // index starts from 0
    std::cout << primes[10000] << std::endl;
    return 0;
}

vector<long long> gen_primes(long long n) {
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
    for (long long i = 0; i <= sieve.size(); ++i) {
        if (sieve[i]) {
            primes.push_back(i);
        }
    }
    return primes;
}
