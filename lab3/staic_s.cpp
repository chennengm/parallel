#include <iostream>
#include <pthread.h>
#include <sys/time.h>
#include <semaphore.h>
#include <time.h>
#include <windows.h>

using namespace std;

int n=1024;
float** data;

class threadParam_t {
public:
    int t_id;
};

const int NUM_THREADS = 7;
sem_t sem_main;
sem_t sem_workerstart[NUM_THREADS];
sem_t sem_workerend[NUM_THREADS];

void *threadFunc(void *param) {
    threadParam_t* p = (threadParam_t*)param;
    int t_id = p->t_id;
    for (int k = 0; k < n; k++) {
        sem_wait(&sem_workerstart[t_id]);
        for (int i = k + 1 + t_id; i < n; i += NUM_THREADS) {
            for (int j = k + 1; j < n; j++)
                data[i][j] = data[i][j] - data[i][k] * data[k][j];
            data[i][k] = 0;
        }
        sem_post(&sem_main);
        sem_wait(&sem_workerend[t_id]);
    }
    pthread_exit(nullptr);
    return nullptr;
}

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

int main() {
   // cin >> n;
   //for(int k=128;k<=4096;k*=2){

   //n=k;
   cout<<n<<endl;
    data = (float**)_aligned_malloc(32 * n * sizeof(float**), 32);
    for (int i = 0; i < n; i++) {
        data[i] = (float*)_aligned_malloc(32 * n * sizeof(float**), 32);
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
    sem_init(&sem_main, 0, 0);
    for (int i = 0; i < NUM_THREADS; i++) {
        sem_init(&sem_workerstart[i], 0, 0);
        sem_init(&sem_workerend[i], 0, 0);
    }
    pthread_t handles[NUM_THREADS];
    threadParam_t param[NUM_THREADS];

    LARGE_INTEGER start, end, freq;
    QueryPerformanceFrequency(&freq);
    QueryPerformanceCounter(&start);

    for (int t_id = 0; t_id < NUM_THREADS; t_id++) {
        param[t_id].t_id = t_id;
        pthread_create(&handles[t_id], nullptr, threadFunc, (void*)&param[t_id]);
    }
    for (int k = 0; k < n; k++) {
        for (int j = k + 1; j < n; j++)
            data[k][j] = data[k][j] / data[k][k];
        data[k][k] = 1.0;
        for (int t_id = 0; t_id < NUM_THREADS; t_id++) {
            sem_post(&sem_workerstart[t_id]);
        }
        for (int t_id = 0; t_id < NUM_THREADS; t_id++)
            sem_wait(&sem_main);
        for (int t_id = 0; t_id < NUM_THREADS; t_id++)
            sem_post(&sem_workerend[t_id]);
    }
    for (int t_id = 0; t_id < NUM_THREADS; t_id++) {
        pthread_join(handles[t_id], nullptr);
        sem_destroy(&sem_workerstart[t_id]);
        sem_destroy(&sem_workerend[t_id]);
    }
    sem_destroy(&sem_main);

    QueryPerformanceCounter(&end);
    double time_taken = static_cast<double>(end.QuadPart - start.QuadPart) / freq.QuadPart;
    cout << "static_singal= " << time_taken*1000 << "ms" << endl;
  // }
    return 0;
}
