#include <iostream>
#include <vector>
#include <cmath>
#include <fstream>


class Matrix{
private:
    int rows,cols;
    std::vector<std::vector<float>> arr;

public:

    Matrix() : rows(0), cols(0), arr({}) {}

    Matrix(int rows, int cols, const std::vector<std::vector<float>>& inputArr) {
        this->rows = rows;
        this->cols = cols;
        arr = inputArr;
    }

    Matrix(int rows,int cols){
        this->rows = rows;
        this->cols = cols;
        arr = std::vector<std::vector<float>>(rows, std::vector<float>(cols,0));
    }

    Matrix(const Matrix& temp){
        rows = temp.rows;
        cols = temp.cols;
        arr = temp.arr;
    }

    Matrix(const std::vector<std::vector<float>>& inputs){
        rows = inputs.size();
        cols = inputs[0].size();
        arr = inputs;
    }

    void Display() const {
        for(int i = 0 ; i < rows;i++){
            for(int j = 0; j < cols;j++){
                std::cout << arr[i][j] << " ";
            }
            std::cout << std::endl;
        }
    }

    Matrix operator+(const Matrix& temp){
        if(rows != temp.rows || cols != temp.cols){
            std::cout << "The matrix dimension is not valid!" << std::endl; 
            Matrix error_matrix(1, 1, {{0}});
            return error_matrix;
        }

        Matrix result(rows,cols,arr);

        for(int i = 0 ; i < rows;i++){
            for(int j = 0 ; j < cols ; j++){
                result.arr[i][j] += temp.arr[i][j]; 
            }
        }

        return result;
    };

    Matrix operator-(const Matrix& temp){
        if(rows != temp.rows || cols != temp.cols){
            std::cout << "The matrix dimension is not valid!" << std::endl; 
            Matrix error_matrix(1, 1, {{0}});
            return error_matrix;
        }

        Matrix result(rows,cols,arr);

        for(int i = 0 ; i < rows ;i++){
            for(int j = 0 ; j < cols ; j++){
                result.arr[i][j] -= temp.arr[i][j];
            }
        }
        
        return result;
    }
    
    Matrix operator*(const Matrix& temp){
        if(cols != temp.rows){
            std::cout << "The Multiplication cannot be done. The number of columns n the first matrix should be equal to the numbers of rows in the second!" << std::endl;
            Matrix error_matrix(1, 1, {{0}});
            return error_matrix;
        }

        Matrix result(rows,temp.cols,std::vector<std::vector<float>>(rows, std::vector<float>(temp.cols,0)));

        for(int i = 0 ; i < rows; i++){
            for(int j = 0 ; j < temp.cols; j++){
                for(int k = 0; k < cols; k++){
                    result.arr[i][j] += arr[i][k] * temp.arr[k][j];
                }
            }
        }

        return result;
    }

};

class Swerve{
private:
    float vx,vy,Omega;
    float r;
    Matrix vel_mult;
    Matrix saved;
    Matrix curPose = Matrix(std::vector<std::vector<float>>({{0},{5},{0}}));

    std::vector<float> hist;
public:
    Swerve(float vx, float vy,float Omega, float r)
        : vx(vx), vy(vy), r(r),Omega(Omega), vel_mult({{1, 0, -r}, {0, 1, r}, {1, 0, -r}, {0, 1, r},{1, 0, -r},{0, 1, r},{1, 0, -r},{0, 1, r}}) {}

    void velocityCommand(float vx, float vy, float omega){
        Matrix rhs = Matrix(std::vector<std::vector<float>>({{vx},{vy},{omega}}));
        Matrix result = vel_mult * rhs;
        saved = result;
        saved.Display();
    }

    void updatePose(float deltaTime){
        Matrix temp = Matrix(std::vector<std::vector<float>>({{vx*deltaTime},{vy*deltaTime},{Omega*deltaTime}}));
        curPose = curPose + temp;
        curPose.Display();
    }  
};

int main(){

    for(double i = 0; i <= 6.3; i+= 0.01){
        double vxx = 48*cos(i)*sin(i)*sin(i);
        double vyy = 4*sin(4*i) + 6*sin(3*i) + 10*sin(2*i) - 13*sin(i);
        double w = 0;
        
        Swerve simulate(vxx,vyy,w,0.26363);
        simulate.updatePose(i);
    }

    std::cout << "==================================================================================";

    for(double i = 0; i <= 6.3; i+= 0.01){
        double vxx = 48*cos(i)*sin(i)*sin(i);
        double vyy = 4*sin(4*i) + 6*sin(3*i) + 10*sin(2*i) - 13*sin(i);
        double w = 0;
        
        Swerve simulate(vxx,vyy,w,0.26363);
        simulate.velocityCommand(vxx,vyy,w);
    }

}