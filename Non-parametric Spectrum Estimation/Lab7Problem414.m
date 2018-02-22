clear
close all
load ar7.mat
L=5;
N=length(X);
M=N/L;
w=hamming(M);
[omega,Cxx]=spec1(X,L,w);
plot(omega,10*log10(Cxx))
hold on
xlabel('\omega');
ylabel('10logCxx(e^{j\omega})');
a=1-0.95;
N_a=norminv(1-a/2);
Interval1=10*log10(Cxx)-10*log(N_a/sqrt(L));
Interval2=10*log10(Cxx)+10*log(N_a/sqrt(L));
plot(omega,Interval1)
hold on
plot(omega,Interval2)
legend('Log Spectrum','Lower Interval','Upper Interval')