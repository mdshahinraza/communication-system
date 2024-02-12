clc;
clear ;
close all;
a=1;          % amplitude for message and carrier signal :assumtion both are equal
fm=5;         % frequency for message signal 
fc=30;          % frequency for carrier signal  fc>>fm
t=0:0.001:1;       %time vector 

c=a*sin(2*pi*fc*t);  %equation for carrier signal 
m=a*square(2*pi*fm*t); % square pulse of message signal 
p=c.*m;              %equation for psk

subplot(3,1,1);
plot(t,m);
title('message signal (square pulse)');
xlabel('time');
ylabel('amplitude');
grid on;
ylim([-2,2]);

subplot(3,1,2);
plot(t,c);
title('carrier signal');
xlabel('time');
ylabel('amplitude');
grid on;

subplot(3,1,3);
plot(t,p);
title('psk signal');
xlabel('time');
ylabel('amplitude');
grid on;













