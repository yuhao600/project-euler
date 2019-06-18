package main

import (
	"fmt"
	"math/big"
)

func main() {
	const upperLimit = 100
	factorials := make([]*big.Int, upperLimit + 1)
	factorials[0] = big.NewInt(1)
	for i := 1; i <= upperLimit; i++ {
		var f big.Int
		f.Mul(factorials[i - 1], big.NewInt(int64(i)))
		factorials[i] = &f
	}

	count := 0
	for n := 1; n <= upperLimit; n++ {
		for r := 1; r <= n; r++ {
			var c big.Int
			c.Set(factorials[n])
			c.Div(&c, factorials[r])
			c.Div(&c, factorials[n - r])
			if c.Cmp(big.NewInt(1000000)) > 0 {
				count++
			}
		}
	}
	fmt.Println(count)
}