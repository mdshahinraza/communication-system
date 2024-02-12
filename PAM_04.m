clear;
close all;
clc;
Am=1;
Ac=1;
fm=2;
fc=50;
t=0:0.001:1;

m=Am*sin(2*pi*fm*t);
c=Ac/2*square(2*pi*fc*t)+Ac/2; 
s=m.*c;

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
title('pam signal');
xlabel('time');
ylabel('amplitude');
grid on;









