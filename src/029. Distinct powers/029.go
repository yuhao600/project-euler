package main

import (
	"fmt"
	"math/big"
)

func main() {
	result := make(map[string]bool)
	for a := int64(2); a <= 100; a++ {
		for b := int64(2); b <= 100; b++ {
			var power big.Int
			power.Exp(big.NewInt(a), big.NewInt(b), nil)
			result[power.String()] = true
		}
	}
	fmt.Println(len(result))
}
