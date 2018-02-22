function [bk,cxx]=maparam(x,q)
cxx=xcorr(x);
n=ceil(length(cxx)/2)-q:ceil(length(cxx)/2)+q;
cxx=cxx(n);
%[Cxx,omega] = dtftL(cxx,3*16); %zero-padding with 16 times of length zeros
%z=exp(1i*omega);
%P=z.^q.*Cxx;
%p=poly(P);
p=flip(cxx);
r=roots(p);
zi=r(abs(r)<=1);
%B(z)=(1-ri(1).*z.^(-1)).*(1-ri(2).*z.^(-1)).*(1-ri(3).*z.^(-1));
%bk=[-(zi(1)+zi(2)+zi(3)) (zi(1)*zi(2))+zi(2)*zi(3)+zi(1)*zi(3) -zi(1)*zi(2)*zi(3)];
%a=[1 -zi(1)];
%b=[1 -zi(2)];
%c=[1 -zi(3)];
%d=conv(a,b);
%bk=conv(d,c);
bk=poly(zi);
end