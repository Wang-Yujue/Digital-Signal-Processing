clear
close all
N=64;
%mu = [1 2];
sigma = sqrt(0.5);
R = chol(sigma);
z = randn(1,N)*R;
figure
plot(z)
grid on

n=0:N-1;
x=sin(0.2*pi*n)+2*sin(0.4*pi*n)+sin(0.45*pi*n)+z;
[omega,Ixx]=spec(x,192);% zero padding with 192 zeros
figure
plot(omega,10*log10(Ixx)) %log-scale zero-padding 3 times of the length which is 192 if N=64, 768 if N=256
xlabel('\omega');
ylabel('10logIxx(e^{j\omega})');
grid on