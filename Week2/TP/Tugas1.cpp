#include <bits/stdc++.h>
using namespace std;

int main(){
    int arr[10],brr[10];
    for(int i = 0 ; i < 10;i++){
        cin >> arr[i];
    }
    for(int i = 0 ; i < 10;i++){
        cin >> brr[i];
    }
    for(int i = 0 ; i < 10;i++){
        cout << arr[i] + brr[i] << " ";
    }
}