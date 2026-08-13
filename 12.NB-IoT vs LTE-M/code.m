clc;
clear;
close all;

%% ==========================================
% NB-IoT and LTE-M Performance Analysis

%% ==========================================

% SNR values (dB)
SNR = 0:5:30;

%% ------------------------------------------
% Objective 1 : Throughput (Mbps)
%% ------------------------------------------

NB_IoT_Throughput = 0.05*(1-exp(-SNR/8));
LTE_M_Throughput  = 1.2*(1-exp(-SNR/8));

%% ------------------------------------------
% Objective 2 : Latency (ms)
%% ------------------------------------------

NB_IoT_Latency = [180 160 145 130 120 110 100];
LTE_M_Latency  = [90 80 70 60 50 45 40];

%% ------------------------------------------
% Objective 3 : Packet Delivery Ratio (%)
%% ------------------------------------------

NB_IoT_PDR = [82 86 89 92 95 97 99];
LTE_M_PDR  = [88 91 94 96 98 99 100];

%% ==========================================
% Display Results
%% ==========================================

disp('NB-IoT and LTE-M Performance Analysis')
disp('--------------------------------------')

disp('Throughput (Mbps)')
disp('SNR(dB)   NB-IoT    LTE-M')
disp([SNR' NB_IoT_Throughput' LTE_M_Throughput'])

disp('Latency (ms)')
disp('SNR(dB)   NB-IoT    LTE-M')
disp([SNR' NB_IoT_Latency' LTE_M_Latency'])

disp('Packet Delivery Ratio (%)')
disp('SNR(dB)   NB-IoT    LTE-M')
disp([SNR' NB_IoT_PDR' LTE_M_PDR'])

%% ==========================================
% Plot Graphs
%% ==========================================

figure;

%------------------------------------------
% Graph 1 : NB-IoT Throughput
%------------------------------------------
subplot(3,2,1)
plot(SNR,NB_IoT_Throughput,'-o','LineWidth',2)
title('NB-IoT Throughput vs SNR')
xlabel('Signal-to-Noise Ratio (dB)')
ylabel('Throughput (Mbps)')
grid on

%------------------------------------------
% Graph 2 : LTE-M Throughput
%------------------------------------------
subplot(3,2,2)
plot(SNR,LTE_M_Throughput,'-s','LineWidth',2)
title('LTE-M Throughput vs SNR')
xlabel('Signal-to-Noise Ratio (dB)')
ylabel('Throughput (Mbps)')
grid on

%------------------------------------------
% Graph 3 : NB-IoT Latency
%------------------------------------------
subplot(3,2,3)
plot(SNR,NB_IoT_Latency,'-o','LineWidth',2)
title('NB-IoT Latency vs SNR')
xlabel('Signal-to-Noise Ratio (dB)')
ylabel('Latency (ms)')
grid on

%------------------------------------------
% Graph 4 : LTE-M Latency
%------------------------------------------
subplot(3,2,4)
plot(SNR,LTE_M_Latency,'-s','LineWidth',2)
title('LTE-M Latency vs SNR')
xlabel('Signal-to-Noise Ratio (dB)')
ylabel('Latency (ms)')
grid on

%------------------------------------------
% Graph 5 : NB-IoT Packet Delivery Ratio
%------------------------------------------
subplot(3,2,5)
plot(SNR,NB_IoT_PDR,'-o','LineWidth',2)
title('NB-IoT Packet Delivery Ratio vs SNR')
xlabel('Signal-to-Noise Ratio (dB)')
ylabel('Packet Delivery Ratio (%)')
grid on

%------------------------------------------
% Graph 6 : LTE-M Packet Delivery Ratio
%------------------------------------------
subplot(3,2,6)
plot(SNR,LTE_M_PDR,'-s','LineWidth',2)
title('LTE-M Packet Delivery Ratio vs SNR')
xlabel('Signal-to-Noise Ratio (dB)')
ylabel('Packet Delivery Ratio (%)')
grid on