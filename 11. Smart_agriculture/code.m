clc;
clear;
close all;

%% ==========================================
% IoT Smart Agriculture - Soil Moisture Monitoring
%% ==========================================

% Simulated Soil Moisture Data (%)
time = 1:10;
soil_moisture = [30 35 28 25 20 18 22 30 40 45];

% Threshold for Irrigation
threshold = 40;

% Objective 1: Soil Condition Status
status = soil_moisture >= threshold;

% Objective 2: Pump Control Logic
pump_status = soil_moisture < threshold;

% Objective 3: Irrigation Efficiency
efficiency = (soil_moisture ./ threshold) * 100;
efficiency(efficiency > 100) = 100;

%% ==========================================
% Display Results
%% ==========================================

disp('IoT Smart Agriculture Analysis');
disp('-------------------------------');

disp('Time (Hours):');
disp(time);

disp('Soil Moisture (%):');
disp(soil_moisture);

disp('Soil Condition Status (1 = Wet, 0 = Dry):');
disp(status);

disp('Pump Status (1 = ON, 0 = OFF):');
disp(pump_status);

disp('Irrigation Efficiency (%):');
disp(efficiency);

%% ==========================================
% Plot Graphs
%% ==========================================

figure;

%------------------------------------------
% Graph 1 : Soil Moisture Monitoring
%------------------------------------------
subplot(3,2,1)
plot(time,soil_moisture,'-o','LineWidth',2)
title('Soil Moisture Monitoring')
xlabel('Time (Hours)')
ylabel('Soil Moisture (%)')
grid on
hold on
yline(threshold,'r--','Threshold')

%------------------------------------------
% Graph 2 : Soil Condition Status
%------------------------------------------
subplot(3,2,2)
stem(time,status,'filled','LineWidth',2)
title('Soil Condition Status')
xlabel('Time (Hours)')
ylabel('Status (1=Wet,0=Dry)')
grid on

%------------------------------------------
% Graph 3 : Soil Moisture vs Pump Control
%------------------------------------------
subplot(3,2,3)
plot(time,soil_moisture,'-o','LineWidth',2)
title('Soil Moisture vs Pump Control')
xlabel('Time (Hours)')
ylabel('Soil Moisture (%)')
grid on
hold on
yline(threshold,'r--','Threshold')

%------------------------------------------
% Graph 4 : Water Pump Status
%------------------------------------------
subplot(3,2,4)
stem(time,pump_status,'filled','LineWidth',2)
title('Water Pump Status')
xlabel('Time (Hours)')
ylabel('Pump Status (1=ON,0=OFF)')
grid on

%------------------------------------------
% Graph 5 : Soil Moisture Variation
%------------------------------------------
subplot(3,2,5)
plot(time,soil_moisture,'-o','LineWidth',2)
title('Soil Moisture Variation')
xlabel('Time (Hours)')
ylabel('Soil Moisture (%)')
grid on
hold on
yline(threshold,'r--','Threshold')

%------------------------------------------
% Graph 6 : Irrigation Efficiency
%------------------------------------------
subplot(3,2,6)
plot(time,efficiency,'-s','LineWidth',2)
title('Irrigation Efficiency (%)')
xlabel('Time (Hours)')
ylabel('Efficiency (%)')
grid on
ylim([0 110])