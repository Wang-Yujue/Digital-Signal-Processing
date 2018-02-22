clear
close all
n=12;
f=fibonacci(n);
for m=2:12;
    R(m)=f(m)/f(m-1);
end
m=1:12;
plot(m,R)
xlim([1 12])
hold on
phi(m)=(sqrt(5)+1)/2;
plot(m,phi,'r -')