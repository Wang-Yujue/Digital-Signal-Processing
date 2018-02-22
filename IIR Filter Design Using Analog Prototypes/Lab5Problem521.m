clear
fs=200;
fp=32;
fst=38;
Rp=1; %no more than 1 dB of ripple in a passband 
Rs=25; %at least 25 dB of attenuation in the stopband
Wp = 2*pi*fp/fs;
Ws = 2*pi*fst/fs;
[n1,Wc1] = buttord(Wp/pi,Ws/pi,Rp,Rs); 
[n2,Wc2] = cheb1ord(Wp/pi,Ws/pi,Rp,Rs);
[n3,Wc3] = ellipord(Wp/pi,Ws/pi,Rp,Rs);