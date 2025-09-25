

%% ELE532 Lab 1 --> Part D
%% By: Azraf Nure Almas

close all;
clear all;
clc;

%% Load in the matrices
load("C:\Users\azraf\Downloads\ELE532_Lab1_Data.mat");

% Operation and display
B( [ abs(B) < 0.01] ) = 0;
display(toc);
display(tic);