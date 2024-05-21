#include <iostream>
#include <pthread.h>
#include <time.h>
#include <windows.h>
#include <sys/time.h>
using namespace std;

int n = 1024;
float** data;

void Gauss(float** data, int n) {
    for (int k = 0; k < n; k++) {
        for (int j = k + 1; j < n; j++) {
            data[k][j] = data[k][j] / data[k][k];
        }
        data[k][k] = 1.0;
        for (int i = k + 1; i < n; i++) {
            for (int j = k + 1; j < n; j++) {
                data[i][j] = data[i][j] - data[i][k] * data[k][j];
            }
            data[i][k] = 0;
        }
    }
}

class threadParam_t {
public:
    int k; // 消去的轮次
    int t_id; // 线程id
};

void* threadFunc(void* param) {
    threadParam_t* p = (threadParam_t*)param;
    int k = p->k; // 消去轮次
    int t_id = p->t_id; // 线程id
    int i = k + t_id + 1; // 应该执行的行数
    for (int j = k + 1; j < n; j++)
        data[i][j] = data[i][j] - data[i][k] * data[k][j];
    data[i][k] = 0;
    pthread_exit(nullptr);
    return nullptr;
}

void normal_gausseliminate() {
    for (int k = 0; k < n; k++) {
        for (int j = k + 1; j < n; j++) {
            data[k][j] = data[k][j] / data[k][k];
        }
        data[k][k] = 1;
        for (int i = k + 1; i < n; i++) {
            for (int j = k + 1; j < n; j++) {
                data[i][j] = data[i][j] - data[i][k] * data[k][j];
            }
            data[i][k] = 0;
        }
    }
}

int main() {
    // cin >> n;
   // for(int k=128;k<=4096;k*=2){
  //  n=k;
    cout<<n<<endl;
    data = (float**)_aligned_malloc(32 * n * sizeof(float*), 32);
    for (int i = 0; i < n; i++) {
        data[i] = (float*)_aligned_malloc(32 * n * sizeof(float), 32);
    }
    srand((unsigned)time(NULL));
    for (int i = 0; i < n; i++) {
        for (int j = i; j < n; j++) {
            data[i][j] = rand() % 1000 + 1;
        }
    }
    int mixedtimes = rand() % n + 2 * n;
    for (int i = 0; i < mixedtimes; i++) {
        int line1 = rand() % (n - 1);
        int line2 = rand() % (n - 1);
        if (i % 2 == 0) {
            for (int i = 0; i < n; i++)
                data[line1][i] += data[line2][i];
        }
        else {
            for (int i = 0; i < n; i++)
                data[line1][i] -= data[line2][i];
        }
    }

  
    LARGE_INTEGER start, end, freq;
    QueryPerformanceFrequency(&freq);

    // 测试normal_gausseliminate函数
    QueryPerformanceCounter(&start);
    normal_gausseliminate();
    QueryPerformanceCounter(&end);
    double normal_time = (end.QuadPart - start.QuadPart) * 1000.0 / freq.QuadPart;
    cout << "Normal Gauss Elimination time: " << normal_time << "ms" << endl;


    QueryPerformanceCounter(&start);
    for (int i = 0; i < n; i++) {
        for (int j = i + 1; j < n; j++)
            data[i][j] = data[i][j] / data[i][i];
        data[i][i] = 1.0;
        int worker_count = n - i - 1;
        pthread_t* handles = new pthread_t[worker_count];
        threadParam_t* param = new threadParam_t[worker_count];
        for (int k = 0; k < worker_count; k++) {
            param[k].k = i;
            param[k].t_id = k;
        }
        for (int k = 0; k < worker_count; k++)
            pthread_create(&handles[k], nullptr, threadFunc, (void*)&param[k]);
        for (int k = 0; k < worker_count; k++)
            pthread_join(handles[k], nullptr);
        delete handles;
        delete param;
    }
    QueryPerformanceCounter(&end);
    double thread_time = (end.QuadPart - start.QuadPart) * 1000.0 / freq.QuadPart;
    cout << "Thread Gauss Elimination time: " << thread_time << "ms" << endl;

    // 释放内存
    for (int i = 0; i < n; i++) {
        _aligned_free(data[i]);
    }
    _aligned_free(data);
  //  }

    return 0;
}
