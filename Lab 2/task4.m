clc;
close all;
clear all;

n = 0:20;

[u1,~] = stepseq(0,0,20);
[u2,~] = stepseq(10,0,20);
[u3,~] = stepseq(20,0,20);

% Linear rise region
x1 = n .* (u1 - u2);

% Exponential decay region
x2 = 10*exp(-0.3*(n-10)) .* (u2 - u3);

% Composite signal
x = x1 + x2;

stem(n,x,'filled');
hold on;

xline(10,'--r','n=10');

text(3,6,'Linear rise');
text(12,7,'Exponential decay');

xlabel('n');
ylabel('amplitude');
title('Piecewise Exponential-Linear Sequence / Himal Joshi, 28');
grid on;

hold off;