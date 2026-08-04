clc;
clear;
close all;

%% ==========================================
% MIMO Beamforming Analysis
%% ==========================================

% Steering Angles (Degrees)
angle = [-60 -30 0 30 60];

% Normalized Gain (for Steering Angle Visualization)
norm_gain = ones(size(angle));

% Array Gain (dB)
array_gain = [9 12 15 12 9];

% Desired and Actual Beam Directions
desired = [-60 -30 0 30 60];
actual  = [-58 -32 1 29 62];

% Beam Direction Error
error = abs(desired - actual);

%% ==========================================
% Display Results
%% ==========================================

disp('MIMO Beamforming Analysis');
disp('--------------------------------');

disp('Steering Angles (Degrees):');
disp(angle);

disp('Array Gain (dB):');
disp(array_gain);

disp('Desired Beam Direction (Degrees):');
disp(desired);

disp('Actual Beam Direction (Degrees):');
disp(actual);

disp('Beam Direction Error (Degrees):');
disp(error);

%% ==========================================
% Plot Graphs
%% ==========================================

figure;

%------------------------------------------
% Graph 1 : Steering Angle Variation
%------------------------------------------
subplot(2,2,1)
polarplot(deg2rad(angle), norm_gain, 'o-', 'LineWidth', 2)
title('Steering Angle Variation in MIMO Beamforming')

%------------------------------------------
% Graph 2 : Array Gain
%------------------------------------------
subplot(2,2,2)
bar(angle, array_gain)
grid on
xlabel('Steering Angle (Degrees)')
ylabel('Array Gain (dB)')
title('Array Gain for Different Steering Angles')

%------------------------------------------
% Graph 3 : Beam Direction Error
%------------------------------------------
subplot(2,2,[3 4])
plot(desired, error, 'o-', 'LineWidth', 2)
grid on
xlabel('Desired Steering Angle (Degrees)')
ylabel('Beam Direction Error (Degrees)')
title('Beam Direction Error for Different Steering Angles')