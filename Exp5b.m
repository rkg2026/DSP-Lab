clc; close all; clear all;
x1 = input('Enter the input sequence x1(n):');
x2 = input('Enter the input sequence x2(n):');
N = max(length(x1),length(x2));
X1k = fft(x1,N)
X2k = fft(x2,N)
R12k = X1k.*conj(X2k);
r12 = ifft(R12k)
% to plot input sequence
figure(1);
n1 = 0:length(x1)-1;
subplot(2,1,1), stem(n1,x1);
xlabel('n'); ylabel('x1(n)');
title('Input sequence x1(n)');
n2 = 0:length(x2)-1;
subplot(2,1,2), stem(n2,x2);
xlabel('n'); ylabel('x2(n)');
title('Input sequence x2(n)');
n3 = 0:N-1;

% to plot output sequence
figure(2);
stem(n3,abs(r12));
xlabel('n'); ylabel('r12(n)');
title('Circular cross correlation');
disp(r12);