#include <iostream>
#include <string>
#include <algorithm>

using std::string;

bool is_bouncy(long long n);

int main() {
    long long bouncy_count = 0;
    long long n = 1;
    while (true) {
        if (is_bouncy(n)) {
            ++bouncy_count;
        }
        if (static_cast<double>(bouncy_count) / n == 0.99) {
            std::cout << n << std::endl;
            break;
        }
        ++n;
    }
}

bool is_bouncy(long long n) {
    string original = std::to_string(n);
    string sorted(original);
    std::sort(sorted.begin(), sorted.end());
    if (original == sorted) {
        return false;
    }
    std::reverse(sorted.begin(), sorted.end());
    if (original == sorted) {
        return false;
    }
    return true;
}
