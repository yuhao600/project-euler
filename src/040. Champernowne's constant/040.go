package main

import (
	"fmt"
	"strconv"
)

func main() {
	s := ""
	n := 0
	for len(s) <= 1000000 {
		s += strconv.Itoa(n)
		n++
	}
	prod := 1
	for i := 1; i <= 1000000; i *= 10 {
		prod *= int(s[i]) - '0'
	}
	fmt.Println(prod)
}
