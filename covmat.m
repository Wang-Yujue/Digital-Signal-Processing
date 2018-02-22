function co=covmat(x,h)
r = [x zeros(1,length(h)-1)];
c = [x(1) zeros(1,length(h)-1)];
xConv = toeplitz(c,r);
co=h*xConv;
end



