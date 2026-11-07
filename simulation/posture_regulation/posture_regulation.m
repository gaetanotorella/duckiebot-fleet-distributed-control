% Posture regulation of one Duckiebot, with the state reconstructed by a
% second-order Runge-Kutta estimator. The robot goes from q_i to the origin.

clear all
close all
clc

q_i = [-1 2 0]';        % initial pose [x; y; theta]

k1 = 0.7;               % control gains
k2 = 0.8;
k3 = 0.7;

Ts = 0.1;               % sampling time [s]

out = sim("posture_regulation_model.slx",10);
plot_posture_regulation;
