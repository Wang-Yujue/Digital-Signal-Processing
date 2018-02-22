s=fft(g,128);
p=s.*conj(s);
w=(0:127)/128;
plot(2*w,p)
soundsc(g)