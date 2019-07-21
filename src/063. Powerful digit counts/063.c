#include <math.h>
#include <stdio.h>

int main() {
    int count = 0;
    for (int n = 1; ; ++n) {
        int start = (int)ceil(pow(pow(10, n - 1), (1.0 / (double)n)));
        count += 9 - start + 1;
        if (start > 9) {
            break;
        }
    }
    printf("%d\n", count);
}
