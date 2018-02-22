clear
close all
N=32;
n=0:N-1;
x_0=0.8*sin(0.2*pi*n);
w1=rectwin(N);
w2=bartlett(N);
w3=hamming(N);
x1=x_0.*w1';
x2=x_0.*w2';
x3=x_0.*w3';
subplot(3,1,1)
dtft(x1);
subplot(3,1,2)
dtft(x2);
subplot(3,1,3)
dtft(x3);