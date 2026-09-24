/*
Name: Shaan Nabi
Part 2: Search Algorithms
Question 2: Agent Implementation
Shuttlecock Pickup Robot - Breadth-First Search
*/

#include <iostream>
#include <queue>
#include <map>
#include <vector>
#include <algorithm>
using namespace std;

int main()
{
    map<char, vector<char>> tree =
    {
        {'A', {'B', 'C'}},
        {'B', {'D', 'E'}},
        {'C', {'F', 'G'}},
        {'D', {'H'}},
        {'E', {'I'}}
    };

    char start = 'A', goal = 'I';
    map<char, char> parent;
    queue<char> frontier;
    frontier.push(start);

    while (!frontier.empty())
    {
        char cur = frontier.front();
        frontier.pop();
        cout << "Expanding " << cur << "\n";

        if (cur == goal)
        {
            vector<char> path;
            for (char n = goal; n != start; n = parent[n])
            {
                path.push_back(n);
            }
            path.push_back(start);
            reverse(path.begin(), path.end());

            cout << "\nPath found: ";
            for (char n : path)
            {
                cout << n << " ";
            }
            cout << "\n";
            return 0;
        }

        for (char next : tree[cur])
        {
            parent[next] = cur;
            frontier.push(next);
        }
    }
    cout << "No path found\n";
}