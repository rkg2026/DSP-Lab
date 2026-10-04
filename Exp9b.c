#include <stdio.h>
#define N 4 // Length of the input signal

int i, delay;

void Correlation(int* x, int* y, int* result, int size)
{
    for (delay = -(size - 1); delay < size; delay++)
    {
        result[delay + size - 1] = 0;

        for (i = 0; i < size; i++)
        {
            if ((i + delay) >= 0 && (i + delay) < size)
            {
                result[delay + size - 1] += x[i] * y[i + delay];
            }
        }
    }
}

int main()
{
    int X[N] = {1, 2, 3, 4};
    int Y[N] = {4, 3, 2, 1};
    int i;
    int result[2 * N - 1];

    Correlation(X, Y, result, N);

    printf("Cross-correlation/Autocorrelation of the sequences: \n");

    for (i = (2 * N - 2); i >= 0; i--)
    {
        printf("%d\n", result[i]);
    }

    printf("\n");
    return 0;
}