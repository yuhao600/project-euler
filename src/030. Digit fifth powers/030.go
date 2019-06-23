package main

import "fmt"

func main() {
	sum := 0
	for i:= 2; i < 1000000; i++ {
		if digitFifthPowerSum(i) == i {
			sum += i
		}
	}
	fmt.Println(sum)
}

func digitFifthPowerSum(n int) int {
	sum := 0
	for n > 0 {
		d := n % 10
		sum += d * d * d * d * d
		n /= 10
	}
	return sum
}
