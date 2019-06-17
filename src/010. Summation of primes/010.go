package main

import (
	"fmt"
	"math"
)

func main() {
	n := 2000000
	primes := genPrimes(n)
	sum := 0
	for i := 1; i < n; i++ {
		if (primes[i]) {
			sum += i
		}
	}
	fmt.Println(sum)
}

func genPrimes(n int) map[int]bool {
	// Sieve of Eratosthenes
	sieve := make(map[int]bool)
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
