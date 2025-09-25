

%% ELE532 Lab 1 --> Part D
%% By: Azraf Nure Almas

close all;
clear all;
clc;

%% Load in the matrices
load("C:\Users\azraf\Downloads\ELE532_Lab1_Data.mat");

audio = x_audio; % Create a new variable
threshold = 0.05;

%% Compress it
audio( [ abs(audio) < threshold] ) = 0;
sound(audio, 8000); % Now sound it at 8khz freq

%% As the threshold decreases, the noise gets deleted so the message is clearer