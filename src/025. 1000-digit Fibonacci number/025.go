package main

import (
	"fmt"
	"math/big"
)

func main() {
	index := 1
	fa, fb := big.NewInt(1), big.NewInt(1)
	var upperLimit big.Int
	upperLimit.Exp(big.NewInt(10), big.NewInt(999), nil)
	for fa.Cmp(&upperLimit) < 0 {
		var temp big.Int
		temp.Set(fb)
		fb.Add(fa, fb)
		fa.Set(&temp)
		index++
	}
	fmt.Println(index)
}
