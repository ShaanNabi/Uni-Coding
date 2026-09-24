/*
Name: Shaan Nabi
Part 1: Intelligent Agents
Question 2: Agent Implementation
Badminton Shuttlecock Launcher
*/

#include <iostream>
#include <algorithm>
#include <cstdlib>
#include <ctime>
using namespace std;

class LauncherAgent 
{
    double lastPos = -1, velocity = 0; //internal state
    int hits = 0, goal = 5;

public:
    bool goalReached() 
    { 
        return hits >= goal; 
    }

    //perceive and process: track player and predict position
    double perceive(double pos) 
    {
        if (lastPos >= 0) velocity = pos - lastPos;
        lastPos = pos;
        double predicted = max(0.0, min(10.0, pos + 0.5 * velocity));
        cout << "Player at " << pos << "m, predicted " << predicted << "m\n";
        return predicted;
    }

    //decide and Act: condition action rules
    void act(double target, bool ready) 
    {
        if (!ready) 
        { 
            cout << "Player not ready -> WAIT\n"; return; 
        }

        string shot;
        if (target >= 7) 
        {
            shot = "HIGH CLEAR";
        }
        else if (target <= 3) 
        {
            shot = "DROP SHOT";
        }
        else 
        {
            shot = "DRIVE";
        }
        cout << "Action: " << shot << "LAUNCH\n";

        if (rand() % 100 < 70) 
        { 
            hits++; cout << "In zone! (" << hits << "/" << goal << ")\n"; 
        }

        else cout << "Missed\n";
    }
};

int main() 
{
    srand(time(0));
    LauncherAgent agent;

    for (int turn = 1; turn <= 20 && !agent.goalReached(); turn++) 
    {
        cout << "\nTurn " << turn << ":\n";
        double pos = rand() % 11;          //sensor player depth (0 = net, 10 = back)
        bool ready = rand() % 100 < 85;    //sensor player ready?
        double target = agent.perceive(pos);
        agent.act(target, ready);
    }
    cout << (agent.goalReached() ? "\nGoal reached!\n" : "\nOut of turns\n");
}