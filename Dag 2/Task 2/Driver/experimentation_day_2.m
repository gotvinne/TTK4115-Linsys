
close all;
load pitch;
load Vb;


figure(1); clf(1);
plot(p(1,:),p(2,:)*180/pi);
grid on;
xlabel('Tid [sek]'); 
ylabel('Angle [°]');
legend('Pitch');


% figure(2); clf(2);
% plot(Vb(1,:),Vb(2,:));
% xlabel('Tid [sek]'); 
% ylabel('Voltage [V]');
% legend('Vb');
% grid on;