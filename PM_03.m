clc;
clear;
close all;
Am=1;
Ac=1;
fm=2;
fc=100;
t=0:0.001:1;
B = 5;

m = Am*sin(2*pi*fm*t+pi/3);
c = Ac*cos(2*pi*fc*t+pi/6);
s = Ac*cos(2*pi*fc*t+(B.*sin(2*pi*fm*t)));

subplot(3,1,1);
plot(t,m);
title('message signal');
xlabel('time');
ylabel('amplitude');
grid on;

subplot(3,1,2);
plot(t,c);
title('carrier signal');
xlabel('time');
ylabel('amplitude');
grid on;

subplot(3,1,3);
plot(t,s);
title('PM signal');
xlabel('time');
ylabel('amplitude');
grid on;








