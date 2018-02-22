clear
close all
N=36; 
a=0.6;
w0=0.2*pi; 
w1=w0+2*pi*a/N;
n=0:N-1;
x_0=cos(w0*n)+cos(w1*n);
w1=rectwin(N); 
w2=hamming(N);
x1=x_0.*w1';
x2=x_0.*w2';
subplot(2,1,1)
dtft(x1);
subplot(2,1,2)
dtft(x2);