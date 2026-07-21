#include<bits/stdc++.h>
using namespace std;

int main(){
    string parent;
    cin >> parent;

    string haveChild;
    cin >> haveChild;

    if (haveChild == "N") {
        cout << "TOTAL MEMBERS:1" << endl;
        cout << "COMISSION DETAILS" << endl;
        cout << parent << ":250 INR" << endl;
    }
    else{
        string child;
        cin >> child;

        vector<string> children;
        string temp = "";

        for(int i=0; i<=child.length(); i++){
            if(child[i] == ','){
                children.push_back(temp);
                temp = "";
            }

            else if(child[i] != ' '){
                temp = temp + child[i];
            }
        }

        children.push_back(temp);
        cout << "TOTAL MEMBERS:" << children.size() + 1 << endl;
        cout << "COMISSION DETAILS\n";
        cout << parent << ":" << children.size() * 500 << " INR" << endl;
        for (auto ch : children) {
            cout << ch << ":" << "250 INR" << endl;
        }
    }

    return 0;
}