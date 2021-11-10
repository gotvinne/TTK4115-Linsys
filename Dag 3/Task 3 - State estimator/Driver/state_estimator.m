% LQR controller with a Luenberger observer

% The controller and the observer uses to different models, i.e. they uses
% different sets of the states. The controller only uses three states + the
% two "integral states". The observer uses all states and estimates these,
% and the controller pics from the estimate the states it needs.

run('init_heli.m')

% System for the controller (from LQR with integral)
A_LQR = [0 1 0 0 0; 0 0 0 0 0; 0 0 0 0 0; 1 0 0 0 0; 0 0 1 0 0];
B_LQR = [0 0; 0 K_1; K_2 0; 0 0; 0 0]; 

% LQR control 
Q = [30 0 0 0 0; 0 0.1 0 0 0; 0 0 10 0 0; 0 0 0 2.5 0; 0 0 0 0 1];
R = [0.01 0; 0 0.1]; 
K = lqr(A_LQR,B_LQR,Q,R);

% Reference feedforward gain
F = [0 K(1,3); K(2,1) 0];

% System for the observer
A = [0 1 0 0 0; 0 0 0 0 0; 0 0 0 1 0; 0 0 0 0 0; K_3 0 0 0 0];
B = [0 0; 0 K_1; 0 0; K_2 0; 0 0];
C = [1 0 0 0 0; 0 1 0 0 0; 0 0 1 0 0; 0 0 0 1 0; 0 0 0 0 1];

% Observer feedback gain, n = 5
% Distribute poles evenly on arc

theta = 30*pi/180;
r = 30; 

p1 = -r;
p2 = -cos(theta/2)*r + sin(theta/2)*r*1i;
p3 = -cos(theta/2)*r - sin(theta/2)*r*1i;
p4 = -cos(theta)*r + sin(theta)*r*1i;
p5 = -cos(theta)*r - sin(theta)*r*1i;

% observer_poles = [p1, p2, p3, p4, p5];

observer_poles = [-10, -15, -40, -40, -30];

L = place(A', C', observer_poles)'; % Luenberger gain



