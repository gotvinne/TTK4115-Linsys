% FOR HELICOPTER NR 3-10
% This file contains the initialization for the helicopter assignment in
% the course TTK4115. Run this file before you execute QuaRC_ -> Build 
% to build the file heli_q8.mdl.

% Oppdatert h�sten 2006 av Jostein Bakkeheim
% Oppdatert h�sten 2008 av Arnfinn Aas Eielsen
% Oppdatert h�sten 2009 av Jonathan Ronen
% Updated fall 2010, Dominik Breu
% Updated fall 2013, Mark Haring
% Updated spring 2015, Mark Haring
% Edited by Kristian and Geir

%%%%%%%%%%% IMU Port for lab 3
PORT = 5;


%%%%%%%%%%% Calibration of the encoder and the hardware for the specific
%%%%%%%%%%% helicopter
Joystick_gain_x = pi/2;
Joystick_gain_y = -.8;


%%%%%%%%%%% Physical constants
g = 9.81; % gravitational constant [m/s^2]
l_c = 0.46; % distance elevation axis to counterweight [m]
l_h = 0.66; % distance elevation axis to helicopter head [m]
l_p = 0.175; % distance pitch axis to motor [m]
m_c = 1.92; % Counterweight mass [kg]
m_p = 0.72; % Motor mass [kg]

%%%%%%%%%%% Constants from preparations
Vs_0 = 9.0;

L_2 = l_c*m_c*g - 2*l_h*m_p*g;
K_f = -L_2 /(l_h*Vs_0);
L_1 = l_p*K_f;
L_3 = l_h*K_f;
L_4 = l_h*K_f;

% Moments of inertia
J_p = 2*m_p*l_p*l_p;
J_e = m_c*l_c*l_c + 2*m_p*l_h*l_h;
J_ld = m_c*l_c*l_c + 2*m_p*(l_h*l_h + l_p*l_p);

% Linearization constans
K_1 = L_1/J_p;
K_2 = L_3/J_e;
K_3 = -(L_2*L_4)/(J_ld*L_3);


