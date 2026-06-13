function [y, ny] = sigadd(x1, n1, x2, n2)

% General addition y(n) = x1(n) + x2(n)

ny = min(min(n1),min(n2)) : max(max(n1),max(n2));

y1 = zeros(1,length(ny));
y2 = zeros(1,length(ny));

y1((ny >= min(n1)) & (ny <= max(n1))) = x1;
y2((ny >= min(n2)) & (ny <= max(n2))) = x2;

y = y1 + y2;

end