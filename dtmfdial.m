function xx = dtmfdial(keys,fs)
%DTMFDIAL  
% create signal vector of DTMF tones 
% that will dial a touch-tone telephone
%
%   usage: xx = DTMFDIAL(keys,fs)
%
%  keys - character string with valid 
%           key names
%    fs - sampling frequency
%    xx - signal vector that is the 
%           concatenation of DTMF tones
  
dtmf.keys = ...
    ['1','2','3','A';
     '4','5','6','B';
     '7','8','9','C';
     '*','0','#','D'];
ff_cols = [1209,1336,1477,1633];
ff_rows = [ 697; 770; 852; 941];
dtmf.colTones = ff_cols;
dtmf.rowTones = ff_rows;
  
%tt = (0:511)/fs;   % <- for listening
%nn = zeros(1,256); %
tt = (0:255)/fs;   
nn = zeros(1,128); 
xx = [];
  
for n = 1:length(keys),
  [row,col] = find(keys(n)==dtmf.keys);
  xx = [xx, cos(2*pi*dtmf.colTones(col)*tt) + ...
            cos(2*pi*dtmf.rowTones(row)*tt)];
  xx = [xx, nn];
end
  
