#include <stdio.h>
#include <string.h>
#include <math.h>

#define LINE_LEN 100

int main(void) {
    FILE *f = fopen("p099_base_exp.txt", "r");
    char line[LINE_LEN];
    double max_power = 0;
    int max_line_no = 0;
    int line_no = 0;
    while (fgets(line, sizeof(line), f)) {
        line_no += 1;
        int base, exp;
        sscanf(line, "%d,%d", &base, &exp);
        double current_power = exp * log((double)base);
        if (current_power > max_power) {
            max_power = current_power;
            max_line_no = line_no;
        }
    }
    printf("%d\n", max_line_no);
}
