clc;
close all;
clear all;

A=5;
f=3;
t = 0:0.01:1;
x = A*sin(2*pi*f*t);
y = A*cos(2*pi*f*t);


 subplot (2,2,1)
 plot(t,x);
 xlabel('time');
 ylabel('amplitude');
 title('continuous sinewave/ Himal Joshi, 28');
 grid on ;
 
 subplot (2,2,2)
 plot(t,y);
 xlabel('time');
 ylabel('amplitude');
 title('continuous coswave/ Himal Joshi, 28');
 grid on ;
 
 subplot (2,2,3)
 stem(t,x);
 xlabel('time');
 ylabel('amplitude');
 title('discrete sinewave/ Himal Joshi, 28');
 grid on ;

 subplot (2,2,4)
 stem(t,y);
 xlabel('time');
 ylabel('amplitude');
 title('discrete coswave/ Himal Joshi, 28');
 grid on ;