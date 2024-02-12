clear;
close all;
clc;

A = 1;
f = 10;
b = [0 1 0 1 1 0]; % binary pulse
n = length(b);  % length of binary pulse
t = 0:0.01:n;   
x = 1:1:(n+1)*100;

bw = zeros(size(x));  % Initialize bw variable

for i = 1:n
    bw((i-1)*100+1:i*100) = b(i);  % Corrected loop for binary pulse
end

pulse = bw(100:end);
c = A * sin(2 * pi * f * t);
fsk = pulse .* c;

subplot(3,1,1);
plot(t, pulse);
title('Digital Pulse');
xlabel('Time');
ylabel('Amplitude');
grid on;

subplot(3,1,2);
plot(t, c);
title('Carrier Signal');
xlabel('Time');
ylabel('Amplitude');
grid on;

subplot(3,1,3);
plot(t, fsk);
title('FSK Signal');
xlabel('Time');
ylabel('Amplitude');
grid on;
