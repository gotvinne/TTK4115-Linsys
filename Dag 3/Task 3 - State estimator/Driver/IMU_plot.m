
%Script for plotting gyro measurements with encoder rate measurements
%Plot IMU angles with encoder measurements 

%% Pitch rate:


load p_dot_imu;
load p_dot_encoder;

figure(1); clf(1);
grid on;
hold on;
plot(p_dot_imu(1,:),p_dot_imu(2,:)*180/pi);
plot(p_dot_encoder(1,:),p_dot_encoder(2,:)*180/pi);

xlabel('Tid [sek]'); 
ylabel('Vinkelhastighet [°/sek]');
legend('Pitch rate gyro', 'Pitch rate encoder');

%% Elevation rate: 


load e_dot_imu;
load e_dot_encoder;

figure(2); clf(2);
grid on;
hold on;
plot(e_dot_imu(1,:),e_dot_imu(2,:)*180/pi);
plot(e_dot_encoder(1,:),e_dot_encoder(2,:)*180/pi);

xlabel('Tid [sek]'); 
ylabel('Vinkelhastighet [°/sek]');
legend('Elevation rate gyro', 'Elevation rate encoder');



%% Travel rate:


load lambda_dot_imu;
load lambda_dot_encoder;

figure(3); clf(3);
grid on;
hold on;
plot(lambda_dot_imu(1,:),lambda_dot_imu(2,:)*180/pi);
plot(lambda_dot_encoder(1,:),lambda_dot_encoder(2,:)*180/pi);

xlabel('Tid [sek]'); 
ylabel('Vinkelhastighet [°/sek]');
legend('Travel rate gyro', 'Travel rate encoder');

%% Accelerometer: 

load ax;
load ay;
load az;

figure(1); clf(1);
plot(ax(1,:),ax(2,:));
grid on;

xlabel('Tid [sek]'); 
ylabel('Akselerasjon [m/s^2]');
legend('Akselerasjon langs x-aksen');

figure(2); clf(2);
plot(ay(1,:),ay(2,:));
grid on;

xlabel('Tid [sek]'); 
ylabel('Akselerasjon [m/s^2]');
legend('Akselerasjon langs y-aksen');

figure(3); clf(3);
plot(az(1,:),az(2,:));
grid on;

xlabel('Tid [sek]'); 
ylabel('Akselerasjon [m/s^2]');
legend('Akselerasjon langs z-aksen');

%% Pitch: Transformed gyro with encoder measurements


load p_imu; 
load p_encoder;

figure(4); clf(4);
grid on;
hold on;
plot(p_imu(1,:),p_imu(2,:)*180/pi);
plot(p_encoder(1,:),p_encoder(2,:)*180/pi);

xlabel('Tid [sek]'); 
ylabel('Vinkel [°]');
legend('Pitch IMU', 'Pitch encoder');

%% Elevation: Transformed gyro with encoder measurements


load e_imu;
load e_encoder;

figure(5); clf(5);
grid on;
hold on;
plot(e_imu(1,:),e_imu(2,:)*180/pi);
plot(e_encoder(1,:),e_encoder(2,:)*180/pi);

xlabel('Tid [sek]'); 
ylabel('Vinkel [°]');
legend('Elevation IMU', 'Elevation encoder');

