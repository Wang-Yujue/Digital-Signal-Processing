clear
close all
k = -3:.1:3;
z = normpdf(k,0,1);
figure
subplot(3,1,1)
plot(k,z)
cxx=cov(z);
subplot(3,1,2)
stem(cxx)
N=length(cxx);
subplot(3,1,3)
dtftL(cxx,16*N)

a1=1;
a2=2;
x(1)=0;
x(2)=0;
for n=3:60
    x(n)=z(n)-a1*x(n-1)-a2*x(n-2);
end
cxx=cov(x);
figure
subplot(2,1,1);
stem(cxx)
N=length(cxx);
subplot(2,1,2)
dtftL(cxx,16*N)

phi=unidpdf(0:2*pi);
w0=0.5*pi;
y=exp(j*(w0*n+phi))+z;
dtftL(cxx,16*length(cov(y)))