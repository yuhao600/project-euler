package main

import "fmt"

func main() {
	triangle := 0
	i := 1
	for {
		triangle += i
		if numOfFactors(triangle) > 500 {
			fmt.Println(triangle)
			break
		}
		i++
	}
}

func numOfFactors(num int) int {
	n := 0
	factor := 1
	for factor * factor < num {
		if num % factor == 0 {
			n += 1
		}
		factor += 1
	}
	if factor * factor > num {
		return n * 2
	} else {
		// perfect square
		return n * 2 + 1
	}
}
