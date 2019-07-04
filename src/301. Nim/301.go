package main

import "fmt"

func main() {
	count := 0
	for n := uint32(1); n <= uint32(1) << 30; n++ {
		if nimWin(n) {
			count++
		}
	}
	fmt.Println(count)
}

// https://en.wikipedia.org/wiki/Nim#Mathematical_theory
func nimWin(n uint32) bool {
	return n ^ (n * 2) ^ (n * 3) == 0
}
