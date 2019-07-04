#include <stdint.h>
#include <stdio.h>

int nim_win(uint32_t n);

int main(void) {
    int count = 0;
    for (uint32_t n = 1; n <= 1U << 30; ++n) {
        if (nim_win(n)) {
            ++count;
        }
    }
    printf("%d\n", count);
    return 0;
}

// https://en.wikipedia.org/wiki/Nim#Mathematical_theory
int nim_win(uint32_t n) {
    return (n ^ (n * 2) ^ (n * 3)) == 0;
}
