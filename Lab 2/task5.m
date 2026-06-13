clc;
close all;
clear all;

n = -2:10;
x = [1:7,6:-1:1];

% 2x(n-5)
[xs1,ns1] = sigshift(x,n,5);
xs1 = 2*xs1;

% -3x(n+4)
[xs2,ns2] = sigshift(x,n,-4);
xs2 = -3*xs2;

% x1(n)
[x1,n1] = sigadd(xs1,ns1,xs2,ns2);

subplot(3,1,1)
stem(ns1,xs1,'filled');
xlabel('n');
ylabel('amplitude');
title('2x(n-5) / Himal Joshi, 28');
grid on;

subplot(3,1,2)
stem(ns2,xs2,'filled');
xlabel('n');
ylabel('amplitude');
title('-3x(n+4) / Himal Joshi, 28');
grid on;

subplot(3,1,3)
stem(n1,x1,'filled');
xlabel('n');
ylabel('amplitude');
title('x_1(n)=2x(n-5)-3x(n+4) / Himal Joshi, 28');
grid on;