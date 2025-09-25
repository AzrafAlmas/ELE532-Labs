
%% ELE532 Lab 1 --> Part C
%% By: Azraf Nure Almas

close all;
clear all;
clc;


%% Define our functions
f = @(t) exp(-2.*t).*cos(4*pi*t);
t = (-2:0.01:2); % Constrain variable t

% Create the unit step function to multiply with later
u = @(t) 1.0.*(t>=0); %% It is 1 after 0, causal

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% PART C.1
%% Create the g(t)
g = @(t) f(t).*u(t); %% multiplies them
t = (-2:0.01:2); %% constrain
%% Finally plot it -------> Part C.1
plot(t, g(t), "r");
xlabel("time");
ylabel("g(t)");
grid();

hold on; %% Allows for multiple plots with same settings
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% PART C.2
%% Now plot the time shift transformation ---------> Part C.2
s = @(t) g(t + 1); %% Apply the transformation
t = (-2:0.01:4);

% Plot
plot(t, s(t), "g"); %% GREEN PLOT SHIFTED RIGHT
hold off;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% PART C.3

alpha = [1 3 5 7]; %% initialize the matrix/vector
t = (0:0.01:4); %% Constrain t again

%% Define s using for loop
for i = 1:length(alpha)
    s = @(t) 
end

%% Plot it now
hold on;

plot(t, s(t));
xlabel("time");
ylabel("")