%% Plotter pitch
load pitch;

figure(1); clf(1);
hold on;
plot(p(1,:),p(2,:)*180/pi);

load pitch_ref;
plot(p(1,:),p(2,:)*180/pi);
grid on;
xlabel('Tid [sek]'); 
ylabel('Vinkel [°]');
legend('Pitch','Pitch-ref');

%% Plotter elevation rate og referanse
load elevation_rate
load elevation_rate_ref

figure(2); clf(2);
hold on;

plot(e_dot(1,:),e_dot(2,:)*180/pi);
plot(ref(1,:),ref(2,:)*180/pi);

grid on;
xlabel('Tid [sek]'); 
ylabel('Vinkelhastighet [°/sek]');
legend('Elevation rate', 'Elevation rate-ref');
%% Plotter Vb
load Vb;
figure(3); clf(3);
plot(Vb(1,:),Vb(2,:));
xlabel('Tid [sek]'); 
ylabel('Voltage [V]');
legend('Vb');
grid on;