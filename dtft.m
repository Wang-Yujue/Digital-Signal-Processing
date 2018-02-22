function [H,w]=dtft(x)
N=length(x);
M=16*N; %zero padding 16 times of original length
w=2*pi*(0:1/M:1-1/M);
H=fft(x,M);
if nargout==0
    plot(w/pi,abs(H))
    ylabel('|H(e^{j\omega})|')
    xlabel('\omega/\pi')
end