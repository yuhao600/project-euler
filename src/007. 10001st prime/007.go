package main

import (
	"fmt"
	"math"
)

func main() {
	// Sieve of Eratosthenes
	sieve := make(map[int]bool)
	for i := 1; i < 200000; i++ {
		sieve[i] = true
	}
	sieve[1] = false // 1 is not prime

	factor := 2
	for factor <= int(math.Sqrt(float64(len(sieve)))) {
		for i:= factor * 2; i < len(sieve); i += factor {
			sieve[i] = false
		}
		factor++
		for sieve[factor] == false {
			factor++
		}
	}

	count := 0
	for i := 1; i < len(sieve); i++ {
		if sieve[i] == true {
			count++
		}
		if count == 10001 {
			fmt.Println(i)
			break
		}
	}
}
