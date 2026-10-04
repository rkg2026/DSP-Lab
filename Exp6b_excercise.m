clc; close all; clear all;

fc = 1000;
Fs = 8000;
N = 2;
rp = 2;

% Butterworth High Pass Filter
[num1,den1] = butter(N,2*pi*fc,'high','s');
[b1,a1] = bilinear(num1,den1,Fs);

disp('Butterworth HPF numerator coefficients are:');
disp(b1);
disp('Butterworth HPF denominator coefficients are:');
disp(a1);

figure;
freqz(b1,a1,512,Fs);
title('Butterworth High Pass Filter');

% Chebyshev Type-I High Pass Filter
[num2,den2] = cheby1(N,rp,2*pi*fc,'high','s');
[b2,a2] = bilinear(num2,den2,Fs);

disp('Chebyshev Type-I HPF numerator coefficients are:');
disp(b2);
disp('Chebyshev Type-I HPF denominator coefficients are:');
disp(a2);

figure;
freqz(b2,a2,512,Fs);
title('Chebyshev Type-I High Pass Filter');