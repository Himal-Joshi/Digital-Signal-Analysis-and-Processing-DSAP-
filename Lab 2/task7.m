clc;
close all;
clear all;

n = 0:40;

[u1,~] = stepseq(0,0,40);
[u2,~] = stepseq(20,0,40);
[u3,~] = stepseq(40,0,40);

% Windowed signal
x = cos(0.1*pi*n).*(u1-u2) + ...
    0.5*sin(0.2*pi*n).*(u2-u3);

% Reference cosine
xref = cos(0.1*pi*n);

subplot(2,1,1)
stem(n,x,'filled');
xlabel('n');
ylabel('amplitude');
title('Windowed Sinusoidal Signal / Himal Joshi, 28');
grid on;

subplot(2,1,2)
stem(n,xref,'filled');
xlabel('n');
ylabel('amplitude');
title('Reference Signal cos(0.1\pin) / Himal Joshi, 28');
grid on;


% Windowing restricts a signal to a specific interval.
% Samples outside the selected interval become zero,
% allowing different signal segments to exist in
% different time ranges.