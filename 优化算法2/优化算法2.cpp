#include <iostream>
#include <chrono>
using namespace std;

/*
int main()
{
    int n = 1000;

    int* a = new int[n];

    int* sum = new int[n];
    auto start = std::chrono::high_resolution_clock::now();
    for (int i = 0; i < 10; i++) {

        int** b = new int* [n];
        for (int i = 0; i < n; i++) {
            b[i] = new int[n];
        }
        int k = 1;
        for (int i = 0; i < n; i++) {
            for (int j = 0; j < n; j++) {
                b[i][j] = k;
                k++;
            }
        }
        for (int i = 0; i < n; i++) {
            sum[i] = 0.0;
        }
        for (int j = 0; j < n; j++) {
            for (int i = 0; i < n; i++) {
                sum[i] += b[j][i] * a[j];
            }
        }
    }
    auto end = std::chrono::high_resolution_clock::now();
    std::chrono::duration<double, std::milli> duration = end - start;

    // 输出耗时（以毫秒为单位）
    std::cout << "耗时: " << duration.count() << " 毫秒" << std::endl;

    return 0;
}*/

int main() {
    int n = 809600;
    int* a = new int[n];
    int sum = 0;

    for (int i = 0; i < n; i++) {
        a[i] = i;
    }
    auto start = std::chrono::high_resolution_clock::now();

    for(int i=0;i<1000;i++){
        sum = 0;
        int sum1 = 0;
        int sum2 = 0;
    for (int i = 0; i < n; i+=2) {
        sum1 += a[i];
        sum2 += a[i + 1];
    }
    sum = sum1 + sum2;
    }
    auto end = std::chrono::high_resolution_clock::now();
    std::chrono::duration<double, std::milli> duration = end - start;

    // 输出耗时（以毫秒为单位）
    std::cout << "耗时: " << duration.count() << " 毫秒" << std::endl;
    cout << sum;
}