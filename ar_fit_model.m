function [a] = ar_fit_model(y, p)
%[y, ~] = audioread('gong.wav');
T = length(y)-1;
W = p;
H = T-p+1;
b = y(W+1:T+1);
L = nan(H, W);
for i = 1:(H)
    for j = 1:(W)
        %L(i, j) = y(T-p-j+i);
        %L(i, j) = y(W+i-1-j+1);
        L(i, j) = y(p+i-j);
    end
end
M = [ones(H, 1) L];
a = M\b;
end
