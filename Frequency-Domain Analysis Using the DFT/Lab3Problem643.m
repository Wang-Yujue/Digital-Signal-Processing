fs=44100;
mic=[19 18 1.6];
n=12;
r=0.5; %reflection coefficient for the walls, in general -1<r<1.
rm=[8 8 8]; %row vector giving the dimensions of the room. 
src=[5 2 1];
h=rir(fs, mic, n, r, rm, src);
[s,fs] = audioread('speech.wav');
c=conv(h,s); %the length of resulting vector is 111726
sound(c,fs);