clear
load rec_white

x_e1=x(:,1);
x_e2=x(:,2);
d=0.26;
vs=343;
fs=48000;
k=(d/vs)*fs;

genxcorr(x_e1,x_e2,k);