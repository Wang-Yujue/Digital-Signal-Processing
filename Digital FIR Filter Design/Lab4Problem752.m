clear
close all
load noise_5insx.mat
load speech.mat
%sound(x_speech)
%sound(x_5insx)
SNR=snr(x_speech,1.07*x_5insx); 
R=x_speech+1.07*x_5insx; %SNR=3dB
sound(R)
subplot(3,1,1)
%dtftL(x_speech,length(x_speech));
dtftL(x_speech,1024);
title('Signal')
subplot(3,1,2)
%dtftL(1.07*x_5insx,length(x_5insx));
dtftL(1.07*x_5insx,1024);
title('Noise SNR=3dB')

%SNR=snr(x_speech,1.51*x_5insx);
R=x_speech+1.51*x_5insx; %SNR=0.0285dB
sound(R)
subplot(3,1,3)
%dtftL(1.07*x_5insx,length(x_5insx));
dtftL(1.51*x_5insx,1024);
title('Noise SNR=0dB')