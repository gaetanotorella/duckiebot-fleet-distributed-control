% Centroid control of two Duckiebots through a network model in both
% directions (controller to robots, robots to controller): a queue with limited
% bandwidth and buffer, a dynamic transmission rate, an estimator that replaces
% lost packets and a propagation delay.

clear all
close all
clc

q_i_1 = [-2 2 0]';      % initial poses [x; y; theta]
q_i_2 = [-4 4 0]';
% q_i_1 = [-1 -1 pi/2]';
% q_i_2 = [-2 -2 pi/2]';

k1 = 0.4;               % control gains
k2 = 0.8;
k3 = 0.1;

Ts = 0.01;              % sampling time [s]

a = 0.9;                % estimator coefficient (also tried: 1/4)
C = 6;                  % bandwidth (also tried: 200)
B = 8;                  % buffer
r = 0.08;               % transmission rate (not read by the model)
taup = 0;               % propagation delay [s] (also tried: 1e-3 and 0.3)

out = sim("network_model.slx",50);

raggio = 0.0318;        % wheel radius [m]
plot_network;
