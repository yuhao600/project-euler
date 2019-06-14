package main

import (
	"fmt"
	"math/big"
)

func main () {
	factorial := *big.NewInt(1)
	for i := 1; i <= 100; i++ {
		factorial.Mul(&factorial, big.NewInt(int64(i)))
	}

	var sumDigits big.Int
	for factorial.Cmp(big.NewInt(0)) > 0 {
		var digit big.Int
		factorial.DivMod(&factorial, big.NewInt(10), &digit)
		sumDigits.Add(&sumDigits, &digit)
	}
	fmt.Println(sumDigits.String())
}
