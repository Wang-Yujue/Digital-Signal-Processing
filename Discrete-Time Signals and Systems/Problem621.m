f(1)=392;
fs=8192;
N=fs;
n=0:N-1;
x=sin(((2*pi*f(1))/fs)*n);
soundsc(x)