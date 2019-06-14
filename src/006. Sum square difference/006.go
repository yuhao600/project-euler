package main

import "fmt"

func main() {
    var sum100pow int
    for i := 1; i <= 100; i++ {
        sum100pow += i * i
    }
    sum100 := 100 * (100 + 1) / 2
    fmt.Println(sum100 * sum100 - sum100pow)
}
