clc; close all; clear all
x = input('Enter the input sequence x(n):');
h = input('Enter the impulse response h(n):');
N = length(x) + length(h) - 1;
Xk = fft(x,N)
Hk = fft(h,N)
Yk = Xk .* Hk
yn = ifft(Yk)

% to plot the input sequences
figure(1); n1 = 0:length(x)-1;
subplot(2,2,1), stem(n1,x);
xlabel('n'); ylabel('x(n)');
title('input sequence x(n)');

n2 = 0:length(h)-1;
subplot(2,2,2), stem(n2,h);
xlabel('n'); ylabel('y(n)');
title('input sequence h(n)');

% to plot convolved sequences
n3 = 0:length(yn)-1;
subplot(2,2,3), stem(n3,yn);
xlabel('n'); ylabel('y(n)');
title('Linear convolved sequence');