%Phase shift keying
clc;
close all;
clear all;

t = 0:0.001:1;
fc = 60;%input('Enter the freq of sine wave carrier:');
fm = 10;%input('Enter Message freq');
amp = 3;%input('Enter carrier and message amplitude (assuming borth wqual):');
%carrier generating
c = amp.*sin(2*pi*fc*t);
subplot(3,1,1);
plot(t,c);
xlabel('Time');
ylabel('Amplitude');
title('Carrier wave');

%For Generating Square wave message
m = square(2*pi*fm*t);
subplot(3,1,2);
plot(t,m);
xlabel('Time');
ylabel('Amplitude');
title('message signal');

%The shift keyed wave PSK
x = c.*m;
subplot(3,1,3);
plot(t,x);
xlabel('t');
ylabel('y');
title('Phase shift keying');
%60 10 3