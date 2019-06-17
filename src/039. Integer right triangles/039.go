package main

import (
	"fmt"
	"math"
)

func main() {
	counter := make(map[int]int)
	for a := 1; a <= 1000 / 3; a++ {
		for b := a; b <= 1000 / 2; b++ {
			c := math.Sqrt(float64(a) * float64(a) + float64(b) * float64(b))
			if c == float64(int(c)) {
				p := a + b + int(c)
				if p > 1000 {
					break
				}
				counter[p]++
			}
		}
	}

	maxP, maxCount := 0, 0
	for p, count := range counter {
		if count > maxCount {
			maxP, maxCount = p, count
		}
	}
	fmt.Println(maxP)
}
