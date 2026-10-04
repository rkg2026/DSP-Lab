clc; close all; clear all;
x=input('enter the first sequence');
h=input('enter the second sequence');
N=max(length(x), length(h));
x1=[x,zeros(1,N-length(x))];
h1=[h,zeros(1,N-length(h))];
n=0;

for m=1:N
    sum=0;
    for k=1:N
        if((m-k)>=0)
            n=m-k+1;
        else
            n=m-k+N+1;
        end
        sum=sum+(x1(k)*h1(n));
    end
    %disp(sum);
    y(m)=sum;
end

disp(y)