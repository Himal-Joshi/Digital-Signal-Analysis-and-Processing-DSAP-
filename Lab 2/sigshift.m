function [y, ny] = sigshift(x, n, n0)

% Shift: y(n) = x(n - n0)

y = x;
ny = n + n0;

end