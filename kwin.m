function [w,N]=kwin(deltaw,A)
N=ceil((A-8)/(2.285*deltaw)+1);
if (21<=A)&&(A<50)
    beta=0.5842*(A-21)^0.4+0.07866*(A-21);
elseif A>=50
    beta=0.1102*(A-8.7);
else
    beta=0;
end
n=0:N-1;
w=besseli(0,beta*sqrt((1-(2*n/(N-1)-1).^2)))/besseli(0,beta);
end