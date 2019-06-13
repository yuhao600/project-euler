package main

import "fmt"

func main() {
	num := 600851475143
	for num % 2 == 0 {
		num /= 2
	}

	factor := 3
	max := 2
	for num > 1 {
		for num % factor == 0 {
			num /= factor
			max = factor
		}
		factor += 2
	}
	fmt.Println(max)
}