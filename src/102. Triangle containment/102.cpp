#include <cmath>
#include <cstdlib>
#include <fstream>
#include <iostream>
#include <sstream>
#include <string>
#include <vector>

using std::string;
using std::vector;

struct Point {
    double x;
    double y;
};

struct Triangle {
    Point a;
    Point b;
    Point c;
};

static bool is_point_inside_trisiangle(const Triangle& tri, const Point& p);
static double triangle_area(const Triangle& tri);
static vector<Triangle> read_triangles_from_file(const char *file_name);
static Point build_point(const string& coord_x, const string& coord_y);

int main() {
    const Point origin = {0, 0};
    vector<Triangle> triangles = read_triangles_from_file("p102_triangles.txt");
    int count = 0;
    for (Triangle tri : triangles) {
        if (is_point_inside_trisiangle(tri, origin)) {
            count++;
        }
    }
    std::cout << count << std::endl;
}

static bool is_point_inside_trisiangle(const Triangle& tri, const Point& p) {
    double areaABC = triangle_area(tri);
    Point a = tri.a;
    Point b = tri.b;
    Point c = tri.c;
    double areaABP = triangle_area(Triangle{a, b, p});
    double areaBCP = triangle_area(Triangle{b, c, p});
    double areaCAP = triangle_area(Triangle{c, a, p});
    return areaABC == areaABP + areaBCP + areaCAP;
}

// https://en.wikipedia.org/wiki/Triangle#Using_coordinates
static double triangle_area(const Triangle& tri) {
    return std::abs((tri.a.x * tri.b.y - tri.a.x * tri.c.y +
        tri.b.x * tri.c.y - tri.b.x * tri.a.y +
        tri.c.x * tri.a.y - tri.c.x * tri.b.y) / 2);
}

static vector<Triangle> read_triangles_from_file(const char *file_name) {
    std::ifstream file_stream(file_name);
    string line;
    vector<Triangle> triangles;
    while (std::getline(file_stream, line)) {
        std::stringstream line_stream(line);
        vector<string> coordinates;
        string token;
        while (std::getline(line_stream, token, ',')) {
            coordinates.push_back(token);
        }
        Triangle tri;
        tri.a = build_point(coordinates[0], coordinates[1]);
        tri.b = build_point(coordinates[2], coordinates[3]);
        tri.c = build_point(coordinates[4], coordinates[5]);
        triangles.push_back(tri);
    }
    return triangles;
}

static Point build_point(const string& coord_x, const string& coord_y) {
    return Point{std::atof(coord_x.c_str()), std::atof(coord_y.c_str())};
}
