

% ELE532 - Lab 1
% By: Azraf and Abdul
%% PART A:


% A.1 figure 1.46 and figure 1.47
f = @(t) exp(-t).*cos(2*pi*t);
t = [-2,-1,0,1,2];
subplot(1,3,1); % this subplot just lets us have mulitple graphs on one page
plot(t,f(t));
xlabel('t');
ylabel('f(t)');
title('Figure 1.46 Plot of f(t) with 5 points ');
grid on;%

t2= linspace(-2,2,200);
subplot(1,3,2);
plot(t2,f(t2));
xlabel('t');
ylabel('f(t)');
title('Figure 1.47 Plot of f(t) with 200 points ');
grid on;

% A.2
f = @(t) exp(-t); 
t3 = [-2:2];
subplot(1,3,3);
plot(t3,f(t3)); 
xlabel('t');
ylabel('f(t)');
title('Plot of $e^{-t}$','Interpreter','latex') ;
grid on;

% A.3
% Plot of e^-t looks same as f(t) this makes sense since e^-t is decaying
% and it is ALSO what controls the decay of f(t) 

%% PART C.1
clear all;
close all;
clc;

% Define our functions
f = @(t) exp(-2.*t).*cos(4*pi*t);
t = (-2:0.01:2); % Constrain variable t

% Create the unit step function to multiply with later
u = @(t) 1.0.*(t>=0); %% It is 1 after 0, causal

% Create the g(t)
g = @(t) f(t).*u(t); %% multiplies them
t = (-2:0.01:2); %% constrain

% Finally plot it -------> Part C.1
plot(t, g(t), "r");
xlabel("time");
ylabel("g(t)");
grid();

hold on; %% Allows for multiple plots with same settings

%% PART C.2

% Now plot the time shift transformation ---------> Part C.2
s = @(t) g(t + 1); %% Apply the transformation
t = (-2:0.01:4);

% Plot
plot(t, s(t), "g"); % GREEN PLOT SHIFTED RIGHT
grid();
hold off;

%% PART C.3
clear all;
close all;
clc;

%Family of curves time!
% So basically, initialize a big matrix where the first column represents
% the alpha values, and the consecutive row values are the time-based s(t)
% values for said alpha
t = 0:0.01:4;
alpha = [1 3 5 7];

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
grid();
hold off;

% Now display the size of s
display(size(s))

%% PART D.1
clear all;
close all;
clc;

% Load in the matrices
load("C:\Users\azraf\Downloads\ELE532_Lab1_Data.mat");

% Compute through part a-->e and display them when it happens
display("A");
display(A(:)); % Transpose it first

display("B");
display( A([2 4 7]) ); % Then show those values of that index

display("C");
display( A >= 0.2 ); % Logical return where it checks if each index >= 0.2 if so return 1

display("D");
display( A([A >= 0.2]) ); % Return the actual elements of the indexes

display("E"); 
display( A([A >= 0.2]) == 0 ); % Sets all those elements to 0

%% PART D.2a
% Load in the matrices
load("C:\Users\azraf\Downloads\ELE532_Lab1_Data.mat");

% Nested for loop
for i = 1:length(B)
    
    % Now go through each column value of respected row
    for j = 1:size(B, 2)
        
        % Now clip it
        if (abs(B(i,j)) < 0.01)
            B(i,j) = 0;
        end
    end
end
display(toc); % Part C
display(tic); % Part C

%% PART D.2b
close all;
clear all;
clc;

% Load in the matrices
load("C:\Users\azraf\Downloads\ELE532_Lab1_Data.mat");

% Operation and display
B( [ abs(B) < 0.01] ) = 0;
display(toc);
display(tic);

%% PART D.3
close all;
clear all;
clc;

% Load in the matrices
load("C:\Users\azraf\Downloads\ELE532_Lab1_Data.mat");

audio = x_audio; % Create a new variable
threshold = 0.05;

% Compress it
audio( [ abs(audio) < threshold] ) = 0;
sound(audio, 8000); % Now sound it at 8khz freq

% As the threshold decreases, the noise gets deleted so the message is clearer