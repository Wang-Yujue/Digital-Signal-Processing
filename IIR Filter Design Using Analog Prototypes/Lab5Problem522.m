close all
clear
fs=200;
fp=32;
fst=38;
Rp=1; %no more than 1 dB of ripple in a passband                          
Rs=25; %at least 25 dB of attenuation in the stopband
Wp = 2*pi*fp/fs;
Ws = 2*pi*fst/fs;
[n1,Wn1] = buttord(Wp/pi,Ws/pi,Rp,Rs); 
[n2,Wn2] = cheb1ord(Wp/pi,Ws/pi,Rp,Rs);
[n3,Wn3] = ellipord(Wp/pi,Ws/pi,Rp,Rs);

[b,a] = butter(n1,Wn1);
figure
freqz(b,a)
title('n = 17 Butterworth Filter')
H1 = tf(b,a);
[z,~] = zero(H1);
p=pole(H1);
figure
plot(z,'o')
hold on
plot(p,'x'), grid on
xlabel 'Real' ,ylabel 'Imaginary'
legend('zeros','poles','Location','bestoutside')
figure
impz(b,a), grid on
xlim([0 50])

[b,a] = cheby1(n2,Rp,Wp/pi);
figure
freqz(b,a)
title('n = 7 Chebyshev Type I Filter')
H2 = tf(b,a);
[z,~] = zero(H2);
p=pole(H2);
figure
plot(z,'o') 
hold on
plot(p,'x'), grid on
xlabel 'Real' ,ylabel 'Imaginary'
legend('zeros','poles','Location','bestoutside')
figure
impz(b,a), grid on
xlim([0 50])

[b,a] = ellip(n3,Rp,Rs,Wn3);
figure
freqz(b,a)
title('n = 4 Elliptic lowpass filter')
H3 = tf(b,a);
[z,~] = zero(H3);
p=pole(H3);
figure
plot(z,'o') 
hold on
plot(p,'x'), grid on
xlabel 'Real' ,ylabel 'Imaginary'
legend('zeros','poles','Location','bestoutside')
figure
impz(b,a), grid on
xlim([0 50])