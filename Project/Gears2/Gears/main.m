%% PROJECT      Stepper Motor Gearbox Design
%
% Group No.         
% Members       
% Course        Mechanical Components Design for Mechatronic Systems (MSE 3380)
% Instructor    Prof. Dr. Aaron Price
% Department    Mechanical & Materials Engineering
% Faculty       Engineering
% Institution   Western University
% Date        

%% Clear workspace
close all
evalin('caller','clear all');
feature('accel','on')
clc

%% Design constraints
% To insert design contrain values

W_B     =  75;                       % kg          (Weight of the conveyor belt )


%% First designe assumptions
% To insert the value for any assumed value other than design constrains ones

S     =  0.1;                       % m/s          (Conveyer Speed )


%% Required power
% To use a defined function titled "output_power" to calculate and display
% required power and torque for the motor as well as respective speed

[Po,To,W] = output_power(A,B,C,...);                                 % Required output power, Torque and Speed
disp(['Required output power:  ' num2str(Po) ' kW  ']);              % Display the required output power
disp(['Required output torque: ' num2str(To) ' N.m ']);              % Display the required output torque
disp(['Required speed:   ' num2str(W) ' rpm ']);                     % Display the required speed
    
%% Motor choice
% To show the selected motor spec. from the catalogue 

motor  = struct('name',     'SIZE 23H2 (57 mm) · 2 phase 1.8° ', ...
                'output',      10, ...        % [kW]
                'speed',    1000,    ...      % [rpm]
                'torque',     10,  ...        % [Nm]
                'price',     1000, ...        % [USD]
                'website',  'http://www.kocomotion.de/fileadmin/pages/10_PRODUKTE/Dings/Dings_hybrid-steppermotors.pdf');
            


%% Gear design
% To use and display bending stress, contact stress and safety factor for
% all gears by using a functions named "gear_bending" and "gear_contact"

[B_S1,S_F1] = gear_bending(A,B,C,...);                                   % Bending stress for gear 1
[C_S1,S_F1] = gear_contact(A,B,C,...);                                   % Contact stress for gear 1
disp(['Bending stress for gear no. 1 is :  ' num2str(B_S1) ' Mpa  ']);   % Display bending stres for gear 1
disp(['Contact stress for gear no. 1 is :  ' num2str(C_S1) ' Mpa  ']);   % Display contact stres for gear 1
disp(['Safety factor for gear no. 1 is :  ' num2str(S_F1) ' Mpa  ']);    % Display safety factor for gear 1

