%%First-Modulation
%Mani Teja Nutalapati PNW ID : 0029420201
%1.1 Generating Binary data of 10000 bits and print the data
clear all
clc
z=randi([0,1],10000,1);
fprintf("First 20 bits\n")
for i=1:20
fprintf("%d ",z(i))
end
fprintf("\n")
%1.2
M=2; %Binary
d = 1000; % Data Rate
Tb=1/d;   % Bit Duration
Ac = (2/Tb)^0.5; % Carrier Signal Amplitude
fc= 4*d; % Carrier Frequency
fs=30*fc; % Sampling Frequency
Ts=1/fs; % Sampling time
Num_symbols=Num_bits/log2(M);% in binary signaling, each symbol carries 1 bit
% Generate time points:
MaxTime=Num_symbols*T; % total time needed to transmit Num_symbols
num_samples_per_symbol=T/Ts;
t=0:Ts:MaxTime;
t(end)=[]; % delete the last time point because we started from t=0
%1.3
for i=1:10000
if z(i) == 0
    nrz(i)=-1;
else nrz(i)=1;
end
end
z1=z(1:5);
y=1:5;
nrz1=nrz(1:5);
grid on
% number of bits to show on the figure
t=t1(1:5);
figure(1);
subplot(2,1,1);
plot(t1,nrz,'lineWidth',2);grid on;
%axis([ 0 Tb*10000 -0.5 1.5]);
%plot(t1,nrz);
grid on;
xlabel('time'); ylabel('g(t)');
title('Baseband signal g(t)')