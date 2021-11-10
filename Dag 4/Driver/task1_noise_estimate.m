
% Plot measurements and calculate covariance matrix

load measurements

% R_d = cov(measurements(2:end,:)'); % Ikke kjør denne på nytt

figure(1); clf(1);
subplot(3,2,1); 
plot(measurements(1,:),measurements(2,:));
grid on;
title('Pitch');
xlabel('Tid [sek]'); 
ylabel('Vinkel [°]');
legend('Pitch');

subplot(3,2,2);
plot(measurements(1,:),measurements(3,:));
grid on;
title('Pitch-hastighet');
xlabel('Tid [sek]'); 
ylabel('Vinkel [°/sek]');
legend('Pitch-hastihet');

subplot(3,2,3); 
plot(measurements(1,:),measurements(4,:));
grid on;
title('Elevation');
xlabel('Tid [sek]'); 
ylabel('Vinkel [°]');
legend('Elevation');

subplot(3,2,4); 
plot(measurements(1,:),measurements(5,:));
grid on;
title('Elevation-hastighet');
xlabel('Tid [sek]'); 
ylabel('Vinkel [°/sek]');
legend('Elevation-hastighet');


subplot(3,2,5); 
plot(measurements(1,:),measurements(6,:));
grid on;
title('Travel-hastighet');
xlabel('Tid [sek]'); 
ylabel('Vinkel [°/sek]');
legend('Travel-hastighet');
