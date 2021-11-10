
%Makes system model as eps-format

heli_q8_dag1 %opens the model
print('Pitch controller');
%%
print('-sheli_q8_dag1','-djpeg','-r300','heli_q8_dag1.jpeg');
print('-sheli_q8_dag1','-dpng','-r600','heli_q8_dag1.png');
print('-sheli_q8_dag1','-dpdf','-r600','heli_q8_dag1.pdf');
print('-sheli_q8_dag1','-dmeta','heli_q8_dag1.emf');
fig = get_param('heli_q8_dag1','Handle');
saveas(fig,'heli_q8_dag1.bmp'); 

