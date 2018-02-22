clear
fs=44100;
mic=[19 18 1.6];
n=12;
r=0.2;
rm=[20 19 21];
src=[5 2 1];
h=rir(fs, mic, n, r, rm, src);
[s,Fs] = audioread('speech.wav');
c=conv(h,s); %the length of resulting vector is N=111726
%sound(c,Fs);
N=length(h); %the length of system is N=55727
M=1*N;
H=fft(h);
Hi=1./H;
hi=ifft(Hi,M); %restore the signal
s0=conv(hi,c);
sound(s0,Fs);