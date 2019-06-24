package main

import (
	"fmt"
	"sort"
	"strconv"
	"strings"
)

func main() {
	bouncyCount := 0
	n := 1
	for {
		if isBouncy(n) {
			bouncyCount++
		}
		if float64(bouncyCount) / float64(n) == 0.99 {
			fmt.Println(n)
			break
		}
		n++
	}
}

func isBouncy(n int) bool {
	original := strconv.Itoa(n)
	chars := strings.Split(original, "")
	sort.Strings(chars)
	sorted := strings.Join(chars, "")
	if original == sorted {
		return false
	}

	for i, j := 0, len(chars) - 1; i < j; i, j = i + 1, j - 1 {
		chars[i], chars[j] = chars[j], chars[i]
	}
	reversed := strings.Join(chars, "")
	if original == reversed {
		return false
	}
	return true
}
