
% Implement State feedback and reference feedforward 
run('init_heli.m')

A = [0 1 0; 0 0 0; 0 0 0];
B = [0 0; 0 K_1; K_2 0];

% Selecting the poles 
pole1 = -2 + 1i;
pole2 = -2 - 1i;
pole3 = -2.5;

p = [pole1 pole2 pole3]; 

% State feedback gain 
K = place(A,B,p);

% Reference feedforward gain. 
F = [K(1,1) K(1,3); K(2,1) K(2,3)];