clc;
close all;
clear all;

%% ===== Task 5 Signal =====

n = -2:10;
x = [1:7,6:-1:1];

[xs1,ns1] = sigshift(x,n,5);
xs1 = 2*xs1;

[xs2,ns2] = sigshift(x,n,-4);
xs2 = -3*xs2;

[x1,n1] = sigadd(xs1,ns1,xs2,ns2);

%% ===== Task 6 Signal =====

[xf,nf] = sigfold(x,n);
[xfs,nfs] = sigshift(xf,nf,3);

[xs,ns] = sigshift(x,n,2);

[xm,nm] = sigmult(x,n,xs,ns);

[x2,n2] = sigadd(xfs,nfs,xm,nm);

%% ===== Task 7 Signal =====

n3 = 0:40;

[u1,~] = stepseq(0,0,40);
[u2,~] = stepseq(20,0,40);
[u3,~] = stepseq(40,0,40);

x3 = cos(0.1*pi*n3).*(u1-u2) + ...
     0.5*sin(0.2*pi*n3).*(u2-u3);

%% ===== Energy & Power =====

[E1,P1] = energypower(x1);
[E2,P2] = energypower(x2);
[E3,P3] = energypower(x3);

fprintf('\n');
fprintf('-------------------------------------------\n');
fprintf(' Signal\t\tEnergy\t\tPower\n');
fprintf('-------------------------------------------\n');
fprintf(' Task 5\t\t%.2f\t\t%.2f\n',E1,P1);
fprintf(' Task 6\t\t%.2f\t\t%.2f\n',E2,P2);
fprintf(' Task 7\t\t%.2f\t\t%.2f\n',E3,P3);
fprintf('-------------------------------------------\n');