data2_25 = importdata('10-10-19-25_-2.mat');
data2_18 = importdata('10-12-19-18.75_-2.mat');
data2_12 = importdata('10-12-2019-12.5_-2.mat');
data3_25 = importdata('10-13-19-25_-3.mat');
data1_12 = importdata('10_5_2019-12.5_ENGINE-1.mat');
data1_25 = importdata('10_5_2019-25_ENGINE-1.mat');
data1_18 = importdata('10_8_2019-18.75_ENGINE-1.mat');
data3_12 = importdata('10_10_2019-12.5_ENGINE - 3.mat');

% close all;
% clear all;
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% %% Load File [Force, Engine Temp, Water Temp, Activation, Time]
% filename = 'EngineWSkin.xlsx';
% filename2 = 'LongTestNoSkinRedv3.xlsx';
% filename3 = '3mHeatcycle.xlsx';
% num = xlsread(filename3);
% 
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% %% Set Inital Conidtions
% startTime = 1;
% time = num(startTime:end,5)-num(startTime,5)/1000;
% force = -num(startTime:end,1);
% current = 1.35; %amps
% volts = 10;
% ratePower = volts*current;
% %num2 = xlsread(filename2);
% %% Plot Raw Data
% %plot(time,force);
% %hold on
% %legend('Engine with Plastic Skin','Engine With No Skin');
% force = -num(:,1);
% time = num(:,5)-num(1,5);
% %plot(time,force);
% indicies = find(num(:,6)~=0);
% warming= num(indicies,:); %Status of engine when warming7, up or at temp.
% hightime = time(indicies);
% data = cell(1,100);
% for i = 1:length(hightime)-100
%     cycle = warming(i,9);
%     force = -warming(i,1);
%     time = warming(i,5);
%     data{cycle} = [data{cycle} ;force time];
% end
% 
% hold on
% rateData = [];
% for i = 1:98
%     dForce = (data{i}(end,1)-data{i}(1,1));
%     dTime = ((data{i}(end,2)-data{i}(1,2))./1000);
%     heatingRate = dForce*1000/dTime;
%     rateData = [rateData; heatingRate i];
% end
%   x = linspace(1,98);  
%   plot(rateData(:,2),rateData(:,1),'*r');
%   f = fit(rateData(:,2),rateData(:,1)-(rateData(end,1)),'exp1');
%   coeff = coeffvalues(f);
%   a = coeff(1);
%   b = coeff(2);
%   c = rateData(end,1);
%   bestFit= a*exp(b*x)+c;
%   plot(x,bestFit);
%     title('Rate Force');
% ylabel('Rate of Boyancy Force (mg/s)');
% xlabel('Cycle');




hold on;

data_25(1) = plot(data1_25(:, 4), data1_25(:, 1), 'c');
data_25(2)= plot(data2_25(:, 4), data2_25(:, 1), 'c');
data_25(3) = plot(data3_25(:, 4), data3_25(:, 1), 'c');

data_18(1) = plot(data1_18(:, 4), data1_18(:, 1), 'r');
data_18(2) = plot(data2_18(:, 4), data2_18(:, 1), 'r');

data_12(1) = plot(data1_12(:, 4), data1_12(:, 1), 'g');
data_12(2) = plot(data2_12(:, 4), data2_12(:, 1), 'g');
data_12(3) = plot(data3_12(:, 4), data3_12(:, 1), 'g');

% legend(data_25, {'25%'}, data_18, {'18%'}, data_25, {'12%'});
legend(data_25, {'25%'});
% legend(data_18, {'18%'});
% legend(data_25, {'12%'});

legend('25%', '', '', '18%', '', '12', '', '');
ylim ([-3 6]);
xlim ([1 9*10^6]);
hold off;