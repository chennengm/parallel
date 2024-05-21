#include <iostream>
#include <pthread.h>
#include <sys/time.h>
#include <time.h>
#include<windows.h>
using namespace std;
class threadParam_t{
    public:
    int t_id;
};
pthread_barrier_t barrier_Division;
pthread_barrier_t barrier_Elimination;
const int NUM_THREADS = 8;
float** data;
int n;
void* threadFunc(void* param){
    threadParam_t* p = (threadParam_t*) param;
    int t_id = p->t_id;
    for(int k = 0;k < n;k++)
    {
        if(t_id == 0)
        {
            for(int j = k + 1;j < n;j++)
            {
                data[k][j] = data[k][j] / data[k][k];
            }
            data[k][k] = 1.0;
        }
        pthread_barrier_wait(&barrier_Division);
        for(int i = k + 1 + t_id;i < n;i += NUM_THREADS)
        {
            for(int j = k + 1;j < n;j++)
            data[i][j] = data[i][j] - data[i][k] * data[k][j];
            data[i][k] = 0;
        }
        pthread_barrier_wait(&barrier_Elimination);
    }
    pthread_exit(nullptr);
}
int main(){
    for(int k=128;k<=4096;k=k*2){
            n=k;
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
    for(int i = 0;i < mixedtimes;i++)
    {
        int line1 = rand() % (n - 1);
        int line2 = rand() % (n - 1);
        if(i % 2 == 0)
        {
            for(int i = 0;i < n;i++)
            data[line1][i] += data[line2][i];
        }
        else
        {
            for(int i = 0;i < n;i++)
            data[line1][i] -= data[line2][i];
        }
    }
    pthread_barrier_init(&barrier_Division,nullptr,NUM_THREADS);
    pthread_barrier_init(&barrier_Elimination,nullptr,NUM_THREADS);
    pthread_t handles[NUM_THREADS];
    threadParam_t param[NUM_THREADS];
    LARGE_INTEGER start, end, freq;
    QueryPerformanceFrequency(&freq);
    QueryPerformanceCounter(&start);
    for(int t_id = 0;t_id < NUM_THREADS;t_id++)
    {
        param[t_id].t_id = t_id;
        pthread_create(&handles[t_id],nullptr,threadFunc,(void*)&param[t_id]);
    }
    for(int t_id = 0;t_id < NUM_THREADS;t_id++)
    {
        pthread_join(handles[t_id],nullptr);
    }
    pthread_barrier_destroy(&barrier_Division);
    pthread_barrier_destroy(&barrier_Elimination);
   QueryPerformanceCounter(&end);
    double time_taken = (end.QuadPart - start.QuadPart) * 1.0 / freq.QuadPart;
    cout << "sbarrier = " << time_taken *1000<< "ms" << endl;
    }
    return 0;
}
