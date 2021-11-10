% With integral action

% Augmented system
A = [0 1 0 0 0; 0 0 0 0 0; 0 0 0 0 0; 1 0 0 0 0; 0 0 1 0 0];
B = [0 0; 0 K_1; K_2 0; 0 0; 0 0]; 

% LQR control 
Q = [100 0 0 0 0; 0 30 0 0 0; 0 0 100 0 0; 0 0 0 20 0; 0 0 0 0 50];
R = [0.1 0; 0 1]; 
K = lqr(A,B,Q,R);

% Reference feedforward gain
F = [0 K(1,3); K(2,1) 0];