clear
close all
N=1024;
%mu = [1 2];
sigma = sqrt(1);
R = chol(sigma);
z = randn(1,N)*R;
b=1;
a=[1,0.5,0.7,0.2];
x = filter(b,a,z);
arcoeffs = aryule(x,3);
%[S,omega] = dtftL(arcoeffs,3*16); %zero-padding with 16 times of length zeros
%Cxx=sigma^2./(abs(1+S)).^2;
%plot(omega,Cxx)
[Cxx,omega]=freqz(1,arcoeffs);
plot(omega,abs(Cxx))
hold on

[Cxx1,omega1] = pyulear(x,3);
plot(omega1,abs(Cxx1))
hold on
[Cxx2,omega2]=freqz(b,a);
plot(omega2,abs(Cxx2))
xlim([0 pi])
xlabel('\omega')
ylabel('Cxx(e^{j\omega})')
legend('Estimated spectrum through aryule',...
    'Estimated spectrum through pyulear'...
    ,'Specrum computed from the true AR parameters')
grid on