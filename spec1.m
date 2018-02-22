function [omega,Cxx]=spec1(X,L,w)
%windowed, averaged periodogram
N=length(X);
M=N/L;
for l=1:L
    for n=1:M-1
        X_l(l,n)=X(n+(l-1)*M)*w(n);
    end
end

for l=1:L
    [S(l,:),omega] = dtftL(X_l(l,:),3*length(w)); %zero-padding with 3 times of length zeros
end
Ixx=(abs(S)).^2/sum((abs(w)).^2);
Cxx=sum(Ixx)/L;

if nargout==0
plot(omega,Cxx)
set(gca,'xlim',[-pi pi])
xlabel('\omega')
ylabel('Cxx(e^{j\omega})')
end
end