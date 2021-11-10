% Without integral action

run('init_heli.m')

% System:
A = [0 1 0; 0 0 0; 0 0 0];
B = [0 0; 0 K_1; K_2 0];
 
% LQR control
Q = [30 0 0; 0 0.1 0; 0 0 10];
R = [0.1 0; 0 0.1]; 
K = lqr(A,B,Q,R);

% Reference feedforward gain
F = [K(1,1) K(1,3); K(2,1) K(2,3)];

eig(A-B*K)