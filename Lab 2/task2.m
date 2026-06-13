clc;
close all;
clear all;

% Generate impulses
[d1,n] = impseq(-2,-5,5);   % delta(n+2)
[d2,n] = impseq(4,-5,5);    % delta(n-4)

% Composite signal
x = 2*d1 - d2;

stem(n,x,'filled');
hold on;

% Highlight non-zero samples
stem(-2,2,'r','filled');
stem(4,-1,'r','filled');

text(-2,2.2,'(-2, 2)');
text(4,-0.8,'(4, -1)');

xlabel('n');
ylabel('amplitude');
title('x(n)=2\delta(n+2)-\delta(n-4) / Himal Joshi, 28');
grid on;
hold off;
