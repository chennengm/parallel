#include <iostream>
#include <omp.h>
#include <stdlib.h>
#include <time.h>
#include <sys/time.h>
#include<windows.h>
using namespace std;

int n=1024;
int getRand(int min, int max) {
    return (rand() % (max - min + 1)) + min;
}
void Gauss(float** data, int n) {
    for (int k = 0; k < n; k++) {
        #pragma omp parallel for schedule(static)
        for (int j = k + 1; j < n; j++) {
            data[k][j] = data[k][j] / data[k][k];
        }
        data[k][k] = 1.0;
        #pragma omp parallel for schedule(static)
        for (int i = k + 1; i < n; i++) {
            for (int j = k + 1; j < n; j++) {
                #pragma omp atomic
                data[i][j] -= data[i][k] * data[k][j];
            }
            data[i][k] = 0;
        }
    }
}
int main(){
  //  int n;
   // for(int k=128;k<=4096;k*=2){
     //       n=k;
            cout<<n<<endl;
    float** data=new float*[n];
    for(int i=0;i<n;i++){
        data[i]=new float[n];
        for(int j=0;j<n;j++){
            data[i][j]=getRand(1,1000);
        }
    }
    LARGE_INTEGER start_time, end_time, freq;
        QueryPerformanceFrequency(&freq);
        QueryPerformanceCounter(&start_time);
    Gauss(data,n);
    QueryPerformanceCounter(&end_time);
        double duration = (end_time.QuadPart - start_time.QuadPart) * 1.0 / freq.QuadPart;
        cout << "The run time is: " << duration*1000 << "ms" << endl;

//}
    return 0;
}

