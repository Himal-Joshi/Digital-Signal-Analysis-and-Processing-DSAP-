clc;
close all;
clear all;

n = 0:15;

x = ones(size(n));
h = (0.7).^n;

y = conv(x,h);

ny = 0:length(y)-1;

subplot(3,1,1)
stem(n,x,'filled');
xlabel('n');
ylabel('Amplitude');
title('Unit Step Input / Himal Joshi, 28');
grid on;

subplot(3,1,2)
stem(n,h,'filled');
xlabel('n');
ylabel('Amplitude');
title('Impulse Response / Himal Joshi, 28');
grid on;

subplot(3,1,3)
stem(ny,y,'filled');
xlabel('n');
ylabel('Amplitude');
title('Step Response y[n] / Himal Joshi, 28');
grid on;