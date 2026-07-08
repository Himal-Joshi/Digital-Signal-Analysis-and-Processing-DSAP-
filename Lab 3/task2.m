clc;
close all;
clear all;

x = [3 -1 2];
nx = -1:1;

h = [1 2 1 4];
nh = -2:1;

y = conv(x,h);

ny_start = nx(1)+nh(1);
ny_end = nx(end)+nh(end);
ny = ny_start:ny_end;

subplot(3,1,1)
stem(nx,x,'filled');
xlabel('n');
ylabel('Amplitude');
title('Input Signal x[n] / Himal Joshi, 28');
grid on;

subplot(3,1,2)
stem(nh,h,'filled');
xlabel('n');
ylabel('Amplitude');
title('Impulse Response h[n] / Himal Joshi, 28');
grid on;

subplot(3,1,3)
stem(ny,y,'filled');
xlabel('n');
ylabel('Amplitude');
title('Convolution Output y[n] / Himal Joshi, 28');
grid on;