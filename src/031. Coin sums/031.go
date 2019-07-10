package main

import "fmt"

func main() {
	coins := []int{1, 2, 5, 10, 20, 50, 100, 200}
	amount := 200
	ways := make([]int, amount + 1)
	ways[0] = 1
	for _, coin := range coins {
		for n := coin; n <= amount; n++ {
			ways[n] += ways[n - coin]
		}
	}
	fmt.Println(ways[amount])
}
