close all
clear
N=4;
wc=0.3*pi;
Td=20; %design parameter to be varied
Omega_c=wc/Td;
k=0:3;
s=Omega_c*exp(1j*pi/(2*N)*(2*k+N+1));

Hcs = tf(Omega_c^4,real(poly(s)));
figure
impulse(Hcs);

a = [poly(s)];
b = [Omega_c^4];
h = freqs(b,a);
mag = abs(h);
figure
plot(20*log(mag)), grid on
xlabel 'Frequency (rad/s)', ylabel Magnitude

[bz,az] = impinvar(b,a,1/Td); %sampling frequency 1/Td
figure
impz(1/Td*bz,az,[],1/Td);
hn=impz(1/Td*bz,az,[],1/Td);
figure
dtftdB(hn);
xlim([0 1]), grid on