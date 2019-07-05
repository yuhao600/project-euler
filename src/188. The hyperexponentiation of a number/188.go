package main

import (
	"fmt"
	"math/big"
)

func main() {
	var m big.Int
	m.Exp(big.NewInt(10), big.NewInt(8), nil)
	fmt.Println(hyperExp(int64(1777), int64(1855), &m))
}

func hyperExp(a int64, b int64, m *big.Int) *big.Int {
	var result big.Int
	if b == 1 {
		result.Mod(big.NewInt(a), m)
		return &result
	} else {
		result.Exp(big.NewInt(a), hyperExp(a, b - 1, m), m)
		return &result
	}
}
