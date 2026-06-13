clc;
close all;
clear all;

% delta[n]
[delta1,n] = impseq(0,-5,10);

% delta[n-4]
[delta2,n] = impseq(4,-5,10);

subplot(1,2,1)
stem(n,delta1,'filled');
xlabel('n');
ylabel('amplitude');
title('unit impulse signal \delta[n] / Himal Joshi, 28');
grid on;

subplot(1,2,2)
stem(n,delta2,'filled');
xlabel('n');
ylabel('amplitude');
title('shifted impulse signal \delta[n-4] / Himal Joshi, 28');
grid on;