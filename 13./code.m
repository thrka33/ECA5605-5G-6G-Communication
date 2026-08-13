clc;
clear;
close all;

%% ==========================================
% V2X Communication Performance Analysis
%% ==========================================

% Vehicle Speed (km/h)
speed = 20:20:120;

%% ------------------------------------------
% Objective 1 : End-to-End Latency (ms)
%% ------------------------------------------

latency = [18 16 14 12 10 9];

%% ------------------------------------------
% Objective 2 : Packet Delivery Ratio (%)
%% ------------------------------------------

PDR = [99 98 97 95 93 90];

%% ------------------------------------------
% Objective 3 : Communication Range (m)
%% ------------------------------------------

vehicle = 1:6;

speed_range = [30 45 60 75 90 105];
range = [280 260 240 220 200 180];

%% ==========================================
% Display Results
%% ==========================================

disp('V2X Communication Performance Analysis')
disp('--------------------------------------')

disp('Vehicle Speed (km/h) and End-to-End Latency (ms)')
disp([speed' latency'])

disp('Vehicle Speed (km/h) and Packet Delivery Ratio (%)')
disp([speed' PDR'])

disp('Vehicle   Speed(km/h)   Communication Range(m)')
disp([vehicle' speed_range' range'])

%% ==========================================
% Plot Graphs
%% ==========================================

figure;

%------------------------------------------
% Graph 1 : Vehicle Speed vs End-to-End Latency
%------------------------------------------
subplot(3,2,1)
plot(speed,latency,'-o','LineWidth',2)
title('Vehicle Speed vs End-to-End Latency')
xlabel('Vehicle Speed (km/h)')
ylabel('Latency (ms)')
grid on

%------------------------------------------
% Graph 2 : Latency Variation Across Vehicles
%------------------------------------------
subplot(3,2,2)
plot(1:length(latency),latency,'-s','LineWidth',2)
title('Latency Variation Across Vehicles')
xlabel('Vehicle Index')
ylabel('End-to-End Latency (ms)')
grid on

%------------------------------------------
% Graph 3 : Vehicle Speed vs Packet Delivery Ratio
%------------------------------------------
subplot(3,2,3)
plot(speed,PDR,'-o','LineWidth',2)
title('Vehicle Speed vs Packet Delivery Ratio')
xlabel('Vehicle Speed (km/h)')
ylabel('Packet Delivery Ratio (%)')
grid on

%------------------------------------------
% Graph 4 : Packet Delivery Ratio Across Vehicles
%------------------------------------------
subplot(3,2,4)
plot(1:length(PDR),PDR,'-s','LineWidth',2)
title('Packet Delivery Ratio Across Vehicles')
xlabel('Vehicle Index')
ylabel('Packet Delivery Ratio (%)')
grid on

%------------------------------------------
% Graph 5 : Vehicle Speed of Different Vehicles
%------------------------------------------
subplot(3,2,5)
plot(vehicle,speed_range,'-o','LineWidth',2)
title('Vehicle Speed of Different Vehicles')
xlabel('Vehicle Index')
ylabel('Vehicle Speed (km/h)')
grid on

%------------------------------------------
% Graph 6 : Vehicle Speed vs Communication Range
%------------------------------------------
subplot(3,2,6)
plot(speed_range,range,'-s','LineWidth',2)
title('Vehicle Speed vs Communication Range')
xlabel('Vehicle Speed (km/h)')
ylabel('Communication Range (m)')
grid on