package main

import (
	"fmt"
	"math"
)

func main() {
	// assume that the radius of the circle is 1
	lSectionArea := 1 - math.Pi / 4
	n := 2.0
	for {
		if concaveTriangleArea(n) / lSectionArea < 0.001 {
			fmt.Println(n)
			break
		}
		n += 1
	}
}

func concaveTriangleArea(n float64) float64 {
	// assume the height of the concave triangle is h
	// solve the equation
	// (1 - n*h)^2 + (1 - h)^2 = 1
	h := (n + 1 - math.Sqrt(2 * n)) / (n * n + 1)
	radiusAngle := math.Acos((1 - h) / 1)
	circularSectorArea := radiusAngle / 2
	innerUpperTriangleArea := (math.Sqrt(1 - (1 - h) * (1 - h))) * (1 - 1.0 / n) / 2
	containingTriangleArea := 1.0 * (1.0 / n) / 2
	return containingTriangleArea + innerUpperTriangleArea - circularSectorArea
}
