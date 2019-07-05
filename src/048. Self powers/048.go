package main

import (
	"fmt"
	"math/big"
)

func main() {
	var m big.Int
	m.Exp(big.NewInt(10), big.NewInt(10), nil)

	var sum10digit big.Int
	for i := int64(1); i <= int64(1000); i++ {
		var power big.Int
		power.Exp(big.NewInt(i), big.NewInt(i), &m)
		sum10digit.Add(&sum10digit, &power)
		sum10digit.Mod(&sum10digit, &m)
	}
	fmt.Println(sum10digit.String())
}