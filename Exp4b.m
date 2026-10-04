clc; close all; clear all;
x1=input('enter the first sequence');
x2=input('enter the second sequence');
N=max(length(x1), length(x2))
X1K=fft(x1,N)
X2K=fft(x2,N)
ZK=X1K.*X2K
zc=ifft(ZK)
figure(1);
n1=0:length(x1)-1;subplot(2,2,1);stem(n1,x1);
xlabel('n');ylabel('x1(n)');title('input sequence x1(n)');

n2=0:length(x2)-1;subplot(2,2,2);stem(n2,x2);
xlabel('n');ylabel('x2(n)');title('input sequence x2(n)');

%plot output sequence
n3=0:N-1;
subplot(2,1,2), stem(n3,abs(zc));
xlabel('n'); ylabel('zc(n)'); title('circular convolution');