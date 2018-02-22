clear
close all
for k=4:8
    N=2^k;
    n=0:N-1;
    x=0.8*sin(0.2*pi*n);
    %dft
    tic;
    X=dft(x);
    rdft(N)=toc;
    %fft
    tic;
    Xk=fft(x);
    rfft(N)=toc;
end
k=4:8;
N=2.^k;
plot(N,rdft(N))
hold on
plot(N,rfft(N))
legend('dft','fft')
xlabel('signal length')
ylabel('time of computations required')