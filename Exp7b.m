clc;
close all;

N=input('Enter the value of N=');
Wc=input('Enter the value of Wc=');

window1=boxcar(N);
window2=hamming(N);

%Rectangular window
b1=fir1(N-1,Wc,'high',window1);
disp('Rectangular Window)H1(Z)=')
disp(b1)
[H1,W1]=freqz(b1,1);
figure
subplot(2,1,1)
plot(W1/pi,20*log(abs(H1)));
xlabel('nF')
ylabel('Magnitude(dB)')
title('MAGNITUDE RESPONSE-RECTANGULAR WINDOW')
grid on
subplot(2,1,2)
plot(W1/pi,angle(H1));
xlabel('nF')
ylabel('Angle')
grid on
title('PHASE RESPONSE')

%Hamming window
% BOOK ERROR: The book uses "window3" here, but defines the Hamming
% window as "window2" above. Therefore, window2 is used.
b3=fir1(N-1,Wc,'high',window2);
disp('Hamming Window)H3(Z)=')
disp(b3)
[H3,W3]=freqz(b3,1);
figure
subplot(2,1,1)
plot(W3/pi,20*log(abs(H3)));
xlabel('nF')
ylabel('Magnitude(dB)')
title('MAGNITUDE RESPONSE-HAMMING WINDOW')
grid on
subplot(2,1,2)
plot(W3/pi,angle(H3));
xlabel('nF')
ylabel('Angle')
grid on
title('PHASE RESPONSE')