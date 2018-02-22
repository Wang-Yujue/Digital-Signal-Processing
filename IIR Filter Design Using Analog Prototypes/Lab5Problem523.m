close all
clear
fs = 200;        % Sampling frequency
fp = 32;
fst = 38;
Rp = 1;           % Passband ripple
Rs = 25;          % Stopband attenuation

[n,fo,ao,w] = firpmord([fp fst],[1 0],[10^(Rp/10),10^(-Rs/10)],fs);
b=firpm(n,fo,ao,w);
freqz(b,1,512,fs);
title('n = 23 Optimum FIR filter designed by firpm')