clc;
close all;
clear all;

n = 0:40;

[u1,~] = stepseq(0,0,40);
[u2,~] = stepseq(20,0,40);
[u3,~] = stepseq(40,0,40);

x = cos(0.1*pi*n).*(u1-u2) + ...
    0.5*sin(0.2*pi*n).*(u2-u3);

energy_sample = abs(x).^2;

stem(n,energy_sample,'filled');
xlabel('n');
ylabel('|x(n)|^2');
title('Energy Contribution per Sample / Himal Joshi, 28');
grid on;