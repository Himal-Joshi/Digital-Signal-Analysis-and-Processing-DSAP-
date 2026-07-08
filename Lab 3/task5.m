clc;
close all;
clear all;

x = ones(1,6);
h1 = ones(1,6);
h2 = ones(1,3);

y1 = conv(x,h1);
y2 = conv(x,h2);

subplot(2,2,1)
stem(0:5,x,'filled');
title('x[n] / Himal Joshi, 28');
grid on;

subplot(2,2,2)
stem(0:5,h1,'filled');
title('h[n] Length 6');
grid on;

subplot(2,2,3)
stem(0:length(y1)-1,y1,'filled');
title('Triangle Output');
grid on;

subplot(2,2,4)
stem(0:length(y2)-1,y2,'filled');
title('Trapezoid Output');
grid on;