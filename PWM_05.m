clc;
clear;
close all;

Am = 1;
Ac = 1;
fm = 2;
fc = 20;
t = 0:0.001:1;
c = Ac * sawtooth(2 * pi * fc * t);
m =sin(2 * pi * fm * t);

subplot(3, 1, 1);
plot(t, m);
title('Message Signal');
xlabel('Time');
ylabel('Amplitude');
grid on;

subplot(3, 1, 2);
plot(t, c);
title('Sawtooth Signal');
xlabel('Time');
ylabel('Amplitude');
grid on;

% PWM generation
n = length(c);
pwm = zeros(1, n);

for i = 1:n
    if m(i) >= c(i)
        pwm(i) = 1;
    else
        pwm(i) = 0;
    end
end

subplot(3, 1, 3);
plot(t, pwm); 
title('PWM Signal');
xlabel('Time');
ylabel('Amplitude');
grid on;
ylim([-2,2]);