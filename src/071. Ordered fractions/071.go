package main

import (
	"fmt"
	"math/big"
)

func main() {
	best := big.NewRat(0, 1)
	for d := int64(1); d <= int64(1000000); d++ {
		n := d * 3 / 7
		r := big.NewRat(n, d)
		if r.Cmp(big.NewRat(3, 7)) < 0 && r.Cmp(best) > 0 {
			best = r
		}
	}
	fmt.Println(best.Num())
}