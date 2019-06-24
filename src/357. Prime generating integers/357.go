package main

import (
	"fmt"
	"math"
)

const upper_limit = 100000000
var primes = genPrimes(100000000)

func main() {
	primeGens := make([]bool, upper_limit + 1)
	for i := range primeGens {
		primeGens[i] = true
	}

	for d := 1; d <= upper_limit; d++ {
		for k := d; k <= upper_limit / d; k++ {
			if k + d > upper_limit {
				break
			}
			if !primes[k + d] {
				primeGens[k * d] = false
			}
		}
	}

	sum := 0
	for i, v := range primeGens {
		if v {
			sum += i
		}
	}
	fmt.Println(sum)
}

func genPrimes(n int) []bool {
	// Sieve of Eratosthenes
	sieve := make([]bool, n + 1)
	sieve[0] = false // so that the index starts from 1
	for i := 1; i < n; i++ {
		if i % 2 == 0 {
			sieve[i] = false
		} else {
			sieve[i] = true
		}
	}
	sieve[1] = false // 1 is not prime
	sieve[2] = true // 2 is the only even prime
	
	factor := 3
	for factor <= int(math.Sqrt(float64(n))) {
		for i := factor * factor; i < n; i += factor {
			sieve[i] = false
		}
		factor += 2
		for sieve[factor] == false {
			factor += 2
		}
	}
	return sieve
}
