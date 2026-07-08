clc;
close all;
clear all;

x = [1 2 3 4];
h = [2 1 2];

Lx = length(x);
Lh = length(h);
Ly = Lx + Lh - 1;

y_manual = zeros(1,Ly);

for n = 1:Ly
    for k = 1:Lx
        j = n-k+1;
        if(j>=1 && j<=Lh)
            y_manual(n)=y_manual(n)+x(k)*h(j);
        end
    end
end

y_builtin = conv(x,h);

n = 0:Ly-1;

subplot(2,1,1)
stem(n,y_manual,'filled');
xlabel('n');
ylabel('Amplitude');
title('Manual Convolution / Himal Joshi, 28');
grid on;

subplot(2,1,2)
stem(n,y_builtin,'filled');
xlabel('n');
ylabel('Amplitude');
title('Built-in conv() Result / Himal Joshi, 28');
grid on;