#include <bits/stdc++.h>
#include <fstream>
using namespace std;

//tes
vector<pair<float,float>> hist;
vector<pair<float,float>> undoed;
pair<float,float> lastcur;

void load(){
    ifstream inputFile("lastcord.txt");
    pair<float,float>lastcord;
    float firstval,secondval;
    inputFile >> firstval >> secondval;
    lastcord = {firstval,secondval};
    hist.push_back(lastcord);
}


void save(){
    ofstream outputFile("lastcord.txt");
    pair<float,float> curcord = hist.back();
    outputFile << curcord.first << " " << curcord.second << endl;
}

void redo(){
    if(undoed.size() > 0){
        pair<float,float> temp = undoed.back();
        hist.push_back(temp);
        undoed.pop_back();
        cout << "Redo berhasil" << endl;
    }else{
        cout << "Tidak dapat redo" << endl;
    }
}

void undo(){
    lastcur = hist.back();
    if(hist.size() > 1){
        undoed.push_back(lastcur);
        hist.pop_back();
        cout << "Undo berhasil" << endl;
    }else{
        cout << "Tidak dapat undo" << endl;
    }
}

void gerak(int x,int y){
    pair<float,float> cur = hist.back();
    cur.first += x;
    cur.second += y;
    hist.push_back({cur.first,cur.second});
}

void lokasi(){
    pair<float,float> Cur = hist.back();
    cout << fixed << setprecision(2) << "(" << Cur.first << "," << Cur.second << ")" << endl;
}

void gerak_2(float v, float t,float theta){
    pair<float,float> cur = hist.back();
    float temp = v*t;
    if((0 <= theta) && (theta <= 90)){
        float rad = theta*(M_PI / 180.0);
        cur.first += temp * cos(rad);
        cur.second += temp * sin(rad);
        hist.push_back({cur.first,cur.second});
    }else if( (90 < theta) && (theta <= 180)){
        float rad = (theta-90)*(M_PI / 180.0);
        cur.first -= temp * sin(rad);
        cur.second += temp * cos(rad);
        hist.push_back({cur.first,cur.second});
    }else if((180 < theta) && (theta <= 270)){
        float rad = (theta-180)*(M_PI / 180.0);
        cur.first -= temp * cos(rad);
        cur.second -= temp * sin(rad);
        hist.push_back({cur.first,cur.second});
    } else if((270 < theta) && (theta <= 360)){
        float rad = (theta-270)*(M_PI / 180.0);
        cur.first += temp * sin(rad);
        cur.second -= temp * cos(rad);
        hist.push_back({cur.first,cur.second});
    }
}

int main(){
    cout << "Selamat Datang di Simulasi Pergerakan Drone!" << endl;
    hist.push_back({0,0});
    while(true){
        string x;
        cin >> x;
        if(x == "gerak"){
            undoed.clear();
            float u,v;
            cout << "x: ";
            cin >> u;
            cout << "y: ";
            cin >> v;
            gerak(u,v);
        }else if(x == "lokasi"){
            lokasi();
        }else if(x == "gerak_2"){
            undoed.clear();
            float u,v,w;
            cout << "v: ";
            cin >> u;
            cout << "t: ";
            cin >> v;
            cout << "theta: ";
            cin >> w;
            gerak_2(u,v,w);
        }else if(x == "undo"){
            undo();
        }else if(x == "redo"){
            redo();
        }else if(x == "save"){
            save();
        }else if(x == "load"){
            load();
        }
    }
}