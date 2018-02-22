fs=44100;
mic=[19 18 1.6];
n=12;
r=0.3;
rm=[20 19 21];
src=[5 2 1];
h=rir(fs, mic, n, r, rm, src);
[s,fs] = audioread('speech.wav');
c=conv(h,s); %the length of resulting vector is 111726
sound(c,fs);