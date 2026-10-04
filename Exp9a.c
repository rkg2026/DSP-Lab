#include<stdio.h>
#include<math.h>

void main()
{
    float x[10], XReal[10], XImag[10], pi;
    int k, n, N;
    printf("\n Enter the number samples in the sequence x(n), N = ");
    scanf("%d",&N);
    printf("\n Enter the samples of sequence x(n) \n");
    for(n=0; n<N; n++)
    {
        scanf("%f",&x[n]);
    }
    pi = 3.1415926;
    for(k = 0; k<N; k++)
    {
        XReal[k] = XImag[k] = 0.0;
        for(n = 0; n<N; n++)
        {
            XReal[k] = XReal[k] + x[n]*cos((2*pi*k*n)/N);
            XImag[k] = XImag[k] + x[n]*sin((2*pi*k*n)/N);
        }
    }
    printf("\nThe %d point DFT of given sequence is:", N);
    printf("\n\tReal X(k) \t Imaginary X(k)");
    for(k = 0; k<N; k++)
    {
        printf("\nX(%d) = %f + j %f",k, XReal[k], XImag[k]);
    }
}

/*
Exercise:
Compute the IDFT of a 4-point real sequence
X[k] = {2,-1,0,1}, k = 0,1,2,3.

To implement the exercise:
1. N = 4.
2. The given sequence is X[k] = {2,-1,0,1}.
3. Since the sequence is real:
   XReal = {2,-1,0,1}
   XImag = {0,0,0,0}
4. For IDFT, use the IDFT equation:
   x[n] = (1/N) * SUM{X[k] * exp(+j*2*pi*k*n/N)}
5. Use +sin() for the imaginary part.
6. Divide the final real and imaginary values by N.

Expected result:
x[n] = {0.5, 0.5-j0.5, 0.5, 0.5+j0.5}
*/