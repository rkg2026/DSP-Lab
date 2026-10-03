clc; close all; clear all;

x = input('Enter the sequence x(n): \n');
h = input('Enter the sequence h(n): \n');
xr = input('input the range of x: \n');
hr = input('input the range of h: \n');

Zri = xr(1) + hr(1);
Zre = xr(length(x)) + hr(length(h));
yr = [Zri:Zre];

y = conv(x,h);

disp(y);
disp(yr);

figure;

% to plot the input sequences
subplot(3,1,1), stem(xr,x);
xlabel('n ----->'); ylabel('x(n)');
title('Input Sequence');

subplot(3,1,2), stem(hr,h);
xlabel('n ----->'); ylabel('h(n)');
title('Impulse response');

% to plot the convolved sequences
subplot(3,1,3), stem(yr,y);
xlabel('n ----->'); ylabel('y(n)');
title('Linear convolved Sequence');