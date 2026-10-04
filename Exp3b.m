% To find the impulse response of a system defined by the Transfer Function.
clc; close all; clear all;

b = input('Enter the coefficients of X:');
a = input('Enter the coefficients of Y:');
N = input('Enter the length of the impulse response N:');

% To calculate the impulse response
Xi = [1, zeros(1,N-1)]; % Define an Impulse sequence.
h = filter(b,a,Xi); % compute impulse response.

disp('The impulse response is:'); disp(h);

% To calculate poles and zeros of H(z)
Z = roots(b); %Zeros are roots of the numerator polynomial
P = roots(a); %Poles are roots of the denominator polynomial

disp('The Zeros of H(z) are'); disp(Z);
disp('The Poles of H(z) are'); disp(P);

% To get Pole-zero plot
figure;
zplane(b,a); title('pole zero plot');