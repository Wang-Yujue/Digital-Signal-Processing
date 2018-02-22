close all
load group08_dynamic

fs=432000/9;
M=512;
N=length(x);
L=floor(2*N/M-1);
w=hamming(M);
D=floor(N/(L+1));
d=0.17;
vs=343;
k=d*fs/vs; %maximum lad index

X1=x(:,1);
X2=x(:,2);

for l=1:L;
    for n=1:M;
        X_l1(l,n)=X1(n+(l-1)*D)*w(n);
    end
end

for l=1:L;
    for n=1:M;
        X_l2(l,n)=X2(n+(l-1)*D)*w(n);
    end
end

for l=1:L
    gx1x2(l,:)=genxcorr(X_l1(l,:),X_l2(l,:),k); %maximum lag index 24
    deltat(l)=-max(gx1x2(l,:))/fs;
    theta(l)=asin(deltat(l)/(d/vs));
end

[~,Ix1x2(L,:)]=genxcorr(X_l1(L,:),X_l2(L,:),k);
alpha=0.5;

for i=2:L
    for m=2:L
        Ix1x2(m-1,:)=((1-alpha)*Ix1x2(m,:)-Ix1x2(m,:))/alpha;
    end
end

figure
plot(1:l,theta)
xlim([0 l])
xlabel('Each Segment m')
ylabel('AOA \theta')
