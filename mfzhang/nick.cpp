#include <iostream>
#include <vector>
#include <string>


using namespace std;

int main()

{
    vector<string> msg {"hello","c++", "hello","哈哈哈"};
    for (const string & word : msg)
    {
        
        cout << word << " ";
    }
    cout << endl;
}