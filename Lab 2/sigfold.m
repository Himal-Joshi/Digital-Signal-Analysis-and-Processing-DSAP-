function [y, n] = sigfold(x, n)

% Fold: y(n) = x(-n)

y = fliplr(x);
n = -fliplr(n);

end