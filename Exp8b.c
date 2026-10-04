#include<stdio.h>

void main()
{
    int i, k, m, sum, n, N=4;
    int x[10] = {1,1,1,1};
    int h[10] = {1,1,1,1};
    n=0;

    for(m=0; m<N; m++)
    {
        sum=0;
        for(k=0; k<N; k++)
        {
            if((m-k)>=0)
                n = m-k;
            else
                n = m-k+N;

            sum = sum + (x[k]*h[n]);
        }

        printf("%d\t", sum);
    }
}

/*
Exercise:
Consider two finite-length sequences:
X1[n] = {1,2,3}, N1 = 3
X2[n] = {0,-1,1,2}, N2 = 4

To perform the exercise using the above program:

1. Since N1 = 3 and N2 = 4, take N = 4.
2. Make both sequences length 4 by zero-padding X1[n]:
   X1[n] = {1,2,3,0}
   X2[n] = {0,-1,1,2}

3. Change:
   N = 4              (no change)
   x[10] = {1,1,1,1}  ->  {1,2,3,0}
   h[10] = {1,1,1,1}  ->  {0,-1,1,2}

4. Run the program.

Expected result:
y[n] = {7,5,-1,1}
*/