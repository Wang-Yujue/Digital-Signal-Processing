clear
close all
deltaw=[2*pi*(8-5)/80 2*pi*(15.5-10.5)/80 2*pi*(20-18)/80 ];
r=((8+deltaw.^2)-sqrt((deltaw.^2+8).^2-64))/8;
w0=[2*pi*5/80 2*pi*10.5/80 2*pi*18/80]+deltaw/2;
load b3pulses.mat
for n=1:3
    b=[1 0 -1];
    a=[1 -2*r(n)*cos(w0(n)*pi) r(n)^2];
    [H,w]=freqz(b,a);
    figure
    subplot(2,1,1)
    plot(w/pi,20*log10(abs(H)))
    h=filter(b,a,x);
    subplot(2,1,2)
    plot(0:length(x)-1,h)
end







