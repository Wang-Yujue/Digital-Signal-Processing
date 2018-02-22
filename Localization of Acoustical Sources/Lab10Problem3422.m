e=10e-7;
k=round(k);
for m=1:L
    gx1x2(m,:) = real(ifft(Ix1x2(m,:)./(abs(Ix1x2(m,:))+e)));
    gx1x2(m,:) = ifftshift(gx1x2(m,:));
    N=length(gx1x2);
    for N=ceil(N/2-k):ceil(N/2+k);
        gx1x2(m,:) = gx1x2(m,N);
    end
    deltat(m)=-max(gx1x2(l,:))/fs;
    theta(m)=asin(deltat(l)/(d/vs));
end

plot(1:m,theta)
xlim([0 l])
xlabel('Each Segment m')
ylabel('AOA \theta')