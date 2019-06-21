package main

import "fmt"

var result1 = make(map[int]bool)
var result89 = make(map[int]bool)

func main() {
	counter := 0
	for i := 1; i <= 10000000; i++ {
		if (chain(i) == 89) {
			counter++
		}
	}
	fmt.Println(counter)
}

func chain(n int) int {
	chainResult := make([]int, 0)
	for {
		if n == 1 || result1[n] {
			for _, r := range chainResult {
				result1[r] = true
			}
			return 1
		}
		if n == 89 || result89[n] {
			for _, r := range chainResult {
				result89[r] = true
			}
			return 89
		}
		chainResult = append(chainResult, n)
		n = digitSquare(n)
	}
}

func digitSquare(n int) int {
	sum := 0
	for n > 0 {
		sum += (n % 10) * (n % 10)
		n /= 10
	}
	return sum
}
