clc; close all; clear all;
wp = input('Enter wp in Radians:');
ws = input('Enter ws in Radians:');
wt = ws - wp;
n1 = ceil(8*pi/wt);
N = n1+rem(n1-1,2);
disp('The order of the FIR filter (Based on Hamming Window) is:'); disp(N);
%Define the window function
wn = hamming(N);
%To find the impulse response
wc = wp/pi
h = fir1(N-1,wc,wn)
figure(1);
freqz(h);
figure(2);
n = 0:N-1;
stem(n,h);
title('Impulse Response of FIR filter');
xlabel('n'); ylabel('h(n)');

% Note: For rectangular window the function is rectwin