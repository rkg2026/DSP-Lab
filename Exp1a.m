clc; close all; clear all;

%% i) Generation of unit Impulse signal
n=-2:1:2;
y=[zeros(1,2),ones(1,1),zeros(1,2)];
figure(1)
stem(n,y);
xlabel('n ----->'); ylabel('\delta(n)');
title('unit impulse');

%% ii) Generation of unit step signal
n=input('enter the n value');
n1=0:1:n-1;
y=ones(1,n);
figure(2)
plot(n1,y);
title('unit step');
xlabel('n ----->'); ylabel('u(n)');

%% iii) Generation of Ramp signal
n=input('enter the n value');
n1=0:n;
y=n1;
figure(3)
stem(y,n1);
title('ramp');
xlabel('n ----->'); ylabel('r(n)');

%% iv) Generation of Exponential signal
alpha=-.9;
n=-10:0.5:10;
y=power(alpha,n);
figure(4)
stem(n,y);
title('Exponential signal');
xlabel('n ----->'); ylabel('r(n)');