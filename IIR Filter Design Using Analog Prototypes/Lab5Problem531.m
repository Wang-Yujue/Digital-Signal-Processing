clear
close all
fs=1000;
fp=150;
fst=100;
Rp=1; %no more than 1 dB of ripple in a passband                                      
Rs=40;   %at least 40 dB of attenuation in the stopband
Wp = 2*pi*fp/fs;
Ws = 2*pi*fst/fs;
% Chebyshev Type II filter have a monotone passband and an equiripple
% stopband
[N,~] = cheb2ord(Wp/pi,Ws/pi,Rp,Rs); %order of Chebyshev Type II IIR filter

%[z,p,k] = cheby2(n,Rs,Ws/pi,'high');
%sos = zp2sos(z,p,k);
%fvtool(sos,'Analysis','freq')

[b,a] = cheby2(N,Rs,Ws/pi,'high'); %order n=6
figure
freqz(b,a)
title('N = 6 Chebyshev Type II Highpass Filter')

t=0:1/fs:1;
xn=5*sin(200*pi*t)+2*cos(300*pi*t);
dataIn = xn(1:300); %300 samples
dataOut = filter(b,a,dataIn);
n = 0:length(dataIn)-1;
figure
plot(n,dataIn)
hold on
plot(n,dataOut)
grid on
legend('Input Data','Filtered Data')
title('Plot of Input and Filtered Data 300 samples')
figure
plot(n,dataIn)
hold on
plot(n,dataOut)
xlim([0 30])
grid on
legend('Input Data','Filtered Data','Location','BestOutside')
title('Plot of Input and Filtered Data zoomed in')