function [a] = a_f(y, p)
T = length(y)-1;
W = p;
H = T-p+1;
b = y(W+1:T+1);
L = nan(H, W);
for i = 1:(H)
    for j = 1:(W)
        L(i, j) = y(p+i-j);
    end
end
M = [ones(H, 1) L];
a = M\b;
end
