#include <cmath>
#include <iostream>
#include <vector>

using std::vector;

vector<bool> gen_primes(long long n);

int main() {
    const long long upper_limit = 100000000LL;
	vector<bool> primes = gen_primes(upper_limit);

	vector<bool> prime_gens(upper_limit + 1, true);
    for (long long d = 1; d <= upper_limit; ++d) {
        for (long long k = d; k <= upper_limit / d; ++k) {
            if (k + d > upper_limit) {
                break;
            }
            if (!primes[k + d]) {
                prime_gens[k * d] = false;
            }
        }
    }

    long long sum = 0;
    for (long long i = 0; i < prime_gens.size(); ++i) {
        if (prime_gens[i]) {
            sum += i;
        }
    }
    std::cout << sum << std::endl;
    return 0;
}

vector<bool> gen_primes(long long n) {
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

    return sieve;
}
