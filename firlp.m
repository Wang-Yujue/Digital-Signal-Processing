function hd=firlp(N,wc)
alpha=(N-1)/2;
n=0:N-1;
hd=sin(wc*(n-alpha))./(pi*(n-alpha));
hd(alpha+1)=wc/pi; % when pi*(n-alpha)=0 assign the maximum value to hd
end