clear
close all
load group08_static

L=512;
L1=(240000/8)*7-(L-1)/2;
L2=(240000/8)*7+(512)/2;
d=0.17;
vs=343;
fs=240000/8;
deltan_m=(d/vs)*fs;

x_e1=x(L1:L2,1);
x_e2=x(L1:L2,2);

x_e3=x(L1:L2,3);
x_e4=x(L1:L2,4);

x_e5=x(L1:L2,5);
x_e6=x(L1:L2,6);

r1= xcorr(x_e1,x_e2,round(deltan_m));
lag=-round(deltan_m):round(deltan_m);

r2= xcorr(x_e3,x_e4,round(deltan_m));

r3= xcorr(x_e5,x_e6,round(deltan_m));

deltat1=-max(r1)/fs;
theta1=asin(deltat1/(d/vs));

deltat2=-max(r2)/fs;
theta2=asin(deltat2/(d/vs));

deltat3=-max(r3)/fs;
theta3=asin(deltat3/(d/vs));

x=-5:10;
x12=2.69;
y12=0.19;
y1=tan(pi/2-theta1)*(x-x12)+y12;
plot(x,y1)
hold on

x34=5.19;
y34=3.21;
y2=tan(pi/2-theta2)*(x-x34)+y34;
plot(x,y2)
hold on

x56=2.70;
y56=5.27;
y3=tan(pi/2-theta3)*(x-x56)+y56;
plot(x,y3)
hold on 

plot(1.4,710,'*')