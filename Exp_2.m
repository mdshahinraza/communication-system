clc;
close all;
clear all;

%input
vm = input('Enter message signal ');
vc = input('Enter carrier signal ');
fm = input('message frequency');  %fm<fc
fc = input('carrier frequency');
m = input('Enter modulation index');  %m <= 1
t = 0:0.001:1;

%Equation of the message signal
y1 = vm*cos(2*pi*fm*t);
subplot(3,1,1);
plot(t,y1,'blue','LineWidth',1);

%carrier
y2 = vc*cos(2*pi*fc*t);
subplot(3,1,2);
plot(t,y2,'magenta','LineWidth',1);


%instantaneous voltage of resulting
y = vc*cos(2*pi*fc*t+m.*sin(2*pi*fm*t));
subplot(3,1,3);
plot(t,y,'red','LineWidth',1);

fprintf('Mudulation index: %.2f',vm/vc);
