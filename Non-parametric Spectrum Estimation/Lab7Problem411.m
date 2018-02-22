clear
close all
load ar7.mat
L=10; % L segments
N=length(X);
M=N/L; % length of each segment
w=rectwin(M-1);
for l=1:L;
    for n=1:M-1;
        X_l(l,n)=X(n+(l-1)*M)*w(n);
    end
end

for l=1:L;
    [S(l,:),omega] = dtftL(X_l(l,:),3*N);
end
Ixx=(abs(S)).^2/sum((abs(w)).^2);
Cxx=sum(Ixx)/L;
plot(omega,abs(Cxx))