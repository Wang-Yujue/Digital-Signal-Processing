n=-10:20;
%u=+(n>=0);
%delta=+(n==0);
x1= sin(0.12*pi*n);
x2= (n>=0)- ((n-6)>=0);
x3=(0.9.^n).*(n>=0);
x4=0.5*((n-1)==0) + ((n-2)==0)+ 0.5*((n-3)==0);
x5=0.9.^n.*cos(0.2*pi*n);
x6=sinc(0.2*n);
figure
xlim([-10,20])
subplot(2,3,1)
stem(n,x1)
subplot(2,3,2)
stem(n,x2)
subplot(2,3,3)
stem(n,x3)
subplot(2,3,4)
stem(n,x4)
subplot(2,3,5)
stem(n,x5)
subplot(2,3,6)
stem(n,x6)