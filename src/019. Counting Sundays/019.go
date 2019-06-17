package main

import (
	"fmt"
	"time"
)

func main() {
	firstOfMonth := time.Date(1901, 1, 1, 0, 0, 0, 0, time.UTC)
	count := 0
	for firstOfMonth.Before(time.Date(2000, 12, 31, 0, 0, 0, 0, time.UTC)) {
		if firstOfMonth.Weekday() == time.Sunday {
			count += 1
		}
		firstOfMonth = firstOfMonth.AddDate(0, 1, 0)
	}
	fmt.Println(count)
}
