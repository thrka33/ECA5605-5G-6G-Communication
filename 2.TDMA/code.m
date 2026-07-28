clc;
clear;
close all;

%% ==========================================
% COMBINED TDMA SIMULATION
% Objective 1 + Objective 2 + Objective 3
%% ==========================================

%% Objective 1: TDMA Time Slot Structure

FrameTime = 4.615;          % Frame duration (ms)
Slots = 8;                  % Total slots
SlotDuration = FrameTime/Slots;

t = 0:SlotDuration:FrameTime;

%% Objective 2: GSM Frame Utilization

TotalSlots = 8;
AllocatedSlots = 6;
FreeSlots = TotalSlots - AllocatedSlots;

Utilization = (AllocatedSlots/TotalSlots)*100;

%% Objective 3: TDMA Slot Allocation

Users = 1:8;
AvailableSlots = 5;

Alloc = zeros(1,length(Users));
Alloc(1:AvailableSlots) = 1;

Blocked = 1 - Alloc;

%% ==========================================
% Combined Figure
%% ==========================================

figure('Name','TDMA Simulation');

%---------------------------------------
% Graph 1: TDMA Time Slot Structure
%---------------------------------------
subplot(2,2,1)

stem(t,ones(size(t)),'filled','LineWidth',2)
title('TDMA Time Slot Structure')
xlabel('Time (ms)')
ylabel('Slot Level')
grid on

%---------------------------------------
% Graph 2: GSM Frame Utilization
%---------------------------------------
subplot(2,2,2)

bar([AllocatedSlots FreeSlots])
title('GSM Frame Utilization')
xlabel('Slot Status')
ylabel('Number of Slots')

xticks([1 2])
xticklabels({'Allocated','Free'})

grid on

%---------------------------------------
% Graph 3: User Slot Allocation
%---------------------------------------
subplot(2,2,3)

stem(Users,Alloc,'filled','LineWidth',2)

title('TDMA Slot Allocation')
xlabel('User Number')
ylabel('Status')

ylim([-0.2 1.2])

grid on

%---------------------------------------
% Graph 4: Allocated vs Blocked Users
%---------------------------------------
subplot(2,2,4)

plot(Users,Alloc,'-ob','LineWidth',2)
hold on

plot(Users,Blocked,'-sr','LineWidth',2)

title('Allocated vs Blocked Users')
xlabel('User Number')
ylabel('Status')

legend('Allocated','Blocked','Location','best')

grid on

%% ==========================================
% Command Window Output
%% ==========================================

disp('=========================================')
disp('        TDMA SIMULATION SUMMARY')
disp('=========================================')

fprintf('Frame Time        : %.3f ms\n',FrameTime);
fprintf('Total Slots       : %d\n',TotalSlots);
fprintf('Allocated Slots   : %d\n',AllocatedSlots);
fprintf('Free Slots        : %d\n',FreeSlots);
fprintf('Frame Utilization : %.2f %%\n',Utilization);

disp(' ')

disp('User-wise Slot Allocation')

T = table(Users', Alloc', ...
    'VariableNames', {'User','Allocated'});

disp(T)

disp('=========================================')
disp('Simulation Completed Successfully')
disp('=========================================')