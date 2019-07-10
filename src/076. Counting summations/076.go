package main

import "fmt"

func main() {
	amount := 100
	coins := make([]int, amount - 1)
	for i := 0; i < len(coins); i++ {
		coins[i] = i + 1
	}
	ways := make([]int, amount + 1)
	ways[0] = 1
	for _, coin := range coins {
		for n := coin; n <= amount; n++ {
			ways[n] += ways[n - coin]
		}
	}
	fmt.Println(ways[amount])
}
