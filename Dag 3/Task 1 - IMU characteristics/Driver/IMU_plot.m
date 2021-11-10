
%Script for plotting gyro measurements with encoder rate measurements

%% Pitch rate:


load p_dot_gyro;
load p_dot_encoder;

figure(1); clf(1);
grid on;
hold on;
plot(p_dot_gyro(1,:),p_dot_gyro(2,:)*180/pi);
plot(p_dot_encoder(1,:),p_dot_encoder(2,:)*180/pi);

xlabel('Tid [sek]'); 
ylabel('Vinkelhastighet [°/sek]');
legend('Pitch rate gyro', 'Pitch rate encoder');

%% Elevation rate: 


load e_dot_gyro;
load e_dot_encoder;

figure(2); clf(2);
grid on;
hold on;
plot(e_dot_gyro(1,:),e_dot_gyro(2,:)*180/pi);
plot(e_dot_encoder(1,:),e_dot_encoder(2,:)*180/pi);

xlabel('Tid [sek]'); 
ylabel('Vinkelhastighet [°/sek]');
legend('Elevation rate gyro', 'Elevation rate encoder');



%% Travel rate:


load lambda_dot_gyro;
load lambda_dot_encoder;

figure(3); clf(3);
grid on;
hold on;
plot(lambda_dot_gyro(1,:),lambda_dot_gyro(2,:)*180/pi);
plot(lambda_dot_encoder(1,:),lambda_dot_encoder(2,:)*180/pi);

xlabel('Tid [sek]'); 
ylabel('Vinkelhastighet [°/sek]');
legend('Travel rate gyro', 'Travel rate encoder');

%% Accelerometer: 


load ax;
load ay;
load az;

figure(1); clf(1);
grid on;
plot(ax(1,:),ax(2,:));

xlabel('Tid [sek]'); 
ylabel('Akselerasjon [m/s^2]');
legend('Akselerasjon langs x-aksen');

figure(2); clf(2);
grid on;
plot(ay(1,:),ay(2,:));

xlabel('Tid [sek]'); 
ylabel('Akselerasjon [m/s^2]');
legend('Akselerasjon langs y-aksen');

figure(3); clf(3);
grid on;
plot(az(1,:),az(2,:));

xlabel('Tid [sek]'); 
ylabel('Akselerasjon [m/s^2]');
legend('Akselerasjon langs z-aksen');
