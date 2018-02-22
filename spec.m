function [omega,Ixx]=spec(X,N)
[S,omega] = dtftL(X,N); % zero-paddings N is assigned
Ixx=(abs(S)).^2/N;

if nargout==0
   plot(omega,Ixx)
   set(gca,'xlim',[-pi pi])
   xlabel('\omega')
   ylabel('Ixx(e^{j\omega})')
end
end