%Frequency shift keying
clc;
close all;
clear all;

fc1 =10;% input(' freq of  1st sine wave carrier:');
fc2 =30;% input(' freq of  2nd sine wave carrier:');
fp = 5;%input('Enter the freq of periodic Binary pulse(MEssage):');
amp =4;% input('Enter the amplitude (Carrier & binary pulse message both):');
t = 0:0.001:1;

%carrier generating
c1 = amp.*sin(2*pi*fc1*t);
c2 = amp.*sin(2*pi*fc2*t);

subplot(4,1,1);
plot(t,c1);
xlabel('Time');
ylabel('Amplitude');
title('Carrier 1 wave');

subplot(4,1,2);
plot(t,c2);
xlabel('Time');
ylabel('Amplitude');
title('Carrier 2 wave');

%For Generating Square wave message
m = amp/2.*square(2*pi*fp*t)+amp/2;
subplot(4,1,3);
plot(t,m);
xlabel('Time');
ylabel('Amplitude');
title('Binary Message pulse');

%modulated wave
for i=0:1000;
    if m(i+1)==0
        mm(i+1)=c2(i+1);
    else
        mm(i+1)=c1(i+1);
    end
end

subplot(4,1,4);
plot(t,mm);
xlabel('Time');
ylabel('Amplitude');
title('Modulated Wave');
%input 10 30 5 4
