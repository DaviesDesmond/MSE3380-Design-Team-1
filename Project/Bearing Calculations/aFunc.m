function [a] = aFunc (bearing)
%This function changes the a value based on which types of bearings are
%used.

%Ball bearings - a = 3;
%Roller bearings - a = 10/3;

%bearing = 0 - ball bearings
%bearing = 1 - roller bearings

if bearing == 0
    a = 3;
end
if bearing == 1
    a = 10/3;
end
if bearing ~= 0 && bearing ~= 1
    disp('Invalid type of bearing was used as an input.')
end
end