#include <math.h>
#include <stdio.h>

double concave_triangle_area(int n);

const double PI = 3.141592653589793238462643383279502884;

int main() {
    // assume that the radius of the circle is 1
    double l_section_area = 1 - PI / 4;
    int n = 2;
    while (1) {
        if (concave_triangle_area(n) / l_section_area < 0.001) {
            printf("%d", n);
            break;
        }
        ++n;
    }
}

double concave_triangle_area(int n) {
    // assume the height of the concave triangle is h
    // solve the equation
    // (1 - n*h)^2 + (1 - h)^2 = 1
    double h = (n + 1 - sqrt(2 * n)) / (n * n + 1);
    double radius_angle = acos((1 - h) / 1);
    double circular_sector_area = radius_angle / 2;
    double inner_upper_triangle_area = (sqrt(1 - (1 - h) * (1 - h))) * (1 - 1.0 / n) / 2;
    double containing_triangle_area = 1.0 * (1.0 / n) / 2;
    return containing_triangle_area + inner_upper_triangle_area - circular_sector_area;
}
