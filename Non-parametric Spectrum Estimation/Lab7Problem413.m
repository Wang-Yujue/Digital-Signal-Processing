clear
close all
load ar7.mat
L=10;
N=length(X);
M=N/L;
w=rectwin(M);
subplot(2,1,1)
spec1(X,L,w);
w=hamming(M);
subplot(2,1,2)
spec1(X,L,w);