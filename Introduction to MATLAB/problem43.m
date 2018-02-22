clear
close all
x=rand(1000,1);
minx=min(x);
maxx=max(x);
meanx=mean(x);
stdx=std(x);

y=4*x-2;
meany=mean(y);
stdy=std(y);

z=randn(1000,1);
minz=min(z);
maxz=max(z);
meanz=mean(z);
stdz=std(z);
hist(z)