clear
close all
N=256;
fs=8000;
keys='7';
x=dtmfdial(keys,fs);
H=dft(x);
M=length(H);
w=2*pi*(0:1/M:1-1/M);
plot(w,abs(H))
xlim([0 2*pi])