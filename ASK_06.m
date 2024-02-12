clc;
close all;
a=1;   
fm=5; 
fc=30; 
t=0:0.001:1;

m=a/2*square(2*pi*fm*t)+a/2;  % equation for binary message pulse 
c=a*sin(2*pi*fc*t);  % equation for carrier signal 
ask=c.*m;    % equation for ask

subplot(3,1,1);
plot(t,m);
title('binary messeage pulse');
xlabel('tme');
ylabel('amplitude');
grid on;
ylim([-2,2]);

subplot(3,1,2);
plot(t,c);
title('carrier signal');
xlabel('tme');
ylabel('amplitude');
grid on;

subplot(3,1,3);
plot(t,ask);
title('ASK signal');
xlabel('tme');
ylabel('amplitude');
grid on;


