clc;
clear;
close all;

%% Network Slice Data
slices = {'eMBB','URLLC','mMTC','Private','IoT'};
count = [1 1 1 1 1];
utilization = [85 70 60 75 50];
latency = [25 5 40 15 60];

%% Combined Figure
figure;

%-------------------------------
% Graph 1: Number of Network Slices
%-------------------------------
subplot(3,1,1)
bar(count)
grid on
set(gca,'XTickLabel',slices)
xlabel('Network Slice Type')
ylabel('Count')
title('Number of Configured 5G Network Slices')

%-------------------------------
% Graph 2: Slice Utilization
%-------------------------------
subplot(3,1,2)
bar(utilization)
grid on
set(gca,'XTickLabel',slices)
xlabel('Network Slice Type')
ylabel('Utilization (%)')
title('Slice Utilization in 5G Network Slicing')
ylim([0 100])

%-------------------------------
% Graph 3: End-to-End Latency
%-------------------------------
subplot(3,1,3)
plot(1:5, latency,'-o','LineWidth',2,'MarkerSize',8)
grid on
set(gca,'XTick',1:5)
set(gca,'XTickLabel',slices)
xlabel('Network Slice Type')
ylabel('Latency (ms)')
title('End-to-End Latency of 5G Network Slices')
ylim([0 70])

%% Overall Title
sgtitle('Performance Analysis of 5G Network Slicing')