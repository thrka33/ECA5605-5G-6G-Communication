clc;
clear;
close all;

%% ==========================================
% COMBINED MIMO & OFDMA PERFORMANCE SIMULATION
%% ==========================================

%% MIMO PARAMETERS

SNR_dB = 0:2:20;
SNR = 10.^(SNR_dB/10);

Nt = 2;
Nr = 2;

BER = zeros(1,length(SNR));
Reliability = zeros(1,length(SNR));
NoisePower = 1./SNR;

%% BER and Reliability Calculation

for i = 1:length(SNR)

    bits = randi([0 1],10000,1);

    symbols = 2*bits - 1;          % BPSK

    H = (randn(Nr,Nt)+1j*randn(Nr,Nt))/sqrt(2);

    noise = (randn(Nr,10000)+1j*randn(Nr,10000))/sqrt(2*SNR(i));

    tx = H(1,1)*symbols' + noise(1,:);

    rx = real(tx) > 0;

    BER(i) = sum(rx'~=bits)/length(bits);

    Reliability(i) = 1 - BER(i);

end

%% OFDMA PARAMETERS

rb_bw = 180e3;        % 180 kHz

users = 1:5;

alloc_RB = [10 12 8 15 5];

mod_eff = [2 4 6 4 2];

throughput = (alloc_RB .* rb_bw .* mod_eff)/1e6;

%% ==========================================
% Combined Figure
%% ==========================================

figure('Name','Combined MIMO & OFDMA Performance');

%--------------------------------------------
% Graph 1 : BER vs SNR
%--------------------------------------------
subplot(2,2,1)

semilogy(SNR_dB,BER,'-o','LineWidth',2)

title('BER vs SNR')

xlabel('SNR (dB)')

ylabel('Bit Error Rate')

grid on

%--------------------------------------------
% Graph 2 : Reliability & Noise Power
%--------------------------------------------
subplot(2,2,2)

plot(SNR_dB,Reliability,'-s','LineWidth',2)

hold on

plot(SNR_dB,NoisePower,'-d','LineWidth',2)

title('Reliability and Noise Power')

xlabel('SNR (dB)')

ylabel('Value')

legend('Reliability','Noise Power','Location','best')

grid on

%--------------------------------------------
% Graph 3 : User Throughput
%--------------------------------------------
subplot(2,2,3)

plot(users,throughput,'-o','LineWidth',2)

title('User Throughput')

xlabel('User Index')

ylabel('Throughput (Mbps)')

grid on

%--------------------------------------------
% Graph 4 : Resource Blocks vs Throughput
%--------------------------------------------
subplot(2,2,4)

plot(alloc_RB,throughput,'-s','LineWidth',2)

title('Resource Blocks vs Throughput')

xlabel('Allocated Resource Blocks')

ylabel('Throughput (Mbps)')

grid on

%% ==========================================
% Display Results
%% ==========================================

disp('===========================================')
disp(' MIMO & OFDMA PERFORMANCE SUMMARY')
disp('===========================================')

Results = table(users',alloc_RB',mod_eff',throughput',...
    'VariableNames',{'User','Allocated_RB','Modulation_Efficiency','Throughput_Mbps'});

disp(Results)

disp('Average BER:')
disp(mean(BER))

disp('Average Reliability:')
disp(mean(Reliability))

disp('===========================================')
disp('Simulation Completed Successfully')
disp('===========================================')