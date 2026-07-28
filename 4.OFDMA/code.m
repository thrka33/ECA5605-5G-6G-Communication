clc;
clear;
close all;

%% ==========================================
% COMBINED OFDMA SIMULATION
% Objective 1 + Objective 2 + Objective 3
%% ==========================================

%% System Parameters

bandwidth = 10e6;          % Total System Bandwidth (10 MHz)
rb_bw = 180e3;             % Bandwidth per Resource Block (180 kHz)

% Total Resource Blocks
total_RB = floor(bandwidth/rb_bw);

% Users
users = 1:5;

%% ==========================================
% Objective 1: Resource Block Allocation
%% ==========================================

% Example Resource Block Allocation
alloc_RB = [12 10 9 8 11];

%% ==========================================
% Objective 2: Resource Block Utilization
%% ==========================================

utilization = (alloc_RB/total_RB)*100;

%% ==========================================
% Objective 3: Throughput Calculation
%% ==========================================

% Spectral Efficiency (bits/symbol)
mod_eff = [2 4 6 4 2];      % QPSK,16-QAM,64-QAM

% Throughput (Mbps)
throughput = (alloc_RB .* rb_bw .* mod_eff)/1e6;

%% ==========================================
% Combined Output Figure
%% ==========================================

figure('Name','OFDMA Performance Analysis');

%---------------------------------------------
% Graph 1 : Resource Block Allocation
%---------------------------------------------
subplot(2,2,1)

stem(users,alloc_RB,'filled','LineWidth',2)
title('Resource Block Allocation')
xlabel('User Index')
ylabel('Allocated RBs')
grid on

%---------------------------------------------
% Graph 2 : Resource Block Utilization
%---------------------------------------------
subplot(2,2,2)

plot(users,utilization,'-o','LineWidth',2)
title('Resource Block Utilization')
xlabel('User Index')
ylabel('Utilization (%)')
grid on

%---------------------------------------------
% Graph 3 : User Throughput
%---------------------------------------------
subplot(2,2,3)

plot(users,throughput,'-s','LineWidth',2)
title('User Throughput')
xlabel('User Index')
ylabel('Throughput (Mbps)')
grid on

%---------------------------------------------
% Graph 4 : RB vs Throughput
%---------------------------------------------
subplot(2,2,4)

plot(alloc_RB,throughput,'-d','LineWidth',2)
title('RB Allocation vs Throughput')
xlabel('Allocated Resource Blocks')
ylabel('Throughput (Mbps)')
grid on

%% ==========================================
% Display Results
%% ==========================================

disp('=========================================')
disp('        OFDMA SIMULATION SUMMARY')
disp('=========================================')

fprintf('System Bandwidth      : %.0f MHz\n',bandwidth/1e6);
fprintf('Bandwidth per RB      : %.0f kHz\n',rb_bw/1e3);
fprintf('Total Resource Blocks : %d\n\n',total_RB);

Results = table(users',alloc_RB',utilization',throughput',...
    'VariableNames',{'User','Allocated_RB','Utilization_Percent','Throughput_Mbps'});

disp(Results)

disp('=========================================')
disp('Simulation Completed Successfully')
disp('=========================================')