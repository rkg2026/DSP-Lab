clc; close all; clear all;
x1 = input('Enter the input sequence x1(n):');
N = length(x1);
X1k = fft(x1,N)
R11k = X1k.*conj(X1k);
r11 = ifft(R11k);
% to plot input sequence
figure(1); n1 = 0:length(x1)-1;
subplot(2,1,1), stem(n1,x1),grid,zoom on;
xlabel('n'); ylabel('x1(n)');
title('Input sequence x1(n)');
n2 = 0:length(r11)-1;
subplot(2,1,2),stem(n2,r11);
xlabel('n'); ylabel('r11(n)');
title('Circular Auto correlation of sequence x1(n) is r11(n)');
disp(r11);