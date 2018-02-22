clear
close all
load arunknown.mat
N=length(X);
for m=1:10
    a = aryule(X,m);
    for n=m:N-1
        k=1:m;
        sum1(n)=sum(a(k).*X(n-k+1));
    end
    n=m:N-1;
    sum2=sum((X(n+1)+sum1(n)).^2);
    sigma(m)=sum2/(N-m);
end
m=1:10;
AIC=log(sigma)+m*2/N;
MDL=log(sigma)+m*log(N)/N;
[minA,pA]=min(AIC); %pA is selected as model order by AIC
[minM,pM]=min(MDL); %pM is selected as model order by MDL
subplot(2,1,1)
plot(AIC,'--o')
xlabel('Order')
ylabel('AIC criteria')
grid on
subplot(2,1,2)
plot(MDL,'--.')
xlabel('Order')
ylabel('MDL criteria')
grid on