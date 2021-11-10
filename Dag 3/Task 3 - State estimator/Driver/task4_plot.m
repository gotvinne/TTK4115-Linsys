
% Plot encoder values and imu measurements against estimated states. 

load p_dot_imu;
load p_dot_encoder;
load p_dot_estimated;

load e_dot_imu;
load e_dot_encoder;
load e_dot_estimated;

load lambda_dot_imu;
load lambda_dot_encoder;
load lambda_dot_estimated;

load p_imu; 
load p_encoder;
load p_estimated; 

load e_imu;
load e_encoder;
load e_estimated;

figure(1); clf(1);
subplot(3,2,1); 
grid on;
hold on;
plot(p_imu(1,:),p_imu(2,:)*180/pi);
plot(p_estimated(1,:),p_estimated(2,:)*180/pi);
plot(p_encoder(1,:),p_encoder(2,:)*180/pi);

title('Pitch');
xlabel('Tid [sek]'); 
ylabel('Vinkel [°]');
legend('IMU','Estimat','Encoder');

subplot(3,2,2); 
grid on;
hold on;
plot(p_dot_imu(1,:),p_dot_imu(2,:)*180/pi);
plot(p_dot_estimated(1,:),p_dot_estimated(2,:)*180/pi);
plot(p_dot_encoder(1,:),p_dot_encoder(2,:)*180/pi);


title('Pitch-hastighet');
xlabel('Tid [sek]'); 
ylabel('Vinkelhastighet [°/sek]');
legend('IMU','Estimat','Encoder');

subplot(3,2,3); 
grid on;
hold on;
plot(e_imu(1,:),e_imu(2,:)*180/pi);
plot(e_estimated(1,:),e_estimated(2,:)*180/pi);
plot(e_encoder(1,:),e_encoder(2,:)*180/pi);


title('Elevation');
xlabel('Tid [sek]'); 
ylabel('Vinkel [°]');
legend('IMU','Estimat','Encoder');

subplot(3,2,4); 
grid on;
hold on;
plot(e_dot_imu(1,:),e_dot_imu(2,:)*180/pi);
plot(e_dot_estimated(1,:),e_dot_estimated(2,:)*180/pi);
plot(e_dot_encoder(1,:),e_dot_encoder(2,:)*180/pi);


title('Elevation-hastighet');
xlabel('Tid [sek]'); 
ylabel('Vinkelhastighet [°/sek]');
legend('IMU','Estimat', 'Encoder');

subplot(3,2,5); 
grid on;
hold on;
plot(lambda_dot_imu(1,:),lambda_dot_imu(2,:)*180/pi);
plot(lambda_dot_estimated(1,:),lambda_dot_estimated(2,:)*180/pi);
plot(lambda_dot_encoder(1,:),lambda_dot_encoder(2,:)*180/pi);

title('Travel-hastighet');
xlabel('Tid [sek]'); 
ylabel('Vinkelhastighet [°/sek]');
legend('IMU','Estimat','Encoder');

%% Plot referense agains estimated states

load pitch_c;
load elevation_rate_c;
load e_dot_estimated;
load p_estimated; 


figure(2); clf(2);
grid on; 
hold on; 
plot(p_estimated(1,:),p_estimated(2,:)*180/pi);
plot(pc(1,:),pc(2,:)*180/pi);
title('Sammenligning pitch');
xlabel('Tid [sek]'); 
ylabel('Vinkel [°]');
legend('Estimat','Referanse');

figure(3); clf(3);
grid on; 
hold on; 
plot(e_dot_estimated(1,:),e_dot_estimated(2,:)*180/pi);
plot(ec(1,:),ec(2,:)*180/pi);
title('Sammenligning elevatio-hastighet');
xlabel('Tid [sek]'); 
ylabel('Vinkelhastighet [°/sek]');
legend('Estimat','Referanse');


