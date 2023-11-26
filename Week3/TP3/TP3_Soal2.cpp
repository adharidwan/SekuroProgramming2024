#include <iostream>
using namespace std;

class Shape
{
private:
    float area;
    float keliling;
public:
    virtual float calculateArea(){
        return 0;
    }
    virtual float calculateKeliling(){
        return 0;
    }
};

class Rectangle : public Shape
{
private:
    float width;
    float length;
public:
    Rectangle(float width, float length){
        this->width = width;
        this->length = length;
    }
    float calculateArea(){
        cout << width * length << endl;
    }
    float calculateKeliling(){
        cout << width + width + length + length << endl;
    }
};


int main(){
    Rectangle rect(5.0, 4.0);
    Shape* shape1 = &rect;
    
    shape1->calculateArea();
    shape1->calculateKeliling();
}