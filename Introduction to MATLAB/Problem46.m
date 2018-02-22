clear
close all
n=0:100;
F=1; %continuous time frequency
T=0.05; %sampling time
s=sin(2*pi*F*n*T);
figure(1) 
plot(n,s) %discrete time
figure(2) 
plot(n*T,s) %continuous time
figure(3) 
stem(n,s) %discrete time nature

S=fft(s,128);
P=S.*conj(S);
w=(0:127)/128;
figure(4)
plot(2*w,P) %normalized frequency in rad/sample
figure(5)
plot(w/T,P) % frequency in Hz
s2=s+sin(2*pi*4*n*T);
figure(6)
plot(n,s2); %discrete time
figure(7)
plot(n*T,s2); %continuous time
S2=fft(s2,128);
P2=S2.*conj(S2);
figure(8)
plot(2*w,P2) %normalized frequency in rad/sample
figure(9)
plot(w/T,P2) % frequency in Hz

b=[1 1 1 1]/4;
a=1;
[H,w1]=freqz(b,a);
figure(10)
plot(w1/(2*pi*T),abs(H)) %frequency response of filter
sf=filter(b,a,s2); %filter signal
figure(11)
plot(n,sf); %discrete time
figure(12)
plot(n*T,sf); %continuous time
Sf=fft(sf,128);
Pf=Sf.*conj(Sf);
figure(13)
plot(2*w,Pf) %normalized frequency in rad/sample
figure(14)
plot(w/T,Pf) % frequency in Hz