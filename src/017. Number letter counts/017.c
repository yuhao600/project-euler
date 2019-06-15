#include <stdio.h>
#include <string.h>

#define NUM_STR_LEN 256

int main(void) {
    char n[1001][NUM_STR_LEN] = {""};
    //strcpy(n[0], "zero");
    strcpy(n[1], "one");
    strcpy(n[2], "two");
    strcpy(n[3], "three");
    strcpy(n[4], "four");
    strcpy(n[5], "five");
    strcpy(n[6], "six");
    strcpy(n[7], "seven");
    strcpy(n[8], "eight");
    strcpy(n[9], "nine");
    strcpy(n[10], "ten");
    strcpy(n[11], "eleven");
    strcpy(n[12], "twelve");
    strcpy(n[13], "thirteen");
    strcpy(n[14], "fourteen");
    strcpy(n[15], "fifteen");
    strcpy(n[16], "sixteen");
    strcpy(n[17], "seventeen");
    strcpy(n[18], "eighteen");
    strcpy(n[19], "nineteen");

    strcpy(n[20], "twenty");
    strcpy(n[30], "thirty");
    strcpy(n[40], "forty");
    strcpy(n[50], "fifty");
    strcpy(n[60], "sixty");
    strcpy(n[70], "seventy");
    strcpy(n[80], "eighty");
    strcpy(n[90], "ninety");

    // generate 21-99
    for (int b = 2; b <= 9; ++b) {
        for (int a = 1; a <= 9; ++a) {
            strcpy(n[b * 10 + a], n[b * 10]);
            strcat(n[b * 10 + a], n[a]);
        }
    }

    for (int c = 1; c <= 9; ++c) {
        strcpy(n[c * 100], n[c]);
        strcat(n[c * 100], "hundred");
        for (int ba = 1; ba <= 99; ++ba) {
            strcpy(n[c * 100 + ba], n[c * 100]);
            strcat(n[c * 100 + ba], "and");
            strcat(n[c * 100 + ba], n[ba]);
        }
    }

    strcpy(n[1000], n[1]);
    strcat(n[1000], "thousand");

    int sum = 0;
    for (int i = 1; i <= 1000; ++i) {
        sum += strlen(n[i]);
    }

    printf("%d\n", sum);
}
