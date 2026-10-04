clc;
close all;
clear all;

fc = 1000;        % Cutoff frequency in Hz
fs = 8000;        % Sampling frequency in Hz
N = 31;           % Filter order
beta = 2.5;       % Beta

L = N + 1;

% Generate Kaiser window
w = kaiser(L,beta);

% Normalized cutoff frequency
wc = 2*pi*fc/fs;

% Design FIR low pass filter
h = fir1(N,wc/pi,w);

disp('The FIR filter coefficients are:');
disp(h);

% Frequency response
figure(1);
freqz(h,1,512,fs);

% Impulse response
figure(2);
n = 0:N;
stem(n,h);
xlabel('n');
ylabel('h(n)');
title('Impulse Response of FIR LPF using Kaiser Window');