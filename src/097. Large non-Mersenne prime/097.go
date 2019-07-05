package main

import (
	"fmt"
	"math/big"
)

func main() {
	var m big.Int
	m.Exp(big.NewInt(10), big.NewInt(10), nil)

	var result big.Int
	result.Exp(big.NewInt(2), big.NewInt(7830457), &m)
	result.Mul(big.NewInt(28433), &result)
	result.Add(&result, big.NewInt(1))
	result.Mod(&result, &m)

	fmt.Println(result.String())
}
