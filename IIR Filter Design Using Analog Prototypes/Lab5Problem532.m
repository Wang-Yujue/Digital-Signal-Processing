clear
close all
N=10;
w0=0.44*pi;
deltaw=0.08*pi;
w1=w0-deltaw/2;
w2=w0+deltaw/2;
Rp=1;    %no more than 1 dB of ripple in a passband 
Rs=50;   %at least 50 dB of attenuation in the stopband
[b,a] = ellip(N/2,Rp,Rs,[w1/pi w2/pi],'stop'); %Elliptic bandstop filter n=N/2
freqz(b,a)
title('N = 10 Elliptic bandstop filter')
n=0:200;
dataIn = sin(0.44*pi*n);
dataOut = filter(b,a,dataIn);
n = 0:length(dataIn)-1;
figure
plot(n,dataIn)
hold on
plot(n,dataOut)
grid on
legend('Input Data','Filtered Data')
title('Plot of Input and Filtered Data')
figure
plot(n,dataIn)
hold on
plot(n,dataOut)
xlim([0 20])
grid on
legend('Input Data','Filtered Data','Location','BestOutside')
title('Plot of Input and Filtered Data zoomed in')