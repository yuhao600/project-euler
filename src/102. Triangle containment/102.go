package main

import (
	"bufio"
	"fmt"
	"log"
	"math"
	"os"
	"strconv"
	"strings"
)

type Point struct {
	X, Y float64
}

type Triangle struct {
	A, B, C Point
}

func main() {
	origin := Point{0, 0}
	triangles := readTrianglesFromFile("p102_triangles.txt")
	count := 0
	for _, tri := range triangles {
		if isPointInsideTriangle(tri, origin) {
			count++
		}
	}
	fmt.Println(count)
}

func isPointInsideTriangle(tri Triangle, p Point) bool {
	areaABC := triangleArea(tri)
	a, b, c := tri.A, tri.B, tri.C
	areaABP := triangleArea(Triangle{a, b, p})
	areaBCP := triangleArea(Triangle{b, c, p})
	areaCAP := triangleArea(Triangle{c, a, p})
	return areaABC == areaABP + areaBCP + areaCAP
}

// https://en.wikipedia.org/wiki/Triangle#Using_coordinates
func triangleArea(tri Triangle) float64 {
	return math.Abs((tri.A.X * tri.B.Y - tri.A.X * tri.C.Y +
		tri.B.X * tri.C.Y - tri.B.X * tri.A.Y +
		tri.C.X * tri.A.Y - tri.C.X * tri.B.Y) / 2)
}

func readTrianglesFromFile(fileName string) []Triangle {
	f, err := os.Open(fileName)
	if err != nil {
		log.Fatal("err")
	}
	defer f.Close()

	scanner := bufio.NewScanner(f)
	var triangles []Triangle
    for scanner.Scan() {
		coordinates := strings.Split(scanner.Text(), ",")
		var tri Triangle
		tri.A = buildPoint(coordinates[0:2])
		tri.B = buildPoint(coordinates[2:4])
		tri.C = buildPoint(coordinates[4:6])
		triangles = append(triangles, tri)
	}
	return triangles
}

func buildPoint(coordinates []string) Point {
	coordX, _ := strconv.ParseFloat(coordinates[0], 64)
	coordY, _ := strconv.ParseFloat(coordinates[1], 64)
	return Point{coordX, coordY}
}
