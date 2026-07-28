clc;
clear;
close all;

%% ==========================================
% Combined Propagation Loss Simulation
% Free Space Path Loss (FSPL)
% Frequencies:
% 900 MHz (Sub-1 GHz)
% 3500 MHz (Mid-band)
% 28000 MHz (mmWave)
%% ==========================================

%% Common Parameters
f = [900 3500 28000];      % Frequency (MHz)

%% ==========================================
% SECTION 1
% Propagation Loss vs Distance
%% ==========================================

d = 0.1:0.1:5;             % Distance (km)

PL1 = 32.44 + 20*log10(f(1)) + 20*log10(d);
PL2 = 32.44 + 20*log10(f(2)) + 20*log10(d);
PL3 = 32.44 + 20*log10(f(3)) + 20*log10(d);

figure('Name','Section 1: Distance Analysis');

% Graph 1
subplot(2,1,1)
plot(d,PL1,'b','LineWidth',2); hold on;
plot(d,PL2,'r','LineWidth',2);
plot(d,PL3,'k','LineWidth',2);
title('Propagation Loss vs Distance');
xlabel('Distance (km)');
ylabel('Propagation Loss (dB)');
legend('900 MHz','3500 MHz','28000 MHz','Location','northwest');
grid on;

% Graph 2
subplot(2,1,2)
Loss = [PL1(10) PL2(10) PL3(10)];     % Loss at 1 km
plot(f,Loss,'-o','LineWidth',2);
title('Propagation Loss vs Frequency (at 1 km)');
xlabel('Frequency (MHz)');
ylabel('Propagation Loss (dB)');
grid on;

%% ==========================================
% SECTION 2
% Frequency Analysis at Fixed Distance
%% ==========================================

d_fixed = 2;      % km

PL = 32.44 + 20*log10(f) + 20*log10(d_fixed);

figure('Name','Section 2: Frequency Analysis');

% Graph 3
subplot(2,1,1)
plot(f,PL,'-o','LineWidth',2);
title('Propagation Loss vs Operating Frequency');
xlabel('Frequency (MHz)');
ylabel('Propagation Loss (dB)');
grid on;

% Graph 4
subplot(2,1,2)
bar(PL);
title('Comparison of Propagation Loss Across Frequency Bands');
xlabel('Frequency Bands');
ylabel('Propagation Loss (dB)');
xticklabels({'Sub-1GHz','Mid-band','mmWave'});
grid on;

%% ==========================================
% SECTION 3
% Band-wise Comparison
%% ==========================================

figure('Name','Section 3: Band Comparison');

% Graph 5
subplot(2,1,1)
plot(f,PL,'-o','LineWidth',2);
title('Propagation Loss vs Operating Frequency');
xlabel('Frequency (MHz)');
ylabel('Propagation Loss (dB)');
grid on;

% Graph 6
subplot(2,1,2)
plot(1:3,PL,'-s','LineWidth',2);
title('Band-wise Propagation Loss Comparison');
xlabel('Band Index');
ylabel('Propagation Loss (dB)');
xticks([1 2 3]);
xticklabels({'Sub-1GHz','Mid-band','mmWave'});
grid on;

%% ==========================================
% Display Numerical Results
%% ==========================================

disp('-----------------------------------------');
disp('Propagation Loss at 2 km');
disp('-----------------------------------------');

fprintf('900 MHz   : %.2f dB\n', PL(1));
fprintf('3500 MHz  : %.2f dB\n', PL(2));
fprintf('28000 MHz : %.2f dB\n', PL(3));

disp('-----------------------------------------');