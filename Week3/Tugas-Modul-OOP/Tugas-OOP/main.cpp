#include <iostream>
#include <vector>

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
    }

    void updatePose(float deltaTime){
        Matrix temp = Matrix(std::vector<std::vector<float>>({{vx*deltaTime},{vy*deltaTime},{Omega*deltaTime}}));
        curPose = curPose + temp;
    }  
};

int main(){
    /*
    Swerve test(0,5,0,0.26363);
    test.updatePose(5);
    */

   /*
    Matrix A({{1,2,3},{2,3,1}});
    Matrix B({{0,2,4},{1,2,5},{8,2,1.2}});
    Matrix C(2,3);
    std::cout << "Matrix A\n";
    A.Display();
    std::cout << "Matrix B\n";
    B.Display();
    std::cout << "Matrix C\n";
    C.Display();
    std::cout << std::endl;

    Matrix C1 = A + C;
    std::cout << "Matrix C1\n";
    C1.Display();
    std::cout << '\n';

    Matrix C2 = A - C;
    std::cout << "Matrix C2\n";
    C2.Display();
    std::cout << '\n';

    Matrix C3 = A * B;
    std::cout << "Matrix C3\n";
    C3.Display();
    std::cout << '\n';

    Matrix C4 = B * A;
    std::cout << "Matrix C4\n";
    C4.Display();
    std::cout << '\n';

    return 0;
    */
}