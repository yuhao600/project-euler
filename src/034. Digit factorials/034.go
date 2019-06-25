package main

import "fmt"

var factorials [10]int

func init() {
	factorials[0] = 1
	for i := 1; i <= 9; i++ {
		factorials[i] = factorials[i - 1] * i
	}
}

func main() {
	// estimated upper limist, because 9! * 6 < 999999
	const upperLimit = 999999
	sum := 0
	for i := 10; i <= upperLimit; i++ {
		if i == digitFactorial(i) {
			sum += i
		}
	}
	fmt.Println(sum)
}

func digitFactorial(n int) int {
	sum := 0
	for n > 0 {
		sum += factorials[n % 10]
		n /= 10
	}
	return sum
}
