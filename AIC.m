function pA=AIC(X)
N=length(X);
for m=1:10;
    a = aryule(X,m);
    for n=m:N-1
        for k=1:m
            sum1=sum(a(k)*X(n+1-k));
        end
        sum2=sum((X(n+1)+sum1)^2);
    end
    sigma(m)=sum2/(N-m);
end
m=1:10;
AIC=log(sigma)+m*2/N;
[~,pA]=min(AIC); %pA is selected as model order by AIC
end


    