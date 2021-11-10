
close all;
load pitch;
load pitch_c;
load elevation_rate;
load elevation_rate_c;


figure(1); clf(1);
grid on;
hold on;
plot(p(1,:),p(2,:)*180/pi);
plot(pc(1,:),pc(2,:)*180/pi);

xlabel('Tid [sek]'); 
ylabel('Vinkel [°]');
legend('Pitch', 'Pitch-referanse');


figure(2); clf(2);
grid on;
hold on;
plot(e_dot(1,:),e_dot(2,:)*180/pi);
plot(ec(1,:),ec(2,:)*180/pi);

xlabel('Tid [sek]'); 
ylabel('elevation rate [°/sek]');
legend('elevation rate', 'elevation rate-referanse');