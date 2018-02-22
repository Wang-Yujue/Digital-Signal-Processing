clear 
close all
load mynumber.mat
N=256; %duration of one siganl
fs=8000; %sampling frequency
[Symbol,row,col]=dtmfcoef(xx,fs,N);