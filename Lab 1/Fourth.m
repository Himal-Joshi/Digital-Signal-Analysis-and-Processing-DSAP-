clc;
close all;
clear all;

A=5;
f=3;
t = 0:0.01:1;
x = A*sawtooth(2*pi*f*t,0.1);


 subplot (2,2,1)
 plot(t,x);
 xlabel('time');
 ylabel('amplitude');
 title('continuous sawtooth wave/ Himal Joshi, 28');
 grid on ;

 subplot (2,2,2)
 stem(t,x);
 xlabel('time');
 ylabel('amplitude');
 title('discrete sawtooth wave/ Himal Joshi, 28');
 grid on ;