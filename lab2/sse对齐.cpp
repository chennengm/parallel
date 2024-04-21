


#include <iostream>
#include <windows.h>
#include <stdlib.h>
#include <malloc.h>
#include <xmmintrin.h> //SSE
#include <emmintrin.h> //SSE2
#include <pmmintrin.h> //SSE3
#include <tmmintrin.h> //SSSE3
#include <smmintrin.h> //SSE4.1
#include <nmmintrin.h> //SSSE4.2
#include <immintrin.h> //AVX、AVX2
#define n 2048
using namespace std;
float A[n][n];
__attribute__((aligned(16)))float A1[n][n];
__attribute__((aligned(32)))float A2[n][n];
long long head, tail, freq;
void init(float A[n][n])
{
    for (int i = 0; i < n; i++)
        for (int j = 0; j < n; j++)
            A[i][j] = i + j;
}

void initA1()
{
    for (int i = 0; i < n; i++)
        for (int j = 0; j < n; j++)
            A1[i][j] = i + j;
}


void SIMD_SSE_gausseliminate(float A[n][n])//对齐
{
    __m128 t1, t2, t3;//四位单精度构成的向量
    for (int k = 0; k < n; k++)
    {
        int preprocessnumber = (n - k - 1) % 4;//预处理的数量,能被四整除
        int begin = k + 1 + preprocessnumber;
        __attribute__((aligned(16)))float head[4] = { A[k][k],A[k][k],A[k][k],A[k][k] };
        t2 = _mm_load_ps(head);
        for (int j = k + 1; j < k + 1 + preprocessnumber; j++)
        {
            A[k][j] = A[k][j] / A[k][k];
        }
        for (int j = begin; j < n; j += 4)
        {
            t1 = _mm_load_ps(A[k] + j);
            t1 = _mm_div_ps(t1, t2);
            _mm_store_ss(A[k] + j, t1);
        }
        A[k][k] = 1;
        t1 = _mm_setzero_ps();//清零
        t2 = _mm_setzero_ps();
        //先去头，为了四个四个的处理
        for (int i = k + 1; i < n; i++)
        {
            for (int j = k + 1; j < k + 1 + preprocessnumber; j++)
            {
                A[i][j] = A[i][j] - A[i][k] * A[k][j];
            }
            A[i][k] = 0;
        }
        for (int i = k + 1; i < n; i++)
        {
            __attribute__((aligned(16)))float head1[4] = { A[i][k],A[i][k],A[i][k],A[i][k] };
            t3 = _mm_load_ps(head1);
            for (int j = begin; j < n; j += 4)
            {
                t1 = _mm_load_ps(A[k] + j);
                t2 = _mm_load_ps(A[i] + j);
                t1 = _mm_mul_ps(t1, t3);
                t2 = _mm_sub_ps(t2, t1);
                _mm_store_ss(A[i] + j, t2);
            }
            A[i][k] = 0;
        }
    }
}





int main()
{

    QueryPerformanceFrequency((LARGE_INTEGER*)&freq);
    init(A);



    initA1();
    QueryPerformanceCounter((LARGE_INTEGER*)&head);
    SIMD_SSE_gausseliminate(A1);
    QueryPerformanceCounter((LARGE_INTEGER*)&tail);
    cout << "SSE对齐" << (tail - head) * 1000.0 / freq << "ms" << endl;


}
