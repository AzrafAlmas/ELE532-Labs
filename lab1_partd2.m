

%% ELE532 Lab 1 --> Part D
%% By: Azraf Nure Almas

close all;
clear all;
clc;

%% Load in the matrices
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
display(toc);
display(tic);