clear
close all
load ma3.mat
q=3; %MA(3) process
[bk,~]=maparam(x,q);
[Cxx,w] = freqz(bk,1);
plot(w,abs(Cxx))
hold on

%b=[cxx(7) cxx(6) cxx(5) cxx(4) cxx(3) cxx(2) cxx(1)];
%a=[0 0 0 1 0 0 0];
%[Cxxe,w]=freqz(b,a);
%subplot(2,1,2)
%plot(w,abs(Cxxe))
%xlim([0 pi])
%xlabel('\omega ')
%ylabel('|Cxx(e^{j\omega})|')
%title('Estimated spectrum')

A = [1 0.4 -0.2 0.15];
[H,omega] = freqz(A,1);
plot(omega,abs(H))
xlim([0 pi])
xlabel('\omega')
ylabel('PSD')
legend('True Power Spectral Density','Estimated spectrum')
grid on