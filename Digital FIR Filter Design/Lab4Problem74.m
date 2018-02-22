clear
close all
f = [0 0.1 0.2 0.3 0.4 0.5 0.6 0.8 0.9 1];
a = [0 0.0 1.0 1.0 0.0 0.0 0.5 0.5 0.0 0];
N=10;
    b = firpm(N,f,a);
    [h,w] = freqz(b,1,512);
    figure
    plot(f,a,w/pi,abs(h))
    legend('Ideal','firpm Design')
    xlabel 'Radian Frequency (\omega/\pi)', ylabel 'Magnitude'
    title N=10
N=25;
    b = firpm(N,f,a);
    [h,w] = freqz(b,1,512);
    figure
    plot(f,a,w/pi,abs(h))
    legend('Ideal','firpm Design')
    xlabel 'Radian Frequency (\omega/\pi)', ylabel 'Magnitude'
    title N=25
N=50;
    b = firpm(N,f,a);
    [h,w] = freqz(b,1,512);
    figure
    plot(f,a,w/pi,abs(h))
    legend('Ideal','firpm Design')
    xlabel 'Radian Frequency (\omega/\pi)', ylabel 'Magnitude'
    title N=50