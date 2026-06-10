clc;
close all;
clear all;

A=5;
f=3;
t = 0:0.01:1;
x = A*sawtooth(2*pi*f*t,0.2);
y = A*sawtooth(2*pi*f*t,0.5);
z = A*sawtooth(2*pi*f*t,0.7);
m = A*sawtooth(2*pi*f*t,0.9);

 subplot (2,4,1)
 plot(t,x);
 xlabel('time');
 ylabel('amplitude');
 title('continuous sawtooth wave/ Himal Joshi, 28');
 grid on ;

 subplot (2,4,2)
 stem(t,x);
 xlabel('time');
 ylabel('amplitude');
 title('discrete sawtooth wave/ Himal Joshi, 28');
 grid on ;

 subplot (2,4,3)
 plot(t,y);
 xlabel('time');
 ylabel('amplitude');
 title('continuous sawtooth wave/ Himal Joshi, 28');
 grid on ;

 subplot (2,4,4)
 stem(t,y);
 xlabel('time');
 ylabel('amplitude');
 title('discrete sawtooth wave/ Himal Joshi, 28');
 grid on ;

 subplot (2,4,5)
 plot(t,z);
 xlabel('time');
 ylabel('amplitude');
 title('continuous sawtooth wave/ Himal Joshi, 28');
 grid on ;

 subplot (2,4,6)
 stem(t,z);
 xlabel('time');
 ylabel('amplitude');
 title('discrete sawtooth wave/ Himal Joshi, 28');
 grid on ;

 subplot (2,4,7)
 plot(t,m);
 xlabel('time');
 ylabel('amplitude');
 title('continuous sawtooth wave/ Himal Joshi, 28');
 grid on ;

 subplot (2,4,8)
 stem(t,m);
 xlabel('time');
 ylabel('amplitude');
 title('discrete sawtooth wave/ Himal Joshi, 28');
 grid on ;
