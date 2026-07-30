clc;
clear;
close all;

%% ==========================================
% Beamforming Performance Analysis
% Objective 1: Beamforming Gain
% Objective 2: Beam Width
% Objective 3: Main Lobe Direction
%% ==========================================

% Number of antenna elements
antennas = [2 4 8 16 32];

%% Objective 1: Beamforming Gain
gain = 10*log10(antennas);

%% Objective 2: Beam Width
beamwidth = [90 45 22.5 11.25 5.625];

%% Objective 3: Main Lobe Direction
theta = [-60 -30 0 30 60];
mainLobeGain = ones(size(theta));

%% ==========================
% Combined Results
%% ==========================

figure('Name','Beamforming Performance Analysis','NumberTitle','off');

% Graph 1
subplot(1,3,1)
bar(antennas,gain)
grid on
xlabel('Number of Antenna Elements')
ylabel('Beamforming Gain (dB)')
title('Beamforming Gain')

% Graph 2
subplot(1,3,2)
plot(antennas,beamwidth,'o-','LineWidth',2)
grid on
xlabel('Number of Antenna Elements')
ylabel('Beam Width (Degrees)')
title('Beam Width')

% Graph 3
subplot(1,3,3)
polarplot(deg2rad(theta),mainLobeGain,'o-','LineWidth',2)
title('Main Lobe Direction')

sgtitle('Beamforming Performance Analysis');