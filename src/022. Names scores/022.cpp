#include <iostream>
#include <string>
#include <fstream>
#include <vector>
#include <algorithm>

using std::string;
int score(string name);

int main()
{
    std::ifstream f("p022_names.txt");
    string line;
    std::vector<string> names;
    while (std::getline(f, line, ','))
    {
        // remove first and last characters, which are the quote characters
        string name = line.substr(1, line.size() - 2); 
        names.push_back(name);
    }
    std::sort(names.begin(), names.end());
    int total = 0;
    int index = 1;
    for (string name : names)
    {
        total += index * score(name);
        ++index;
    }
    std::cout << total << std::endl;
}

int score(string name)
{
    int total = 0;
    for (char c : name)
    {
        total += c - 'A' + 1;
    }
    return total;
}
