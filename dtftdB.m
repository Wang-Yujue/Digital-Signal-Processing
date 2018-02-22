function [H,w]=dtftdB(x)
N=length(x);
n=0:N-1;
M=16*N; %zero padding 16 times of original length
w=2*pi*(0:1/M:1-1/M);
H=20*log(abs(fft(x,M)));
if nargout==0
    plot(w,H)
    ylabel('Magnitude dB')
    xlabel('\omega')
end
