% LQR controller with kalman filter

run('init_heli.m')

%% LQR controller
% System for the controller (from LQR with integral)
A_LQR = [0 1 0 0 0; 0 0 0 0 0; 0 0 0 0 0; 1 0 0 0 0; 0 0 1 0 0];
B_LQR = [0 0; 0 K_1; K_2 0; 0 0; 0 0]; 

% LQR control 
Q = [30 0 0 0 0; 0 0.1 0 0 0; 0 0 10 0 0; 0 0 0 2.5 0; 0 0 0 0 1];
R = [0.01 0; 0 0.1];
K = lqr(A_LQR,B_LQR,Q,R);

% Reference feedforward gain
F = [0 K(1,3); K(2,1) 0];

%% Kalman filter

load Rd; % Experimentally estimated before

% The full continous system
A_c = [0 1 0 0 0; 0 0 0 0 0; 0 0 0 1 0; 0 0 0 0 0; K_3 0 0 0 0];
B_c = [0 0; 0 K_1; 0 0; K_2 0; 0 0];
C_c = [1 0 0 0 0; 0 1 0 0 0; 0 0 1 0 0; 0 0 0 1 0; 0 0 0 0 1];
sys_c = ss(A_c,B_c,C_c,0);

% Discretizing
Ts = 0.002; % Time-step from the Simulink diagram
sys_d = c2d(sys_c, Ts);
[A_d, B_d, C_d] = ssdata(sys_d);

% Initialised prediction x and prediction covariance matrix P, bruker delay block. 
x_init = [0; 0; -0.56; 0; 0];
P_init = [0.1 0 0 0 0; 0 0.01 0 0 0; 0 0 1 0 0; 0 0 0 0.1 0; 0 0 0 0 0.01];

% Tuning variable Q_d
Q_d = [0.000005 0 0 0 0; 0 0.00005 0 0 0; 0 0 0.000005 0 0; 0 0 0 0.00001 0; 0 0 0 0 0.00005];
