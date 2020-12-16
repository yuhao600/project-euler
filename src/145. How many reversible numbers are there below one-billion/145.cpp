#include <cmath>
#include <iostream>

static int reversible_count(int d);

int main() {
    int count = 0;
    for (int d = 1; d <= 9; ++d) {
        count += reversible_count(d);
    }
    std::cout << count << std::endl;
}

static int reversible_count(int d) {
    switch (d % 4) {
    case 1:
        // no solutions
        return 0;
    case 0:
    case 2:
        // 2 digits: no carry over, and sum of two digits is odd
        // 2 digits => 20
        // 4 digits: outer pair is the same as 2 digits
        //           inner pair has 30 possibilities because 0 is allowed
        return 20 * std::pow(30 , d / 2 - 1);
    case 3:
        // the first and third digit must be odd and gives carry over: 20 possibilities
        // middle digit: add to itself, no carry over: 5 possibilities
        // 4 digits: same as before, no leading zero
        return 100 * std::pow(500, (d - 3) / 4);
    }
    return 0;
}
