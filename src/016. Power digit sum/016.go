package main

import (
	"fmt"
	"math/big"
)

func main() {
	var power big.Int
	power.Exp(big.NewInt(2), big.NewInt(1000), nil)
	sumDigits := 0
	for _, char := range(power.String()) {
		digit := char - '0'
		sumDigits += int(digit)
	}
	fmt.Println(sumDigits)
}
