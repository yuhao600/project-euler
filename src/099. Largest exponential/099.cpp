#include <iostream>
#include <fstream>
#include <sstream>
#include <string>
#include <cmath>

int main() {
    std::ifstream f("p099_base_exp.txt");
    std::string line;
    double max_power = 0;
    int max_line_no = 0;
    int line_no = 0;
    while (std::getline(f, line)) {
        line_no += 1;
        std::istringstream line_stream(line);
        std::string base_str, exp_str;
        std::getline(line_stream, base_str, ',');
        std::getline(line_stream, exp_str);
        int base, exp;
        base = std::stoi(base_str);
        exp = std::stoi(exp_str);
        double current_power = exp * std::log(base);
        if (current_power > max_power) {
            max_power = current_power;
            max_line_no = line_no;
        }
    }
    std::cout << max_line_no << std::endl;
}
