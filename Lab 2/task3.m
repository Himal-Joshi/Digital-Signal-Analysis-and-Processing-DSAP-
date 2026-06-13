clc;
close all;
clear all;

% u[n]
[u1,n] = stepseq(0,-5,10);

% u[n-3]
[u2,n] = stepseq(3,-5,10);

subplot(1,2,1)
stem(n,u1,'filled');
xlabel('n');
ylabel('amplitude');
title('unit step signal u[n] / Himal Joshi, 28');
grid on;

subplot(1,2,2)
stem(n,u2,'filled');
xlabel('n');
ylabel('amplitude');
title('delayed step signal u[n-3] / Himal Joshi, 28');
grid on;