clc;
clear;
close all;

%% =====================================================
% AI-Based Traffic Prediction for 5G Networks
%% =====================================================

% Time intervals
t = 1:10;

%% -----------------------------------------------------
% Objective 1 : Prediction Accuracy & Network Traffic
%% -----------------------------------------------------

% Prediction Accuracy (%)
Accuracy = [90 91 92 93 94 95 96 97 98 99];

% Network Traffic (Mbps)
Traffic = [45 50 55 60 65 70 75 80 85 90];

%% -----------------------------------------------------
% Objective 2 : Mean Squared Error (MSE)
%% -----------------------------------------------------

% Actual and Predicted Traffic (Mbps)
Actual = [50 55 60 62 68 70 75 80 85 90];
Predicted = [49 54 61 63 67 71 74 81 84 89];

% Squared Error
SqError = (Actual - Predicted).^2;

% Mean Squared Error
MSE = mean(SqError);

%% -----------------------------------------------------
% Objective 3 : Throughput & Network Utilization
%% -----------------------------------------------------

% Network Throughput (Mbps)
Throughput = [120 135 150 165 180 195 210 225 240 255];

% Network Utilization (%)
Utilization = [60 65 70 74 78 82 86 90 94 98];

%% =====================================================
% Display Results
%% =====================================================

disp('===============================================')
disp('AI-Based Traffic Prediction for 5G Networks')
disp('===============================================')

disp('Prediction Accuracy (%)')
disp([t' Accuracy'])

disp('Network Traffic (Mbps)')
disp([t' Traffic'])

disp(['Mean Squared Error (MSE) = ', num2str(MSE)])

disp(' ')
disp('Time   Actual   Predicted   Squared Error')
disp([t' Actual' Predicted' SqError'])

disp(' ')
disp('Time   Throughput(Mbps)   Utilization(%)')
disp([t' Throughput' Utilization'])

%% =====================================================
% Plot Graphs
%% =====================================================

figure;

%--------------------------------------------------------
% Graph 1 : AI Prediction Accuracy
%--------------------------------------------------------
subplot(3,2,1)
plot(t,Accuracy,'-o','LineWidth',2)
title('AI Prediction Accuracy over Time')
xlabel('Time Interval')
ylabel('Prediction Accuracy (%)')
grid on

%--------------------------------------------------------
% Graph 2 : Network Traffic Samples
%--------------------------------------------------------
subplot(3,2,2)
bar(Traffic)
title('Network Traffic Samples Used for AI Prediction')
xlabel('Traffic Sample')
ylabel('Traffic (Mbps)')
grid on

%--------------------------------------------------------
% Graph 3 : Squared Error
%--------------------------------------------------------
subplot(3,2,3)
plot(t,SqError,'-o','LineWidth',2)
title('Squared Error of AI Traffic Prediction')
xlabel('Time Interval')
ylabel('Squared Error')
grid on

%--------------------------------------------------------
% Graph 4 : Mean Squared Error
%--------------------------------------------------------
subplot(3,2,4)
bar(MSE)
title('Mean Squared Error (MSE)')
xlabel('AI Prediction Model')
ylabel('MSE')
grid on

%--------------------------------------------------------
% Graph 5 : AI-Based Network Throughput
%--------------------------------------------------------
subplot(3,2,5)
plot(t,Throughput,'-o','LineWidth',2)
title('AI-Based Network Throughput')
xlabel('Time Interval')
ylabel('Throughput (Mbps)')
grid on

%--------------------------------------------------------
% Graph 6 : Throughput vs Network Utilization
%--------------------------------------------------------
subplot(3,2,6)
plot(Throughput,Utilization,'-s','LineWidth',2)
title('Throughput vs Network Utilization')
xlabel('Network Throughput (Mbps)')
ylabel('Network Utilization (%)')
grid on