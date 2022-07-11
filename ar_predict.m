% INPUT:
% a: (p+1)-by-1 vector, estimated parameters of AR model 
%    [ p = length(y0), see below]
% ordering of vector *a* is such that: 
%   a(1) = a_0 [ from Eq. (2) in this Task description ]
%   a(2) = a_1 [ from Eq. (2) in this Task description ]
%   .
%   .
%   a(p+1) = a_p [ from Eq. (2) in this Task description ]
%
% y0: p-by-1 vector, beginning of sequence to be predicted 
%
% N: required length of predicted sequence, including the 
%    beginning represented by y0. 
%
% OUTPUT: 
% y: N-by-1 vector, the predicted sequence y.
function [y] = ar_predict(a, y0, N)
p = length(a) - 1; 
y = zeros(N, 1);
y(1:p) = y0; 
%N = 10;
for i = p+1:N
    % y(i) = a(1)+a(2:p+1)'*y(i-p:1:i-1);
    y(i) = a(1)+a(2:p+1)'*y(i-1:-1:i-p); %300->1 303->3
end    
 
% computes the rest of elements of y, starting from (p+1)-th
% one up to N-th one. 
%
% discard the code from here and implement the functionality. 
 


