package main

import "fmt"

func main() {	
	fmt.Println(maxPrimeFactor(600851475143))
}

func maxPrimeFactor(num int) int {
	// 2 is the only even prime
	for num % 2 == 0 {
		num /= 2
	}

	max := 2
	for factor := 3; num > 1; factor += 2 {
		for num % factor == 0 {
			num /= factor
			max = factor
		}
	}
	return max
}