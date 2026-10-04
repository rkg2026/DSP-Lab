clc; close all; clear all;

x = [1 2 3 4];

% Upsampling by 3
L = 3;
y = zeros(1, L*length(x) - (L-1));
y(1:L:end) = x;

disp('Original sequence is:');
disp(x);

disp('Sequence after upsampling by 3 is:');
disp(y);

% Downsampling by 2
d = 2;
z = y(1:d:end);

disp('Sequence after downsampling by 2 is:');
disp(z);

% Plot original sequence
n = 0:length(x)-1;
subplot(3,1,1);
stem(n,x);
xlabel('n---->');
ylabel('x(n)');
title('Original Sequence');

% Plot upsampled sequence
n1 = 0:length(y)-1;
subplot(3,1,2);
stem(n1,y);
xlabel('n---->');
ylabel('y(n)');
title('Sequence after Upsampling by 3');

% Plot downsampled sequence
n2 = 0:length(z)-1;
subplot(3,1,3);
stem(n2,z);
xlabel('n---->');
ylabel('z(n)');
title('Sequence after Downsampling by 2');