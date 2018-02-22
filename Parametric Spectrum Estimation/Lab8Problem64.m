clear
close all
load s5.mat
SH=s5(15600:16300);
AA=s5(16800:17500);
soundsc(SH);
soundsc(AA);
%display(SH)
%display(AA)

% Spectrum estimation of phoneme SH
arcoeffs = aryule(SH,10); %model order is 10
[CxxS1,omega]=freqz(1,arcoeffs);
figure
subplot(3,1,1)
plot(omega,10*log10(abs(CxxS1).^2))
xlim([0 pi])
xlabel('\omega')
ylabel('Cxx(e^{j\omega})')
title('AR(10) parametric spectrum')
grid on

[pxx,omega] = pwelch(SH); % default by L=8 50% overlap and a Hamming window
subplot(3,1,2)
plot(omega,10*log10(pxx))
xlim([0 pi]);
xlabel('\omega')
ylabel('Cxx(e^{j\omega})')
title('windowed averaged periodogram')
grid on

pAS=AIC(SH);
arcoeffs = aryule(SH,pAS); %model order is determined by AIC criteria
[CxxS1,omega]=freqz(1,arcoeffs);
subplot(3,1,3)
plot(omega,10*log10(abs(CxxS1).^2))
xlim([0 pi]);
xlabel('\omega')
ylabel('Cxx(e^{j\omega})')
title(['re-estimated AR(',num2str(pAS),') parametric spectrum'])
grid on


% Spectrum estimation of phoneme AA
arcoeffs = aryule(AA,10); %model order is 10
[CxxS1,omega]=freqz(1,arcoeffs);
figure
subplot(3,1,1)
plot(omega,10*log10(abs(CxxS1).^2))
xlim([0 pi]);
xlabel('\omega')
ylabel('Cxx(e^{j\omega})')
title('AR(10) parametric spectrum')
grid on

[pxx,omega] = pwelch(AA); % default by L=8 50% overlap and a Hamming window
subplot(3,1,2)
plot(omega,10*log10(pxx))
xlim([0 pi]);
xlabel('\omega')
ylabel('Cxx(e^{j\omega})')
title('windowed averaged periodogram')
grid on

pAA=AIC(AA);
arcoeffs = aryule(AA,pAA); %model order is determined by AIC criteria
[CxxS1,omega]=freqz(1,arcoeffs);
subplot(3,1,3)
plot(omega,10*log10(abs(CxxS1).^2))
xlim([0 pi]);
xlabel('\omega')
ylabel('Cxx(e^{j\omega})')
title(['re-estimated AR(',num2str(pAA),') parametric spectrum'])
grid on