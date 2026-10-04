clc;close all;clear all;
z=[];
%x=randi(10,1,5)
x = input('Enter the input sequence x(n):');
d = input('Enter the downsampling factor :');
m = length(x);
disp('Downsampled sequence is');
z=x(1:d:m)
n=0:m-1;
l=0:length(z)-1;
subplot(2,1,1),stem(n,x);
xlabel('n---->');ylabel('x(n)');
title('Sequence before downsampling');
subplot(2,1,2),stem(l,z);
xlabel('n---->');ylabel('z(n)');
title('Sequence after downsampling');