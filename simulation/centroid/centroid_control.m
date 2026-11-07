% Centroid control of two Duckiebots: the centroid of the fleet is driven to
% the origin, with the two robots kept at an offset from it.

clear all
close all
clc

%% Linear trajectory (uncomment to use it instead of the curved one)
% q_i_1 = [-1.5 -1 pi/2]';
% q_i_2 = [-2 1 0]';
% k1 = 0.2;
% k2 = 0.5;
% k3 = 0.3;
% OFFSET = 0.2;

%% Curved trajectory
q_i_1 = [-1 -1 0]';     % initial poses [x; y; theta]
q_i_2 = [-2 1 0]';
k1 = 0.4;               % control gains
k2 = 0.8;
k3 = 0.1;
OFFSET = 0.6;           % offset of the robots from the centroid along y [m]

Ts = 0.1;               % sampling time [s]

out = sim("centroid_model.slx",20);

raggio = 0.0318;        % wheel radius [m]
interasse = 0.1232;     % wheelbase [m]
plot_centroid;
