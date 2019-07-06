package main

import (
	"fmt"
	"strings"
)

func main() {
	sum := 0
	for i := 1; i < 1000000; i++ {
		if isPalindrome(toBase10(i)) && isPalindrome(toBase2(i)) {
			sum += i
		}
	}
	fmt.Println(sum)
}

func isPalindrome(s string) bool {
	chars := strings.Split(s, "")
	for i, j := 0, len(chars) - 1; i < j; i, j = i + 1, j - 1 {
		chars[i], chars[j] = chars[j], chars[i]
	}
	reversed := strings.Join(chars, "")
	return s == reversed
}

func toBase10(n int) string {
	return fmt.Sprintf("%d", n)
}

func toBase2(n int) string {
	return fmt.Sprintf("%b", n)
}
