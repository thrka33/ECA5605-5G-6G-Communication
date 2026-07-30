clc;
clear;
close all;

%% 5G NR Numerology Parameters
scs = [15 30 60 120 240];          % Subcarrier Spacing (kHz)
mu = 0:4;                          % Numerology Index
symbols = [14 14 14 14 14];        % OFDM Symbols per Slot
slot = [1 0.5 0.25 0.125 0.0625];  % Slot Duration (ms)

figure('Name','5G NR Numerology Analysis','NumberTitle','off');

%% Graph 1: Numerology vs Subcarrier Spacing
subplot(3,1,1)
bar(scs)
grid on
set(gca,'XTick',1:length(mu))
set(gca,'XTickLabel',mu)
xlabel('Numerology Index (\mu)')
ylabel('Subcarrier Spacing (kHz)')
title('5G NR Subcarrier Spacing for Different Numerologies')

%% Graph 2: OFDM Symbols per Slot
subplot(3,1,2)
bar(scs, symbols)
grid on
xlabel('Subcarrier Spacing (kHz)')
ylabel('Number of OFDM Symbols')
title('OFDM Symbols per Slot')

%% Graph 3: Slot Duration
subplot(3,1,3)
plot(scs, slot, 'o-', 'LineWidth',2)
grid on
xlabel('Subcarrier Spacing (kHz)')
ylabel('Slot Duration (ms)')
title('Slot Duration vs Subcarrier Spacing')