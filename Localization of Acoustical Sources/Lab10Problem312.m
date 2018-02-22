clear
close all
load rec_white

figure
spectrogram(x(:,1))

x_e1=x(:,1);
x_e2=x(:,2);
d=0.26;
vs=343;
fs=48000;
deltan_m=(d/vs)*fs;
r = xcorr(x_e1,x_e2,round(deltan_m));
lag=-round(deltan_m):round(deltan_m);
figure
plot(lag,r)
xlabel('lag of interest')
ylabel('cross-SOMF')

[~,kappa]=max(r);
deltat=-kappa/fs;
theta=asin(deltat/(d/vs));