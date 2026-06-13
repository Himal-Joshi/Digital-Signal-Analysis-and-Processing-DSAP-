function [E,P] = energypower(x)

% Computes energy and average power

E = sum(abs(x).^2);

P = E/length(x);

end