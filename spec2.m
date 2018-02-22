function [wk,Cxx]=spec2(X,m)
% smoothed periodogram
N=length(X);
[S,~] = dtftL(X,N);   
Ixx=(abs(S)).^2/N;
%I=[omega;Ixx'];
% same idea with moving average
for k=0:N-1
    if k<m
        Cxx(k+1)=sum(Ixx(1:k+m+1))/(k+m+1);
    elseif k>N-m-1
        Cxx(1+k)=sum(Ixx(k-m+1:N))/(N+m-k+2);
    else
        Cxx(1+k)=sum(Ixx(k-m+1:k+m+1))/(2*m-1);
    end
end

k=0:N-1;
wk=2*pi*k/N;
if nargout==0
plot(wk,Cxx)
set(gca,'xlim',[0 pi]);
xlabel('\omega_k');
ylabel('C^Sxx(e^{j\omega_k})');
end
end