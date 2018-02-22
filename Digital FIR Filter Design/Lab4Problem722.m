clear
close all
wp=0.12*pi;
ws=0.18*pi;
A=30;
wc=wp+(ws-wp)/2;
[w,N]=kwin(ws-wp,A);
h=firlp(N,wc).*w; % odd N
subplot(2,1,1)
n=0:N-1;
stem(n,h)
xlim([0 52])
xlabel('n')
ylabel('h(n)')
subplot(2,1,2)
dtft(h);
xlim([0 1])