
%Is the system observable when we use full-state-space vector in kalman
%filter? 


A_c = [0 1 0 0 0 0; 0 0 0 0 0 0; 0 0 0 1 0 0; 0 0 0 0 0 0; 0 0 0 0 0 1; 4.56 0 0 0 0 0];
%B_c = [0 0; 0 K_1; 0 0; 0 0; K_2 0; 0 0];
C_c = [1 0 0 0 0 0; 0 1 0 0 0 0; 0 0 1 0 0 0; 0 0 0 1 0 0; 0 0 0 0 0 1];

OB = obsv(A_c,C_c) 
unob = length(A_c)-rank(OB);
display(unob);

