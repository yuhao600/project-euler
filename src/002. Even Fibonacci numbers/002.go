package main

import "fmt"

func main () {
	f := make(map[int]int)
	f[1] = 1
	f[2] = 1

	for i := 3; ; i++ {
		f[i] = f[i - 2] + f[i - 1]
		if f[i] > 4000000 {
			break
		}
	}

	sum := 0
	for _, v := range f {
		if v % 2 == 0 {
			sum += v
		}
	}

	fmt.Println(sum)
}
