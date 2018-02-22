b=[0.16 0.48 0.48 0.16];
a=[1 0.13 0.52 0.3];
for k=0:100
    n=0:255;
    wk=pi*k/100;
    xk=cos(wk*n);
    y=filter(b,a,xk);
    m(k+1)=max(y(30:255));
end
plot(m)