clc;
clear;
close all;

%% NB-IoT Performance Simulation

% Distance between Node and Base Station (km)
distance = 0.5:0.5:10;

%% Coverage (%)
coverage = 100 - 4*distance;
coverage(coverage < 60) = 60;

%% Delay (ms)
delay = 40 + 8*distance + rand(1,length(distance))*5;

%% Power Consumption (mW)
power = 35 + 3.5*distance + rand(1,length(distance))*2;

%% Throughput (kbps)
throughput = 220 - 15*distance;
throughput(throughput < 40) = 40;

%% Packet Loss (%)
packetLoss = 0.5 + 0.8*distance + rand(1,length(distance));

%% Single Combined Graph

figure;

plot(distance,coverage,'-o','LineWidth',2);
hold on;
plot(distance,delay,'-s','LineWidth',2);
plot(distance,power,'-d','LineWidth',2);
plot(distance,throughput,'-*','LineWidth',2);
plot(distance,packetLoss,'-^','LineWidth',2);

grid on;
xlabel('Distance (km)');
ylabel('Performance Metrics');
title('NB-IoT Performance Analysis');

legend('Coverage (%)',...
       'Delay (ms)',...
       'Power (mW)',...
       'Throughput (kbps)',...
       'Packet Loss (%)',...
       'Location','best');

%% Display Results

Results = table(distance',coverage',delay',power',throughput',packetLoss',...
    'VariableNames',{'Distance_km','Coverage_Percent','Delay_ms',...
    'Power_mW','Throughput_kbps','PacketLoss_Percent'});

disp(Results);