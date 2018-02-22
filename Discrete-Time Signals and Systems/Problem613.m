x = [1 8 3 2 5];
h = [3 5 2];
covmat(x,h);
conv(x,h);
n=0:35;
h=0.2*(n>=0)-0.2*(n>4);
x1=+(n>=0)-(n>9);
x2=sin(0.2*pi*n);
x3=sin(0.4*pi*n);
covmat(x1,h)
conv(x1,h)
covmat(x2,h)
conv(x2,h)
covmat(x3,h)
conv(x3,h)
