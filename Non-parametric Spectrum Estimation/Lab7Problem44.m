clear
close all
[y,t]=readfile('C:\Users\Yujue\Documents\Courses\Digital Signal Processing Lab\Group8\Wang Yujue.txt');
x=detrend(y);
fs=1/0.01; % sampling frequency
fc=40; % cutoff frequency
N=30; % filter order
wc=2*pi*fc/fs; % cutoff frequency in rad/s
[b,a] = butter(N,wc/pi);
%freqz(b,a)
dataIn = x;
dataOut = filter(b,a,dataIn);
figure
plot(t,dataOut)
xlim([13 23])
grid on
xlabel('seconds')
ylabel('mV')
Heart=(13.5/10)*60; %rate in beat per minute

[omega,Ixx]=spec(dataOut,512);
figure
plot(omega*fs/(4*pi),Ixx) %Hertz be the unit of the abscissa
grid on
xlabel('Hz')
ylabel('Ixx(e^{j\omega})')
xlim([-10 10])

L=6;
Nl=length(dataOut);
M=Nl/L;
w=hamming(M);
[omega,Cxx]=spec1(dataOut,L,w);
figure
plot(omega*fs/(4*pi),Cxx) %Hertz be the unit of the abscissa
grid on
xlabel('Hz')
ylabel('Cxx(e^{j\omega})')
xlim([-10 10])

%I=[omega*fs/2,Ixx];
C=[omega*fs/(4*pi); Cxx];
[Cxxm,k]=max(Cxx);
Heartrate=60*abs(C(1,k));

%Heartrate1=60/(find(I==max(Ixx))); % Heart rate in beats/min determined through periodogram
%Heartrate2=60./()); % Heart rate in beats/min determined through  averaged periodogram
