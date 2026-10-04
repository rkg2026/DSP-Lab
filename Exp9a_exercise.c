/*
Exercise:
Compute the IDFT of a 4-point real sequence
X[k] = {2,-1,0,1}, k = 0,1,2,3.

Implementation:
1. Enter the number of samples N.
2. Enter the Real and Imaginary parts of X[k].
3. For the given exercise:
   N = 4
   XReal = {2,-1,0,1}
   XImag = {0,0,0,0}
4. For IDFT, use the IDFT equation:
   x[n] = (1/N) * SUM{X[k] * exp(+j*2*pi*k*n/N)}
5. Divide the final real and imaginary values by N.

Expected result for the given exercise:
x[n] = {0.5, 0.5-j0.5, 0.5, 0.5+j0.5}
*/

#include<stdio.h>
#include<math.h>

void main()
{
    float XReal[10], XImag[10], xReal[10], xImag[10], pi;
    int k, n, N;

    printf("\nEnter the number of samples N = ");
    scanf("%d",&N);

    printf("\nEnter the Real part of X(k):\n");
    for(k=0; k<N; k++)
    {
        scanf("%f",&XReal[k]);
    }

    printf("\nEnter the Imaginary part of X(k):\n");
    for(k=0; k<N; k++)
    {
        scanf("%f",&XImag[k]);
    }

    pi = 3.1415926;

    for(n=0; n<N; n++)
    {
        xReal[n] = xImag[n] = 0.0;

        for(k=0; k<N; k++)
        {
            xReal[n] = xReal[n] +
                       XReal[k]*cos((2*pi*k*n)/N) -
                       XImag[k]*sin((2*pi*k*n)/N);

            xImag[n] = xImag[n] +
                       XReal[k]*sin((2*pi*k*n)/N) +
                       XImag[k]*cos((2*pi*k*n)/N);
        }

        xReal[n] = xReal[n]/N;
        xImag[n] = xImag[n]/N;
    }

    printf("\nThe %d point IDFT of given sequence is:",N);
    printf("\n\tReal x(n) \t Imaginary x(n)");

    for(n=0; n<N; n++)
    {
        printf("\nx(%d) = %f + j %f",n,xReal[n],xImag[n]);
    }
}