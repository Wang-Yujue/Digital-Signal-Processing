clear
close all
N=256;
%mu = [1 2];
sigma = sqrt(0.5);
R = chol(sigma);
z = randn(1,N)*R;
figure
plot(z)
grid on

n=0:N-1;
x=sin(0.2*pi*n)+2*sin(0.4*pi*n)+sin(0.45*pi*n)+z;
L=4; % segements
M=N/L;
w=hamming(M); % apply hamming window
[omega,Cxx]=spec1(x,L,w);
figure
plot(omega,10*log10(Cxx)) % log-scale
xlabel('\omega');
ylabel('10logCxx(e^{j\omega})');
grid on
xlim([-pi pi])