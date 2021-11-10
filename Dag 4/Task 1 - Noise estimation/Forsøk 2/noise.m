
%Calculates the autocovariance of pitch-measurements from IMU

M = load('measurements.mat');
Rd_1 = load('Rd.mat');

time = M.measurements(1,:); 
size_t = size(time);
pitch_data = M.measurements(2,:)';

autocovariance = autocov(pitch_data,size_t); 

figure(1); clc(1); 
plot(autocovariance, time);






