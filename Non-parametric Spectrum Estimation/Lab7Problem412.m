clear
close all
load ar7.mat
L=10;
N=length(X);
M=N/L;
w=rectwin(M);
spec1(X,L,w);