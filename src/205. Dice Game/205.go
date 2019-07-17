package main

import(
	"fmt"
	"math"
	"math/big"
)

func main() {
	pyramidal := roll([]int{1, 2, 3, 4}, 9)
	cubic := roll([]int{1, 2, 3, 4, 5, 6}, 6)

	pyramidal_pr := make(map[int]big.Rat)
	for k, v := range pyramidal {
		pyramidal_pr[k] = *big.NewRat(int64(v), int64(math.Pow(4, 9)))
	}

	cubic_pr := make(map[int]big.Rat)
	for k, v := range cubic {
		cubic_pr[k] = *big.NewRat(int64(v), int64(math.Pow(6, 6)))
	}
	
	var beats_pr big.Rat
	for p, p_pr := range pyramidal_pr {
		for c, c_pr := range cubic_pr {
			if p > c {
				var pc_pr big.Rat
				pc_pr.Mul(&p_pr, &c_pr)
				beats_pr.Add(&beats_pr, &pc_pr)
			}
		}
	}
	fmt.Println(beats_pr.FloatString(7))
}

func roll(dices []int, times int) map[int]int {
	counter := make(map[int]int)
	for _, d := range dices {
		counter[d] = 1
	}
	for t := 1; t <= times - 1; t++ {
		acc := make(map[int]int)
		for k, v := range counter {
			for _, d := range dices {
				acc[k + d] += v
			}
		}
		counter = acc
	}
	return counter
}
