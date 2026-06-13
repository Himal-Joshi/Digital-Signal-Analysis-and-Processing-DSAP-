clc;
close all;
clear all;

n = -2:10;
x = [1:7,6:-1:1];

% x(3-n) = fold then shift by 3
[xf,nf] = sigfold(x,n);
[xfs,nfs] = sigshift(xf,nf,3);

% x(n-2)
[xs,ns] = sigshift(x,n,2);

% x(n)x(n-2)
[xm,nm] = sigmult(x,n,xs,ns);

% x2(n)=x(3-n)+x(n)x(n-2)
[x2,n2] = sigadd(xfs,nfs,xm,nm);

subplot(3,1,1)
stem(nfs,xfs,'filled');
xlabel('n');
ylabel('amplitude');
title('x(3-n) / Himal Joshi, 28');
grid on;

subplot(3,1,2)
stem(nm,xm,'filled');
xlabel('n');
ylabel('amplitude');
title('x(n)x(n-2) / Himal Joshi, 28');
grid on;

subplot(3,1,3)
stem(n2,x2,'filled');
xlabel('n');
ylabel('amplitude');
title('x_2(n)=x(3-n)+x(n)x(n-2) / Himal Joshi, 28');
grid on;