#include<bits/stdc++.h>
using namespace std;

int main(){

    string str;
    getline(cin, str);

    int star=0, hash=0;
    for(auto i : str){
        if(i=='*')  star++;
        else hash++;
    }

    cout << star-hash;
    return 0;
}