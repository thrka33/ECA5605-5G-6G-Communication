clc;
clear;
close all;

%% ================================
% Massive MIMO Performance Analysis
%% ================================

% SNR values (dB)
snr = 0:5:30;
snr_linear = 10.^(snr/10);

% Channel Capacity (Shannon Formula)
capacity = log2(1 + snr_linear);

% Antenna Array Sizes
antennas = [4 8 16 32 64];

% Antenna Gain (dB)
gain = 10*log10(antennas);

%% Create Figure
figure;

%% Objective 1: Channel Capacity vs SNR
subplot(3,1,1)
plot(snr, capacity, '-o', ...
    'LineWidth',2, ...
    'MarkerSize',6);
grid on;
xlabel('SNR (dB)');
ylabel('Capacity (bps/Hz)');
title('Objective 1: Channel Capacity vs SNR');

%% Objective 2: SNR Comparison (Bar Graph)
subplot(3,1,2)
bar(snr, snr);
grid on;
xlabel('Communication Scenario');
ylabel('SNR (dB)');
title('Objective 2: SNR Comparison for Different Communication Scenarios');
xticklabels({'0','5','10','15','20','25','30'});

%% Objective 3: Antenna Gain vs Array Size
subplot(3,1,3)
bar(antennas, gain);
grid on;
xlabel('Number of Antenna Elements');
ylabel('Antenna Gain (dB)');
title('Objective 3: Antenna Gain for Different Antenna Array Sizes');

%% Display Values
disp('--------------------------------------------');
disp(' SNR(dB)     Channel Capacity (bps/Hz)');
disp('--------------------------------------------');
disp([snr' capacity']);

disp('--------------------------------------------');
disp(' Antennas     Antenna Gain (dB)');
disp('--------------------------------------------');
disp([antennas' gain']);