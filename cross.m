function [X,Y]=cross(X1,Y1,X2,Y2)

% 直线相交求交点

A1=Y1(1)-Y1(2);
B1=X1(2)-X1(1);
C1=Y1(2)*X1(1)-Y1(1)*X1(2);
A2=Y2(1)-Y2(2);
B2=X2(2)-X2(1);
C2=Y2(2)*X2(1)-Y2(1)*X2(2);
D=det([A1,B1;A2,B2]);
X=det([-C1 B1;-C2 B2])/D;
Y=det([A1 -C1;A2,-C2])/D;