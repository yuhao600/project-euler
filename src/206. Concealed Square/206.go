package main

import (
	"fmt"
	"math"
	"regexp"
	"strconv"
)

func main() {
	r, _ := regexp.Compile("1\\d2\\d3\\d4\\d5\\d6\\d7\\d8\\d9")
	for i := int64(math.Sqrt(10203040506070809)); i < int64(math.Sqrt(19293949596979899)); i++ {
		if i % 10 == 3 || i % 10 == 7 {
			s := strconv.FormatInt(i * i, 10)
			m := r.MatchString(s)
			if m {
				fmt.Println(i * 10)
				break
			}
		}
	}
}
