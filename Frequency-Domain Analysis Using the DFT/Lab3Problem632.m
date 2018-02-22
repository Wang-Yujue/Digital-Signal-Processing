clear
N=256; %duration of one siganl
fs=8000; %sampling frequency
x=dtmfdial('#',fs);
[symbol,col,row]=dtmfcoef(x,fs,N);