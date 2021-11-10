
%Plots Kalman estimated states with enoders and measurements. 

load measurements
load estimates
load encoders

% Plot measurements, estimates and than encoders due to noise. 

figure(1); clf(1);
subplot(2,2,1); 
hold on;
plot(measurements(1,:),measurements(2,:));
plot(estimates(1,:), estimates(2,:));
plot(encoders(1,:),encoders(2,:));
grid on;
title('Pitch comparison');
xlabel('Tid [sek]'); 
ylabel('Radianer');
legend('Pitch-IMU', 'Pitch-Kalman', 'Pitch-encoder');

subplot(2,2,2);
hold on;
plot(measurements(1,:),measurements(3,:));
plot(estimates(1,:), estimates(3,:));
plot(encoders(1,:),encoders(3,:));
grid on;
title('Pitch-hastighet');
xlabel('Tid [sek]'); 
ylabel('Radianer');
legend('Pitch-hastighet-IMU', 'Pitch-hastighet-Kalman', 'Pitch-hastighet-encoder');

subplot(2,2,3); 
hold on;
plot(measurements(1,:),measurements(4,:));
plot(estimates(1,:), estimates(4,:));
plot(encoders(1,:),encoders(4,:));
grid on;
title('Elevation');
xlabel('Tid [sek]'); 
ylabel('Radianer');
legend('Elevation-IMU', 'Elevation-Kalman', 'Elevation-encoder');

subplot(2,2,4); 
hold on;
plot(measurements(1,:),measurements(5,:));
plot(estimates(1,:), estimates(5,:));
plot(encoders(1,:),encoders(5,:));
grid on;
title('Elevation-hastighet');
xlabel('Tid [sek]'); 
ylabel('Radianer');
legend('Elevation-hastighet-IMU', 'Elevation-hastighet-Kalman', 'Elevation-hastighet-encoder');

% load new data
% figure(2); clf(2);
% plot(new_data(1,:),new_data(2,:));
% grid on;
% title('New data');
% xlabel('Tid [sek]'); 
% ylabel('Low/high');
% legend('New data');


%% Plot travel rate. Hvis denne skal med må vi sette første parameter 1 subplottene over til 3
subplot(3,2,5); 
hold on;
plot(measurements(1,:),measurements(6,:));
plot(estimates(1,:), estimates(6,:));
plot(encoders(1,:),encoders(6,:));
grid on;
title('Travel-hastighet');
xlabel('Tid [sek]'); 
ylabel('Radianer');
legend('Travel-hastighet-IMU', 'Travel-hastighet-Kalman', 'Travel-hastighet-encoder');

%% Plot references agains kalman estimates:
load estimates
load pitch_c;
load elevation_rate_c;

figure(3); clf(3);
hold on;
plot(pc(1,:),pc(2,:)*180/pi);
plot(estimates(1,:),estimates(2,:)*180/pi);
grid on;
title('Regulering med Kalman estimater');
xlabel('Tid [sek]'); 
ylabel('Vinkel [°]');
legend('Pitch-referanse','Estimert pitch');

figure(4); clf(4);
hold on;
plot(ec(1,:),ec(2,:)*180/pi);
plot(estimates(1,:),estimates(5,:)*180/pi);
grid on;
title('Regulering med Kalman estimater');
xlabel('Tid [sek]'); 
ylabel('Vinkelhastighet [°/sek]');
legend('Elevation-hastighets-referanse','Estimert elevation-hastighet');


