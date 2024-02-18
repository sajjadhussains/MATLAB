clc;
clear all;
close all;

n = -20:20;
ramp_n = (n>=0);
stem(n,ramp_n);
axis([-20 20 -10 20]);
xlabel('Time');
ylabel('Amplitude');