function A=envelope(N,d,n);
%ENVELOPE 
% envelope models typical transient 
% characteristics of a musical tone 
% (defined in 3 exponential sections:
% onset, decay and release)
% 
%   usage : A=envelope(N,d,n)
%
%  A - envelope
%  N - signal length
%  d - amplitude of 2nd section
%  n - two timing indices
%

if nargin==0,
  N=2^13;         % <-- default values
  d=0.25;         %
  n=[240,7200];   % 
end

a1=8/(n(1)-0);    % <-- exponential decay constants
a2=4/(n(2)-n(1)); %    (depending on time difference)
a3=6/(N-n(2));    % 

s1=1-exp(-a1*(1:n(1)));            % <-- 3 sec. (onset
s2=d+(1-d)*exp(-a2*(1:n(2)-n(1))); %             decay
s3=d*exp(-a3*(1:N-n(2)));          %            release)
A=[s1,s2,s3];
