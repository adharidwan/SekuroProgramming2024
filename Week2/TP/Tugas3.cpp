#include <bits/stdc++.h>
using namespace std;

int main(){
    int a = 10;
    int b = 20;
    int* pa = &a;
    int* pb = &b;
    int** ppa = &pa;
    int** ppb = &pb;

    cout << a << endl; //output nilai a
    cout << pa << endl;//output addres dari variabel a

    cout << b << endl;//output nilai b
    cout << pb << endl;//output addres dari variabel b

    cout << *pa << endl;//mengambil value dari addres yang dicatat di  pa yaitu nilai a
    cout << *ppb <<endl;//mengambil value dari addres yang dicatat ppb yaitu addres dari pb
    cout << **ppa << endl;//mengambil value dari addres ppa yaitu addres pa kemudian mengambil value dari addres yang dicatat yaitu value a
    
    cout << *pb * **ppb << endl;//mengambil value dari addres yang dicatat dipb kemudian dikalikan dengan value dari addres ppb yaitu addres pb kemudian mengambil value dari addres yang dicatat dipb yaitu value b
}