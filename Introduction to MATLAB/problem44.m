clear
close all
r=0.5:0.1:10;
V=330;
h=V./(pi*r.^2);
A=2*pi*r.^2+2*pi*r.*h;
plot(r,A)
hold on
a=find(A==min(A));
plot(r(a),min(A),'g*')
ropt=r(a);
h=330/(pi*ropt^2);