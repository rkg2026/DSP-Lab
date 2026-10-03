clc; close all;

x = input('Enter the input sequence x(n):');
y = input('Enter the output sequence y(n):');

h = deconv(y,x);

disp('The impulse response is :'); disp(h);

%Plot the input sequence
n = 0:length(x) - 1;
subplot(2,2,1), stem(n,x);
title('Input Sequence');
xlabel('n----->'); ylabel('x(n)---->');

%Plot the output sequence
n = 0:length(y) - 1;
subplot(2,2,2), stem(n,y);
title('Output Sequence');
xlabel('n----->'); ylabel('y(n)---->');

%Plot the impulse response
n = 0:length(h) - 1;
subplot(2,1,2); stem(n,h);
title('Impulse Response');
xlabel('n----->'); ylabel('h(n)---->');