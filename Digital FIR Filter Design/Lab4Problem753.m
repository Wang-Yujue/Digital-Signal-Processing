clear
close all
load noise_5insx.mat
load speech.mat
R=x_speech+1.07*x_5insx; %SNR=3dB
N=length(R);
[S,w]=dtftL(R,N);

%refer to Frequency Sampling Method to design a bandpass filter to recover
%the speech signal

[S1,w1]=dtftL(x_speech,length(x_speech));
[S2,w2]=dtftL(1.07*x_5insx,length(1.07*x_5insx));

w_1=find(abs(S2)==max(abs(S2)));
w_2=find(abs(S1)==max(abs(S1)));
W1=(abs(w(w_2))-abs(w(w_1)))/2; % lower cutoff frequency
w_3=find(abs(S)==min(abs(S)));
W2=abs(w((w_3))); % higher cutoff frequency

N2=53;
alpha=(N2-1)/2;
a=round(N2*min(W1)/(2*pi)); %=424
b=round(N2*min(W2)/(2*pi)); %=8254
Hmag=[zeros(1,a),ones(1,b-a),zeros(1,(N2+1)/2-b)];
wk=2*pi/N2*(0:alpha);
Hphi=exp(-1j*wk*alpha);
H=Hmag.*Hphi;
H=[H,conj(H(end:-1:2))];
h=ifft(H);
figure
dtftL(h,N2);
%xlim([0 3])

SR=conv(R,h);
figure
dtftL(SR,N);
%sound(SR)