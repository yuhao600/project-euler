#include <algorithm>
#include <cmath>
#include <iostream>
#include <map>
#include <numeric>
#include <set>
#include <string>
#include <vector>

using std::map;
using std::set;
using std::string;
using std::vector;

static bool is_palindrome(long long n);

int main() {
    // if the result is not enough, take a bigger guess
    long long upper_limit = 1000000000LL;

    set<long long> squares;
    for (long long a = 2; a < std::sqrt(upper_limit); ++a) {
        squares.insert(a * a);
    }

    set<long long> cubes;
    for (long long b = 2; b * b * b < upper_limit; ++b) {
        cubes.insert(b *  b * b);
    }

    map<long long, int> candidates;
    for (long long s : squares) {
        for (long long c : cubes) {
            if (is_palindrome(s + c)) {
                ++candidates[s + c];
            }
        }
    }

    vector<long long> result;
    for (auto kv : candidates) {
        if (kv.second == 4) {
            result.push_back(kv.first);
        }
    }

    if (result.size() >= 5) {
        std::sort(result.begin(), result.end());
        std::cout << std::accumulate(result.begin(), result.begin() + 5, 0);
    }
}

static bool is_palindrome(long long n) {
    string original = std::to_string(n);
    string reversed(original.rbegin(), original.rend());
    return original == reversed;
}
