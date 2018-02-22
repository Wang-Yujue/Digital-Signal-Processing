function [Symbol,row,col]=dtmfcoef(x,fs,N)
X=dft(x);
M=length(X);
w=2*pi*(0:1/M:1-1/M);
b=w(abs(X)>(N/4));
f=b*fs/(2*pi);

dtmf.keys = ...
    ['1','2','3','A';
    '4','5','6','B';
    '7','8','9','C';
    '*','0','#','D'];
ff_cols = [1209 1336 1477 1633];
ff_rows = [ 697 770 852 941];
for n=1:4
    for m=1:length(f)
        if abs(ff_cols(n)-f(m))<10
            col=n;
        elseif abs(ff_rows(n)-f(m))<10
            row=n;
        end
    end
end
Symbol=dtmf.keys(row,col);