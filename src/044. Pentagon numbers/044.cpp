#include <iostream>
#include <set>

int main() {
    long long upper_limit = 10000LL;
    std::set<long long> pentagons;
    for (long long i = 1; i <= upper_limit; i++) {
        pentagons.insert(i * (3 * i - 1) / 2);
    }
    for (long long m : pentagons) {
        for (long long n : pentagons) {
            auto found1 = pentagons.find(m + n);
            if (found1 != pentagons.end()) {
                auto found2 = pentagons.find(m + n + n);
                if (found2 != pentagons.end()) {
                    std::cout << m << std::endl;
                    return 0;
                }
            }
        }
    }
}
