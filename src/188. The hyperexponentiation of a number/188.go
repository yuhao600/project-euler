package main

import (
	"fmt"
	"math/big"
)

func main() {
	var divisor big.Int
	divisor.Exp(big.NewInt(10), big.NewInt(8), nil)
	fmt.Println(hyperExp(int64(1777), int64(1855), &divisor))
}

func hyperExp(a int64, b int64, divisor *big.Int) *big.Int {
	var result big.Int
	if b == 1 {
		result.Mod(big.NewInt(a), divisor)
		return &result
	} else {
		result.Exp(big.NewInt(a), hyperExp(a, b - 1, divisor), divisor)
		return &result
	}
}
