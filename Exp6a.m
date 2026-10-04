clc; close all; clear all;
f1 = input('Enter the pass band edge freq fp in Hz:');
f2 = input('Enter the stop band edge freq fs in Hz:');
Fs = input('Enter sampling freq Fs in Hz:');
rp = input('Enter pass band variation of gain in dB rp:');
rs = input('Enter stop band attenuation in dB rs:');
wp = 2*pi*f1/Fs; % Digital frequencies
ws = 2*pi*f2/Fs;
wp = 2*tan(wp/2); % Pre warped analog frequencies
ws = 2*tan(ws/2);
[n,wn] = buttord(wp,ws,rp,rs,'s');
[num,den] = butter(n,wn,'s');
[b,a] = bilinear(num,den,1);
disp('The digital filter numerator coefficients are:'); disp(b);
disp('The digital filter denominator coefficients are:'); disp(a);
freqz(b,a,512,Fs);
t=0:1/Fs:0.1;
x=sin(2*pi*1000*t)+cos(2*pi*2000*t);
figure,plot(t,x);
xlabel('Time (sec)');
ylabel('Amplitude');
title('input Wave');
y=filter(b,a,x);
figure,plot(t,y);
xlabel('Time(sec)');
ylabel('Amplitude');
title('output Wave');