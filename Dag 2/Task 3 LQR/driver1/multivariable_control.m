% Without integral action

% System:
A = [0 1 0; 0 0 0; 0 0 0];
B = [0 0; 0 K_1; K_2 0];

%% State feedback and reference feedforward 
% Selecting the poles 
pole1 = -2 + 1i;
pole2 = -2 - 1i;
pole3 = -2.5;

p = [pole1 pole2 pole3]; 

% State feedback gain 
K = place(A,B,p);

% Reference feedforward gain
F = [K(1,1) K(1,3); K(2,1) K(2,3)];
 
%% LQR control (Brysons Rule) 
Q = [30 0 0; 0 1 0; 0 0 300];
R = [1 0; 0 1]; 
K = lqr(A,B,Q,R);

% Reference feedforward gain
F = [K(1,1) K(1,3); K(2,1) K(2,3)];