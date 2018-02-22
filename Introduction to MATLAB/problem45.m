clear
close all
load glob_warm.mat
N=2007-1850+1;
m=70;
for n=1:N
    if n<m+1  
        x=Ta(1:n+m);
        xa(n)=sum(x)/(n+m);
    elseif n>N-m
        x=Ta(n-m:N);
        xa(n)=sum(x)/(N+m-n+1);
    else
        x=Ta(n-m:n+m);
        xa(n)=sum(x)/(2*m+1);
    end
end
plot(Ta)
hold on
plot(xa)
xlabel('year')
ylabel('averaged temperature anomaly')
legend('original series','smoothed version')
        
        