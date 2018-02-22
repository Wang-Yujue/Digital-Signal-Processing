clear
close all
N=36;
w1=rectwin(N);
w2=bartlett(N);
w3=hamming(N);
[H1,w]=dtftdB(w1);
[main,~]=find(abs((H1-((H1(1))-3)))<=0.5); % in log scale mainlobe width is 3dB bandwidth
mainlobe1=w(main(1));
[H2,~]=dtftdB(w2);
[main,~]=find(abs((H2-((H2(1))-3)))<=0.5);
mainlobe2=w(main(1));
[H3,~]=dtftdB(w3);
[main,~]=find(abs((H3-((H3(3))-3)))<=0.5);
mainlobe3=w(main(1));