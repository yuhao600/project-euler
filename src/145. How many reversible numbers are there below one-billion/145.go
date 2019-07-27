package main

import (
	"fmt"
	"math"
)

func main() {
	count := 0
	for d := 1; d <= 9; d++ {
		count += reversible_count(d)
	}
	fmt.Println(count)
}

func reversible_count(d int) int {
	switch d % 4 {
	case 1:
		// no solutions
		return 0
	case 0:
		fallthrough
	case 2:
		// 2 digits: no carry over, and sum of two digits is odd
		// 2 digits => 20
		// 4 digits: outer pair is the same as 2 digits
		//           inner pair has 30 possibilities because 0 is allowed
		return 20 * int(math.Pow(30 , float64(d / 2 - 1)))
	case 3:
		// the first and third digit must be odd and gives carry over: 20 possiblilities
		// middle digit: add to itself, no carry over: 5 possibilities
		// 4 digits: same as before, no leading zero
		return 100 * int(math.Pow(500, float64(d - 3) / 4))
	}
	return 0
}
