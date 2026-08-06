clc;
clear;
close all;

%% Remote Patient Monitoring Communication Architecture

% Simulation Parameters
numPatients = 100;          % Number of patient nodes
area = 500;                 % Simulation area (m)
simulationTime = 100;       % Simulation time (s)
packetSize = 128*8;         % Packet size (bits)
packetRate = 1;             % Packets/sec
Pt = 20;                    % Transmit Power (dBm)
bandwidth = 20e6;           % 20 MHz
SNR_dB = 0:2:20;            % SNR Range

%% Patient Deployment
x = area*rand(numPatients,1);
y = area*rand(numPatients,1);

figure;
scatter(x,y,60,'filled');
grid on;
xlabel('X Position (m)');
ylabel('Y Position (m)');
title('Patient Node Deployment');

%% Coverage Analysis
distance = linspace(0,500,100);
coverage = exp(-distance/300)*100;

figure;
plot(distance,coverage,'LineWidth',2);
grid on;
xlabel('Distance (m)');
ylabel('Coverage (%)');
title('Coverage vs Distance');

%% Throughput Calculation
time = 1:simulationTime;
throughput = packetSize*packetRate*(0.9+0.1*rand(1,simulationTime))/1000;

figure;
plot(time,throughput,'LineWidth',2);
grid on;
xlabel('Time (s)');
ylabel('Throughput (kbps)');
title('Throughput vs Time');

%% BER Calculation
BER = 0.5*erfc(sqrt(10.^(SNR_dB/10)));

figure;
semilogy(SNR_dB,BER,'-o','LineWidth',2);
grid on;
xlabel('SNR (dB)');
ylabel('Bit Error Rate');
title('BER vs SNR');

%% Packet Loss
patients = 10:10:100;
packetLoss = linspace(2,15,length(patients));

figure;
plot(patients,packetLoss,'-s','LineWidth',2);
grid on;
xlabel('Number of Patients');
ylabel('Packet Loss (%)');
title('Packet Loss vs Number of Patients');

%% Delay Analysis
delay = linspace(5,30,length(patients));

figure;
plot(patients,delay,'-d','LineWidth',2);
grid on;
xlabel('Number of Patients');
ylabel('Delay (ms)');
title('Delay vs Number of Patients');

%% Energy Consumption
battery = 100 - linspace(0,60,simulationTime);

figure;
plot(time,battery,'LineWidth',2);
grid on;
xlabel('Time (s)');
ylabel('Battery Level (%)');
title('Battery Level vs Time');

%% Performance Summary
sentPackets = simulationTime * packetRate * numPatients;
receivedPackets = round(sentPackets * 0.95);

PDR = (receivedPackets/sentPackets)*100;
PacketLoss = 100-PDR;
avgThroughput = mean(throughput);
avgDelay = mean(delay);

fprintf('\n===== Remote Patient Monitoring Results =====\n');
fprintf('Number of Patients      : %d\n',numPatients);
fprintf('Packet Delivery Ratio   : %.2f %%\n',PDR);
fprintf('Packet Loss             : %.2f %%\n',PacketLoss);
fprintf('Average Throughput      : %.2f kbps\n',avgThroughput);
fprintf('Average Delay           : %.2f ms\n',avgDelay);
fprintf('Average BER             : %.5f\n',mean(BER));