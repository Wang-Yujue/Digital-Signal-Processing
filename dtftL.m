function [S,w] = dtftL(s,M)
%DTFT  
% computes the discrete-time fourier 
% transform using a zeropadded fft 
%
%   usage: [S,w] = DTFT(s,M);
%
%  s - input signal
%  M - amount of zeropadding
%  S - discrete-time fourier transform
%  w - frequency vector
  
w = 2*pi*(-0.5:1/M:0.5-1/M);
S = fftshift(fft(s,M));
  
if nargout==0
  plot(w,abs(S))
  set(gca,'xlim',[-pi pi])
  xlabel('\omega')
  ylabel('|S(e^{j\omega})|')
end
  