clc; close all; clear all;

%x=randi(10,1,5)
x = input('Enter the input sequence x(n):');
L = input('Enter upsampling factor: ');
y = zeros(1,L*length(x));
disp('Upsampled sequence is');
y(1:L:length(y)) = x

n=0:length(x)-1;
l=0:length(y)-1;
subplot(2,1,1),stem(n,x);
xlabel('n---->');ylabel('x(n)');
title('Sequence before upsampling');

subplot(2,1,2),stem(l,y);
xlabel('n---->');ylabel('y(n)');
title('Sequence after upsampling');