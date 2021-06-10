clc; clear all; close all;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
Fs = 1000;       %Sampling frequency
T = 1/Fs;        %Sample time
L = 800;         %Length of signal
t = (0:L-1)*T;

s1 = 5*sin(2*pi*100*t);
s2 = 5*sin(2*pi*180*t);
s3 = 5*sin(2*pi*320*t);
s4 = 5*sin(2*pi*400*t);

signal = [s1 s2 s3 s4];
tp = (0:4*L-1)*T;
figure('color','w');
plot(tp,signal);
title('Original Signal  Made by J Pan');

[S F T P] = spectrogram(signal,128,120,1024,1000);
surf(T,F,abs(S));
shading flat;view(-67,70);
xlim([0 max(tp)]);
xl=xlabel('  Time');
yl=ylabel('Frequency');
zlabel('Amplitude');
set(xl,'Rotation',70);% 
set(yl,'Rotation',-10);%
title('Made by J Pan');