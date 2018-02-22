clear
close all
N=4;
wc=0.3*pi;
Td=2;
Omega_c=2/Td*tan(wc/2);
k=0:N-1;
s=Omega_c*exp(1j*pi/(2*N)*(2*k+N+1));

Hcs = tf(Omega_c^N,real(poly(s)));
figure
impulse(Hcs);

a = [poly(s)];
b = [Omega_c^4];
%w = logspace(-10,10);
h = freqs(b,a);
mag = abs(h);
%phase = angle(h);
%phasedeg = phase*180/pi;
figure
plot(20*log10(mag)), grid on
xlabel 'Frequency (rad/s)', ylabel Magnitude
%subplot(2,1,2), semilogx(w,phasedeg), grid on
%xlabel 'Frequency (rad/s)', ylabel 'Phase (degrees)'

[bz,az] = bilinear(b,a,1/Td); %sampling frequency 1/Td Hz
figure                        % Analog to digital conversion
%fvtool(bz,az)                     % Visualize the filter
impz(1/Td*bz,az,[],1/Td);
hn=impz(1/Td*bz,az,[],1/Td);
%n=0:50;
%delta=+(n==0);
%hn=filter(bz,az,delta);
%plot(1:length(hn),hn)
figure
dtftdB(hn);
xlim([0 1]), grid on