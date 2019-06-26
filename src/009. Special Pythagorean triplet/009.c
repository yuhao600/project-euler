#include <stdio.h>

int main(void) {
    for (int a = 1; a < 1000; ++a) {
        for (int b = a; b < 1000; ++b) {
            int c = 1000 - a - b;
            if (c > b && a * a + b * b == c * c) {
                printf("%d\n", a * b * c);
            }
        }
    }
}
