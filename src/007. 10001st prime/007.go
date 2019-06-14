package main

import (
	"fmt"
	"math"
)

func main() {
	primes := genPrimes(200000)
	count := 0
	for i := 1; i < len(primes); i++ {
		if primes[i] == true {
			count++
		}
		if count == 10001 {
			fmt.Println(i)
			break
		}
	}
}

func genPrimes(n int) map[int]bool {
	// Sieve of Eratosthenes
	sieve := make(map[int]bool)
	for i := 1; i < n; i++ {
		sieve[i] = true
	}
	sieve[1] = false // 1 is not prime
	
	factor := 2
	for factor <= int(math.Sqrt(float64(n))) {
		for i:= factor * 2; i < n; i += factor {
			sieve[i] = false
		}
		factor++
		for sieve[factor] == false {
			factor++
		}
	}
	return sieve
}
