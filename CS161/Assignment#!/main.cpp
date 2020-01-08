#include <iostream>
using namespace std;

/******************************************************
** Program: fortune_teller.cpp
** Author: Matthew Takara
** Date: 01/12/2020
** Description:
** - Part 2/2 of the fortune teller app
** Input:
** - Sentence 1: integer, short
** - Sentence 2: long, int
** - Sentence 3: double
** Output:
** - Your fortune
******************************************************/

int main()
{
    //Int is from -2147483647 to 2147483647
    int dollars;
    //Short is from -32768 to 32767
    short ipad;
    //Long is from -2147483647 to 2147483647
    long files;
    //Long is from -2147483647 to 2147483647
    int beer;
    //Double is from ?
    double minutes = 35.5;

    //Introduction (custom)
    cout << "[ Your session with the mysterious fortune teller has begun ]" << endl;

    //Sentence 1
    cout << "Please enter a random integer for fortune 1" << endl;
    cin >> dollars;
    cout << "Please enter a random short for fortune 1" << endl;
    cin >> ipad;
    cout << "You will own $" << dollars << " worth of amazon gift cards";
    cout << "and you will also get " << ipad << " ipads for free!" << endl;
    cout << "[ Sentence 1 has ended ]";

    //Sentence 2
    cout << "Please enter a random long for fortune 2" << endl;
    cin >> files;
    cout << "Please enter another random int for fortune 2" << endl;
    cin >> beer;
    cout << "You will unfortunately lose " << files << " and an additional ";
    cout << beer << "gallons of beer in 2 years" << endl;
    cout << "[ Sentence 2 has ended ]";

    //Sentence 3
    cout << "Please enter a random double for fortune 3 (2 decimal places)" << endl;
    cin >> minutes;
    cout << minutes << " minutes from now a dog will eat your dinner" << endl;
    cout << "[ Sentence 3 has ended ]";

    //Conclusion (custom)
    cout << "[ Your session with the mysterious fortune teller has ended. ]";
    return 0;
}