package main

import (
	"fmt"
	"math"
)

func main() {
	count := 0
	for n := 1; ; n++ {
		start := int(math.Ceil(math.Pow(math.Pow10(n - 1), (1.0 / float64(n)))))
		count += 9 - start + 1
		if start > 9 {
			break
		}
	}
	fmt.Println(count)
}
