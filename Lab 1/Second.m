clc;
close all;
clear all;

A=5;
f=3;
dutycycle =1;
t = 0:0.01:1;
x = A*square(2*pi*f*t* dutycycle);


 subplot (2,2,1)
 plot(t,x);
 xlabel('time');
 ylabel('amplitude');
 title('continuous square wave/ Himal Joshi, 28');
 grid on ;

 subplot (2,2,2)
 stem(t,x);
 xlabel('time');
 ylabel('amplitude');
 title('discrete square wave/ Himal Joshi, 28');
 grid on ;
