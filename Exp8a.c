#include<stdio.h>

void main()
{
    int m = 4, n = 4, i, j, k, y[10];
    int x[10] = {2,4,2,1};
    int h[10] = {3,5,3,1};

    for(i=0;i<m+n-1;i++)
    {
        y[i]=0;
        for(j=0;j<=i;j++)
            y[i]+=x[j]*h[i-j];
    }

    printf("Linear convolution \n");

    for(k=0;k<m+n-1;k++)
    {
        printf("%d\t", y[k]);
    }
}