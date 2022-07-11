function [y] = a_p(a, y0, N)
p = length(a) - 1; 
y = zeros(N, 1);
y(1:p) = y0; 
for i = p+1:N
    y(i) = a(1)+a(2:p+1)'*y(i-1:-1:i-p);
end    
