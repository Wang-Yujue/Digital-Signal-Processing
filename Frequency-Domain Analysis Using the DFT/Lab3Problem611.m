clear
close all
N=32;
n=0:N-1;
x=0.8*sin(0.2*pi*n);
Xk=fft(x);
N=length(Xk);
wk=2*pi*(0:1/N:1-1/N);
subplot(2,1,1)
stem(wk,abs(Xk))

X=dft(x);
N=length(X);
wk=2*pi*(0:1/N:1-1/N);
subplot(2,1,2)
stem(wk,abs(X))