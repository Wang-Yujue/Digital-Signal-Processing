clear
close all
N=4;
wc=0.3*pi;
Td=2; %sampling interval
Omega_c=wc/Td;
k=0:N-1;
s=Omega_c*exp(1j*pi/(2*N)*(2*k+N+1));
a = poly(s);
b = Omega_c^4;
Hcs = tf(b,real(a));
figure
impulse(Hcs);

H = freqs(b,a);
figure
plot(20*log10(abs(H)))
grid on
xlabel('Frequency')
ylabel('Magnitude')

[bz,az] = impinvar(b,a,1/Td); %sampling frequency 1/Td
figure
impz(bz,az,[],1/Td);
hn=impz(bz,az,[],1/Td);
figure
dtftdB(hn);
xlim([0 1])
grid on