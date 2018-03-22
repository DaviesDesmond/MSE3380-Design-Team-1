function [value] = KOfunc(power,machine)
%calculates Ko
%for driven machine:
% Uniform = 1
% Moderate shock = 2
% Heavy Shock = 3
% for power source:
% uniform = 1
% light shock = 2
% medium shock =3
table = [1 1.25 1.75;1.25 1.50 2.00;1.50 1.75 2.25];
value = table(power,machine);
end