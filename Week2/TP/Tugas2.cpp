#include <bits/stdc++.h>
using namespace std;

float pi = 2*acos(0.0);

float luas(float x){
    return pi * x * x;
}

int main(){
    float n;
    cin >> n;
    cout << luas(n);
}