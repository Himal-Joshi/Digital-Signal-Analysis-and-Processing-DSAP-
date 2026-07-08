clc;
close all;
clear all;

h = [0.5 1 -0.5 2];
nh = 0:3;

delta = [1];
nd = 0;

delta_shift = [0 0 0 1];
nd2 = 0:3;

y1 = conv(h,delta);
ny1 = nh(1)+nd : nh(end)+nd;

y2 = conv(h,delta_shift);
ny2 = nh(1)+nd2(1):nh(end)+nd2(end);

subplot(3,1,1)
stem(nh,h,'filled');
xlabel('n');
ylabel('Amplitude');
title('Impulse Response h[n] / Himal Joshi, 28');
grid on;

subplot(3,1,2)
stem(ny1,y1,'filled');
xlabel('n');
ylabel('Amplitude');
title('h[n] * \delta[n] / Himal Joshi, 28');
grid on;

subplot(3,1,3)
stem(ny2,y2,'filled');
xlabel('n');
ylabel('Amplitude');
title('h[n] * \delta[n-3] / Himal Joshi, 28');
grid on;