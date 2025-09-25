

%% ELE532 Lab 1 --> Part C
%% By: Azraf Nure Almas

close all;
clear all;
clc;

% Create the unit step function to multiply with later
u = @(t) 1.0.*(t>=0); %% It is 1 after 0, causal

%% constrain t vector
t = 0:0.01:4;
alpha = [1 3 5 7];

%% Family of curves time!
% So basically, initialize a big matrix where the first column represents
% the alpha values, and the consecutive row values are the time-based s(t)
% values for said alpha

% Initialize s as an empty matrix
s = zeros(length(alpha), length(t));

% Calculate the family of curves s(t) for each alpha
for i = 1:length(alpha)
    % s(i, :) says go to the ith row and for each and every consecutive
    % value after that, set it as ...

    s(i, :) = exp(-2) * exp(-alpha(i)*t) .* cos(4*pi*t);
end

% Now that s is all done, we can plot it easily
hold on;
plot(t, s(1, :), "r");
plot(t, s(2, :), "b");
plot(t, s(3, :), "g");
plot(t, s(4, :), "c");

xlabel("Time");
ylabel("s(t)");
hold off;

% Now display the size of s
display(size(s))