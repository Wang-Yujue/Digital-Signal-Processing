clear
close all
wc=0.5*pi;
N1=17;
N2=51;
hd1=firlp(N1,wc);
subplot(2,2,1)
dtftdB(hd1);
title('firlp')
xlim([0 pi])
hold on
subplot(2,2,2)
dtftdB(rectwin(N1).*hd1');
xlim([0 pi])
title('Rectangular windowing')
hold on
subplot(2,2,3)
dtftdB(bartlett(N1).*hd1');
xlim([0 pi])
ylim([-100 20])
title('Bartlett windowing')
hold on
subplot(2,2,4)
dtftdB(hamming(N1).*hd1');
xlim([0 pi])
title('Hamming windowing')
hold on

hd2=firlp(N2,wc);
subplot(2,2,1)
dtftdB(hd2);
legend('N=17','N=51')
subplot(2,2,2)
dtftdB(rectwin(N2).*hd2');
legend('N=17','N=51')
subplot(2,2,3)
dtftdB(bartlett(N2).*hd2');
legend('N=17','N=51')
subplot(2,2,4)
dtftdB(hamming(N2).*hd2');
legend('N=17','N=51')