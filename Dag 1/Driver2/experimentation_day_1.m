
close all;
load pitch;
load Vd;
load Vb;


figure(1); clf(1);
plot(p(1,:),p(2,:)*180/pi);
grid on 

xlabel('Tid [sek]'); 
ylabel('Pitch [°]');
 

figure(2); clf(2);
plot(Vd(1,:),Vd(2,:));
xlabel('Tid [sek]'); 
ylabel('Vd [V]');
grid on 

figure(3); clf(3);
grid on 
hold on

plot(Vb(1,:),Vb(2,:)); 
%line([0,Vb(1,length(Vb(1,:)))],[5,5]);
xlabel('Tid [sek]'); 
ylabel('Vb [V]');
hold off 