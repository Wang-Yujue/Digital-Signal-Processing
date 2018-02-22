function [gx1x2,Ix1x2]=genxcorr(x1,x2,k)

%Generalized Cross-Correlation

k=round(k); %lag index
N=length(x1);
M=N*3; %zero-padding with 2 times of length zeros
[S1,~] = dtftL(x1,M);
[S2,~] = dtftL(x2,M);
Ix1x2=S1.*conj(S2)/N;

e=10e-7;
gx1x2 = real(ifft(Ix1x2./(abs(Ix1x2)+e)));
gx1x2 = ifftshift(gx1x2);
gx1x2 = gx1x2(ceil(length(gx1x2)/2-k):ceil(length(gx1x2)/2+k));

if nargout==0,
  plot(gx1x2)
  xlabel('\kappa');
  ylabel('GCC');
end
