clear
f1=392;
fs=8192;
N=fs;
syms k
fk=k*f1;
pk=0.25.^(k-1);
for n=0:N-1;
    x(n+1)=symsum(pk*sin(((2*pi*fk)/fs)*n),k,2,8);
end
soundsc(x)