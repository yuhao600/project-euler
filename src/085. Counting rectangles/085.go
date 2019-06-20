package main

import "fmt"

type Rectangle struct {
	m, n int
}

func (r *Rectangle) subRectNum() int {
	return r.m * r.n * (r.m + 1) * (r.n + 1) / 4
}

func main() {
	closest := &Rectangle{m : 0, n : 0}
	for m := 1; m <= 2000; m++ {
		for n := m; n <= 2000; n++ {
			rect := Rectangle{m, n}
			closest = subRectNumCloseTo2Million(closest, &rect)
		}
	}
	fmt.Println(closest.m * closest.n)
}

func subRectNumCloseTo2Million(r1 *Rectangle, r2 *Rectangle) *Rectangle {
	subRectNum1 := r1.subRectNum
	diff1 := subRectNum1() - 2000000
	if diff1 < 0 {
		diff1 = -diff1
	}
	subRectNum2 := r2.subRectNum
	diff2 := subRectNum2() - 2000000
	if diff2 < 0 {
		diff2 = -diff2
	}
	if diff1 < diff2 {
		return r1;
	} else {
		return r2;
	}
}
