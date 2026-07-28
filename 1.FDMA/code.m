clc;
clear;
close all;

%% ==========================
% Objective 1: FDMA Channel Allocation
% ===========================

fs = 1000;
t = 0:1/fs:1;

TBW = 600;          % Total Bandwidth (kHz)
Users = 3;          % Number of Users

CBW = TBW / Users;  % Channel Bandwidth per User

fc = [100 300 500]; % Carrier Frequencies

m = sin(2*pi*10*t); % Message Signal

% Modulated Signals
s1 = m .* cos(2*pi*fc(1)*t);
s2 = m .* cos(2*pi*fc(2)*t);
s3 = m .* cos(2*pi*fc(3)*t);

figure;

subplot(2,2,1)
plot(t,s1,'r',t,s2,'g',t,s3,'b')
grid on
title('FDMA Channel Allocation')
xlabel('Time (s)')
ylabel('Amplitude')
legend('User 1','User 2','User 3')

subplot(2,2,2)
bar(1:Users,CBW*ones(1,Users))
grid on
xlabel('Users')
ylabel('Channel Bandwidth (kHz)')
title('Channel Bandwidth per User')

%% ==========================
% Objective 2: FDMA Data Rate
% ===========================

BW = 200;       % Channel Bandwidth (kHz)
M = 2;          % BPSK Modulation

DataRate = BW * log2(M);   % Data Rate (kbps)

Rate = DataRate * ones(1,Users);

disp('========== OBJECTIVE 2 ==========')
disp('User    Data Rate (kbps)')
disp([(1:Users)' Rate'])

subplot(2,2,3)
bar(1:Users,Rate)
grid on
xlabel('Users')
ylabel('Data Rate (kbps)')
title('FDMA Data Rate for Each User')

%% ==========================
% Objective 3: SNR Calculation
% ===========================

Ps = 1;                      % Signal Power (W)
Pn = [0.1 0.05 0.01];        % Noise Power (W)

SNR = 10*log10(Ps ./ Pn);    % SNR in dB

disp(' ')
disp('========== OBJECTIVE 3 ==========')
disp('User   Noise Power(W)   SNR(dB)')
disp([(1:Users)' Pn' SNR'])

subplot(2,2,4)
bar(1:Users,SNR)
grid on
xlabel('Users')
ylabel('SNR (dB)')
title('Signal-to-Noise Ratio of FDMA Users')