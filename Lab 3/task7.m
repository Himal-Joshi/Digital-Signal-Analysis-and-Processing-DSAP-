clc;
close all;
clear all;

x = [1 2 1];
h1 = [1 -1];
h2 = [2 1];

y_left = conv(x,h1+h2);
y_right = conv(x,h1)+conv(x,h2);

n = 0:length(y_left)-1;

if isequal(y_left,y_right)
    disp('Distributive Property Verified');
else
    disp('Distributive Property Failed');
end

stem(n,y_left,'o','LineWidth',1.5);
hold on;
stem(n,y_right,'x','LineWidth',1.5);

xlabel('n');
ylabel('Amplitude');
title('Distributive Property Verification / Himal Joshi, 28');
legend('LHS','RHS');
grid on;