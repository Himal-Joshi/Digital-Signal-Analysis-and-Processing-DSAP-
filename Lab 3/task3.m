clc;
close all;
clear all;

x = [3 -1 2];
nx = -1:1;

h = [1 2 1 4];
nh = -2:1;

y1 = conv(x,h);
y2 = conv(h,x);

ny = (nx(1)+nh(1)):(nx(end)+nh(end));

if max(abs(y1-y2)) < 1e-12
    disp('Commutative Property Verified');
else
    disp('Commutative Property Failed');
end

stem(ny,y1,'o','LineWidth',1.5);
hold on;
stem(ny,y2,'x','LineWidth',1.5);

xlabel('n');
ylabel('Amplitude');
title('Commutative Property Verification / Himal Joshi, 28');
legend('x*h','h*x');
grid on;