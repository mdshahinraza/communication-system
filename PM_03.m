%phase modulation
clc;
close all;
clear all;
%data
Ac=4;
Fc=100;
Am=2;
Fm=5;
modulation_index=6;
t=0:0.001:1;

%message signal
phase_m=0;
M=Am*cos(2*pi*Fm*t+phase_m);

%carrier signal
phase_c=pi/3;
C=Ac*cos(2*pi*Fc*t+phase_c);

%phase modulation
PM= Ac*cos(2*pi*Fc*t+modulation_index*cos(2*pi*Fm*t+phase_m));

%plot figure
subplot(3,1,1);
plot(t,M);
xlabel('time(s)');
ylabel('Amplitude');

subplot(3,1,2);
plot(t,C);
xlabel('time(s)');
ylabel('Amplitude');

subplot(3,1,3);
plot(t,PM);
xlabel('time(s)');
ylabel('Amplitude');
