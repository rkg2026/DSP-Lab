#include <stdio.h>
#include <math.h>

#define MAX 10
#define PI 3.1415926

int main()
{
    int N, M;
    int n, k, lag, index;

    float x[MAX];
    float XReal[2 * MAX - 1];
    float XImag[2 * MAX - 1];
    float R[2 * MAX - 1];
    float r[2 * MAX - 1];

    float angle;

    printf("\nEnter the number of samples N = ");
    scanf("%d", &N);

    printf("\nEnter the samples of x(n):\n");

    for(n = 0; n < N; n++)
    {
        scanf("%f", &x[n]);
    }

    M = 2 * N - 1;

    for(k = 0; k < M; k++)
    {
        XReal[k] = 0.0;
        XImag[k] = 0.0;

        for(n = 0; n < M; n++)
        {
            angle = (2 * PI * k * n) / M;

            XReal[k] = XReal[k] + x[n] * cos(angle);
            XImag[k] = XImag[k] - x[n] * sin(angle);
        }
    }

    for(k = 0; k < M; k++)
    {
        R[k] = XReal[k] * XReal[k]
             + XImag[k] * XImag[k];
    }

    for(n = 0; n < M; n++)
    {
        r[n] = 0.0;

        for(k = 0; k < M; k++)
        {
            angle = (2 * PI * k * n) / M;

            r[n] = r[n] + R[k] * cos(angle);
        }

        r[n] = r[n] / M;
    }

    printf("\nAutocorrelation using DFT and IDFT:\n");

    for(lag = -(N - 1); lag <= N - 1; lag++)
    {
        index = (lag + M) % M;

        printf("r(%d) = %f\n", lag, r[index]);
    }

    return 0;
}

/*
Exercise:
Compute the autocorrelation of the real sequence

x[n] = {1,-2,3,0}, n = 0,1,2,3

using DFT and IDFT.

For the exercise:
N = 4
x[n] = {1,-2,3,0}

Implementation:

1. Calculate the DFT of x[n]:

   X[k] = DFT{x[n]}

2. Multiply the DFT by its complex conjugate:

   R[k] = X[k] * X*[k]

3. Calculate the IDFT of R[k]:

   r[n] = IDFT{R[k]}

4. To obtain linear autocorrelation, zero-pad the
   original sequence to:

   M = 2N - 1

   For N = 4:

   M = 2(4) - 1
     = 7

5. The DFT is calculated using:

   XReal[k] = SUM x[n] cos(2*pi*k*n/M)

   XImag[k] = -SUM x[n] sin(2*pi*k*n/M)

6. Since:

   X[k] = XReal[k] + jXImag[k]

   and its conjugate is:

   X*[k] = XReal[k] - jXImag[k]

   Therefore:

   X[k]X*[k] = XReal[k]^2 + XImag[k]^2

7. The IDFT of R[k] gives the autocorrelation.

8. The result is displayed for lags:

   -(N-1) to +(N-1)

   i.e. for N = 4:

   -3, -2, -1, 0, 1, 2, 3

Expected result:

r(-3) = 0
r(-2) = 3
r(-1) = -8
r(0)  = 14
r(1)  = -8
r(2)  = 3
r(3)  = 0
*/