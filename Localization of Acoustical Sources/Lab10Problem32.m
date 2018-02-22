clear
close all
load group08_static

fs=240000/5;
d=0.17;
vs=343;

L=512;
L1=(240000/8)*7-(L-1)/2;
L2=(240000/8)*7+L/2;
x_e1=x(L1:L2,1);
x_e2=x(L1:L2,2);
k=(d/vs)*fs;
genxcorr(x_e1,x_e2,k);