clc;
clear;
close all;

%% ==========================================
% 5G Communication Performance Analysis
%% ==========================================

%% -------------------------------
% Objective 1 : Throughput Analysis
%% -------------------------------

% SNR values (dB)
SNR = 0:5:30;

% Maximum Throughput (Mbps)
Max_TP = 100;

% Throughput calculation
Throughput = Max_TP*(1-exp(-SNR/10));

%% -------------------------------
% Objective 2 : BER & Reliability
%% -------------------------------

% Simulated Bit Error Rate (BER)
BER = [0.30 0.18 0.10 0.05 0.02 0.008 0.001];

% Reliability (%)
Reliability = (1-BER)*100;

%% -------------------------------
% Objective 3 : Modulation Analysis
%% -------------------------------

% Modulation Schemes
Modulation = {'QPSK','16-QAM','64-QAM','256-QAM'};

% Required SNR (dB)
Req_SNR = [5 10 18 25];

% Spectral Efficiency (bits/s/Hz)
Efficiency = [2 4 6 8];

%% ==========================================
% Display Results
%% ==========================================

disp('===============================================')
disp('5G Communication Performance Analysis')
disp('===============================================')

disp('Objective 1: Throughput')
disp('SNR(dB)    Throughput(Mbps)')
disp([SNR' Throughput'])

disp(' ')

disp('Objective 2: BER and Reliability')
disp('SNR(dB)      BER      Reliability(%)')
disp([SNR' BER' Reliability'])

disp(' ')

disp('Objective 3: Modulation Analysis')
disp(table(Modulation',Req_SNR',Efficiency', ...
    'VariableNames',{'Modulation','Required_SNR_dB','Spectral_Efficiency'}))

%% ==========================================
% Plot Graphs
%% ==========================================

figure

%----------------------------------------
% Graph 1 : Throughput vs SNR
%----------------------------------------
subplot(3,2,1)
plot(SNR,Throughput,'-o','LineWidth',2)
title('5G Throughput vs SNR')
xlabel('Signal-to-Noise Ratio (dB)')
ylabel('Throughput (Mbps)')
grid on

%----------------------------------------
% Graph 2 : Throughput Bar Graph
%----------------------------------------
subplot(3,2,2)
bar(Throughput)
title('Throughput at Different SNR Levels')
xlabel('SNR Index')
ylabel('Throughput (Mbps)')
grid on

%----------------------------------------
% Graph 3 : BER vs SNR
%----------------------------------------
subplot(3,2,3)
semilogy(SNR,BER,'-o','LineWidth',2)
title('SNR vs Bit Error Rate in 5G')
xlabel('Signal-to-Noise Ratio (dB)')
ylabel('Bit Error Rate (BER)')
grid on

%----------------------------------------
% Graph 4 : Reliability vs SNR
%----------------------------------------
subplot(3,2,4)
plot(SNR,Reliability,'-s','LineWidth',2)
title('SNR vs Communication Reliability')
xlabel('Signal-to-Noise Ratio (dB)')
ylabel('Reliability (%)')
grid on

%----------------------------------------
% Graph 5 : Required SNR for Modulation
%----------------------------------------
subplot(3,2,5)
plot(1:4,Req_SNR,'-s','LineWidth',2)
xticks(1:4)
xticklabels(Modulation)
title('Required SNR for Different Modulation Schemes')
xlabel('Modulation Scheme')
ylabel('Required SNR (dB)')
grid on

%----------------------------------------
% Graph 6 : Spectral Efficiency vs SNR
%----------------------------------------
subplot(3,2,6)
plot(Req_SNR,Efficiency,'-o','LineWidth',2)
title('SNR vs Spectral Efficiency')
xlabel('Signal-to-Noise Ratio (dB)')
ylabel('Spectral Efficiency (bits/s/Hz)')
grid on