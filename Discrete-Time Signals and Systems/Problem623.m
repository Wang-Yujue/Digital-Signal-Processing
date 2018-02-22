f1=392;
fs=8192;
N=fs;
syms k
fk=k*f1;
pk=0.25.^(k-1);
for n=0:N-1
    x(n+1)=symsum(pk*sin(((2*pi*fk)/fs)*n),k,2,8);
end
soundsc(x)

N=2^13;         
d=0.25;         
n1=[240,7200]; 
M=envelope(N,d,n1).*x;
subplot(2,1,1)
plot(M)
subplot(2,1,2)
s=fft(M,128);
p=s.*conj(s);
w=(0:127)/128;
plot(2*w,p)