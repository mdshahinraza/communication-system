clc;
clear;
close all;
Am=1;  % amplitude of message signal
Ac=1;  % amplitude of carrier signal  Ac=input('Enter carrier signal amplitude: ');
fm=2;  % frequency of message signal
fc=50; % frequency of carrier signal   fc>>fm 
k=Am/Ac; % modulation index k<=1
t=0:0.001:1; % time vector

m=Am*sin(2*pi*fm*t); % equation for message signal
c=Ac*sin(2*pi*fc*t); % equation for carrier signal
y=(1+k.*m).*c;  % equation for amplitude modulated signal

subplot(3,1,1);
plot(t,m);
title('message signal');
xlabel('time');
ylabel('ampitude');
grid on;

subplot(3,1,2);
plot(t,c);
title('carrier signal');
xlabel('time');
ylabel('ampitude');
grid on;

subplot(3,1,3);
plot(t,y);
title('Amplitude modulated signal');
xlabel('time');
ylabel('ampitude');
grid on;












