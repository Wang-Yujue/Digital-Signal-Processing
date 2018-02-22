clear
close all
N=53; % same values for the lowpass filter in the last question Kaiser N=53
wc=0.15*pi; % same as last question cutoff frequency wc=0.15pi
alpha=(N-1)/2;
o=round(wc/(2*pi/N));
Hmag=[ones(1,o),zeros(1,(N+1)/2-o)];
wk=2*pi/N*(0:alpha);
Hphi=exp(-1j*wk*alpha);
H=Hmag.*Hphi;
H=[H,conj(H(end:-1:2))];
h=ifft(H);
subplot(2,1,1)
n=0:N-1;
stem(n,h)
xlim([0 52])
xlabel('n')
ylabel('h(n)')
subplot(2,1,2)
dtft(h);
xlim([0 1])