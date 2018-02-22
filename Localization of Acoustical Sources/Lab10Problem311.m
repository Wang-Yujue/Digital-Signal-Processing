clear
close all
load group08_static

fs=240000/5;
%sound(x(:,1),fs)
%sound(x(:,2))
figure
spectrogram(x(:,1))
L=512;
L1=(240000/8)*7-(L-1)/2;
L2=(240000/8)*7+L/2;
x_e1=x(L1:L2,1);
x_e2=x(L1:L2,2);
d=0.17;
vs=343;

deltan_m=(d/vs)*fs;
r= xcorr(x_e1,x_e2,round(deltan_m));
lag=-round(deltan_m):round(deltan_m);
figure
plot(lag,r)
xlabel('lag of interest')
ylabel('cross-SOMF')
grid on

[~,kappa]=max(r);
deltat=-kappa/fs;
theta=asin(deltat/(d/vs));